
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理系统</title>
    <link href="admin_css/index.css" rel="stylesheet" />
    <link href="admin_css/themes/default/easyui.css" rel="stylesheet" />
    <link href="admin_css/themes/icon.css" rel="stylesheet" />
    <link href="admin_css/demo.css" rel="stylesheet" />
    <script src="admin_script/jquery.min.js"></script>
    <script src="admin_script/jquery.easyui.min.js"></script>
    <script>
        $(function () {
            bindEvent();
        });
        function bindEvent() {
            $(".btn_menu").click(function () {
                var title = $(this).text();
                var url = $(this).attr("url");
                var isSelect = $("#container").tabs('exists', title);
                if (isSelect) {
                	
                    $("#container").tabs('close', title); 
                   
                }
                $("#container").tabs('add', {
                    title: title,
                    content: CreateContent(url),
                    closable: true
                });
            });
        }

        function CreateContent(url) {
            var strHtml = '<iframe src="' + url + '" scrolling="no" frameborder="0" fit="true" style="height:110%;width:100%;min-height:600px;" ></iframe>';
            return strHtml;
        }
    </script>    
</head>
<body>
    <div id="layout_div" class="easyui-layout">
        <!-- 头部 -->
        <div data-options="region:'north',border:false" style="overflow:hidden; height:70px;background:#338FCC;padding:10px;padding-left:30px;">
            <div style="float:left; height:70px;">
                <img src="images/logo_1.jpg" height="60" style="margin-top:-10px;" />
            </div>
            <div style="color:#fff  ;font-size:3em; float:left;margin-left:30px;">
               	 后台管理系统
            </div>
            <div style="float:right;height:70px; margin-right:50px;">
                <span>您好，admin！</span>
                <span><a href="Javascript:void(0)">注销</a></span>
            </div>
        </div>
        <!-- 左侧 菜单栏 -->
        <div data-options="region:'west',split:false,title:'菜单',collapsible:false" style="width:170px;">
            <div id="menu" class="easyui-accordion" fit="true">
                <!-- a标签url属性中填写（/控制器名称/视图名称） -->
                <div title="教育服务" data-options="iconCls:'icon-print'" style=" overflow:auto;padding:10px;">
                    <!-- 显示风格 树状结构 -->
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="/views/admin_manager/adminInfo.html">管理员管理</a></li>
                        <li><a href="javascript:;" class="btn_menu" url="/views/admin_manager/members.html">会员管理</a></li>
                        <li><a href="javascript:;" class="btn_menu" url="/views/admin_manager/memberCards.html">会员卡管理</a></li>
                        <li><a href="javascript:;" class="btn_menu" url="/views/admin_manager/blogInfo.html">新闻管理</a></li>
                    	<li><a href="javascript:;" class="btn_menu" url="admin_manager/bjb_list.html">班级管理</a></li>
                    	<li><a href="javascript:;" class="btn_menu" url="lsb_list.html">老师管理</a></li>
                    	<li><a href="javascript:;" class="btn_menu" url="xqb_list.html">校区管理</a></li>
                    	<li><a href="javascript:;" class="btn_menu" url="bcb_list.html">班次管理</a></li>
                    	<li><a href="javascript:;" class="btn_menu" url="zxb_list.html">在线课程管理</a></li>
                    </ul>
                </div>
                <div title="用户信息管理" data-options="iconCls:'icon-redo'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="yhbShow.html">查看用户信息</a></li>
                    </ul>
                </div>
                <div title="用户管理" data-options="iconCls:'icon-man'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="user_list.html">用户管理</a></li>
                    </ul>
                </div>
                <div title="部门管理" data-options="iconCls:'icon-tip'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="group_list.html">部门管理</a></li>
                    </ul>
                </div>
                <div title="系统配置" data-options="iconCls:'icon-lock'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="">系统配置</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--下方代码 -->
        <div data-options="region:'south',border:false" style="height:50px; font-size:15px; color:#fff; background:#338FCC;padding:10px; text-align:center">
            © 2018 - 教育平台后台管理平台
        </div>
        <!--右侧代码控制  -->
        <div data-options="region:'center'" style="overflow:hidden">
            <div class="easyui-tabs" fit="true" id="container">
                <div title="主页" style="padding:10px">
                                                   欢迎使用高数教育平台后台管理系统
                    <!--<iframe src="/list.html" scrolling="no" frameborder="0" height="1000" width="1100" style="overflow:hidden; margin-bottom:10px;"></iframe>-->
                </div>
               indexOld.jsp
            </div>

        </div>
    </div>
</body>

</html>
