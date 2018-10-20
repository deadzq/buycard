<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>服务统计</title>
    <link href="css/themes/default/easyui.css" rel="stylesheet" />
    <link href="css/themes/icon.css" rel="stylesheet" />
    <link href="css/themes/color.css" rel="stylesheet" />
    
    <link href="css/wm.css" rel="stylesheet" />
    <script src="script/jquery.min.js"></script>
    <script src="script/jquery.easyui.min.js"></script>
    <script src="script/easyui-lang-zh_CN.js"></script>
  
</head>
<body>

	<!-- 条件查询 -->
    <div>
    	<form id="searchform" method="post">
        <table id="sec"> 
            <tr>
                <td>标题：</td>
                <td><input type="text" name="xwbt"  class="easyui-textbox" id="DisplayName1" value="" /></td>
                <td>类别</td>
                <td>
                	<input type="text" name="xwlb"  class="easyui-textbox" id="DisplayName2" value="" /></td>
                 
                  <td>  
                    <a href="javascript:void(0)" id="submit_search" class="easyui-linkbutton c1" style="width:70px">查询</a>
                </td>
            </tr>
        </table>
        </form>
    </div>
     <table id="dg" title="新闻展示表格"  >
		 
	 </table>
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">新建用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">修改用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">删除用户</a>
	</div>
	<!-- 添加新闻 -->
	<div id="dlg" class="easyui-dialog" style="width:800px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		<div class="ftitle">新闻信息管理</div>
		
		<form id="fm" method="post"   novalidate>
		<div class="fitem" hidden="hidden">
				<label>新闻编号:</label>
				<input name="xwid"  class="easyui-validatebox" >
			</div>
			 
			<div class="fitem" >
				<label>新闻标题:</label>
				<input name="xwbt"  class="easyui-validatebox" required="true">
			</div>
			 
			<div class="fitem">
				<label>内容:</label>
				<input name="xwnr" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>时间:</label>
				<input name="xwsj" class="easyui-validatebox">
			</div>
			<div class="fitem">
				<label>作者:</label>
				<input name="xwzz" class="easyui-validatebox">
			</div>
			<div class="fitem">
				<label>类别:</label>
				<input name="xwlb" class="easyui-validatebox">
			</div>
			
			
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">保存</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
	
	<script>
	
	$('#dg').datagrid({
	    url:'/jiaoyu2/xwb/showAllXwb.do',
	    toolbar:'#toolbar',
		pagination:'true',
		rownumbers:'true',
		fitColumns:'true', 
		singleSelect:'true',
		queryParams:  form2Json('searchform'),
		 
	    columns:[[
			{field:'xwid',title:'id', hidden: true},
			
			{field:'xwbt',title:'标题',width:100},
			
			{field:'xwnr',title:'内容',width:100 },
			{field:'xwsj',title:'时间',width:100 },
			{field:'xwzz',title:'作者',width:100 },
			{field:'xwlb',title:'类别',width:100 } 
			
			
	    ]]
	});
	  function form2Json(id) {
		  
          var arr = $("#" + id).serializeArray()
          var jsonStr = "";

          jsonStr += '{';
          for (var i = 0; i < arr.length; i++) {
              jsonStr += '"' + arr[i].name + '":"' + arr[i].value + '",'
          }
          jsonStr = jsonStr.substring(0, (jsonStr.length - 1));
          jsonStr += '}'

          var json = JSON.parse(jsonStr)
          return json
      }
	</script>
	
	<script type="text/javascript">
		var url;
		function newUser(){
			//打开添加新闻 窗口
			$('#dlg').dialog('open').dialog('setTitle','添加新闻');
			//把form表单的内容给清空
			$('#fm').form('clear');
			//给url赋值
			url = '/jiaoyu2/xwb/insertXwb.do';
		}
		function editUser(){
			//获得 选中的行 
			var row = $('#dg').datagrid('getSelected');
			// 是否选中
			if (row){
				//打开窗口 
				$('#dlg').dialog('open').dialog('setTitle','用户信息修改');
				//让from 表单去加载 选中行的数据
				$('#fm').form('load',row);
				//修改的地址
				url = '/jiaoyu2/xwb/updateXwb.do';
			}
		}
		function saveUser(){
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					 
					if (result>0){
						$.messager.alert('操作结果','成功');
						//关闭添加新闻窗口
						$('#dlg').dialog('close');		// close the dialog
						//重新加载数据
						$('#dg').datagrid('reload');	// reload the user data
					} else { 
						$.messager.alert('操作结果','失败');
					}
				}
			});
		}
		function removeUser(){
			//获得选中记录
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$.messager.confirm('确认按钮','你确定要删除该数据?',function(r){
					if (r){
						/* $.post('url路径',数据,回调方法,格式);
							row.xwsj 
						 */
						$.post('/jiaoyu2/xwb/deleteXwb.do',{id:row.xwid},function(result){
							if (result>0){
								$.messager.alert('删除结果','成功');
								$('#dg').datagrid('reload');	 
							} else {
								$.messager.alert('删除结果','失败');
							}
						},'json');
					}
				});
			}
		}
		 $("#submit_search").click(function () {
             $('#dg').datagrid({url:"/jiaoyu2/xwb/getListDynamic.do", queryParams: form2Json("searchform") });   //点击搜索
         });
	</script>
</body>
</html>
