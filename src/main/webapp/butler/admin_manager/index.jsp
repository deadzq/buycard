<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>9#Butler后台管理系统</title>
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
        <div data-options="region:'north',border:false" style="overflow:hidden; height:70px;background:#338FCC;padding:10px;padding-left:30px;padding-top:15px">
            <div style="float:left; height:70px;">
                <img src="img/9gj.png" height="60" style="margin-top:-10px;" />
            </div>
            <div style="color:#fff  ;font-size:3em; float:left;margin-left:30px;">
                9#Butler后台管理系统 - 测试版 0.1.0 version
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
                <div title="会员类别管理" data-options="iconCls:'icon-print'" style=" overflow:auto;padding:10px;">
                    <!-- 显示风格 树状结构 -->
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="/butler/admin_manager/members.html">会员管理</a></li>
                        <li><a href="javascript:;" class="btn_menu" url="/butler/admin_manager/memberCards.html">会员卡管理</a></li>
                        <li><a href="javascript:;" class="btn_menu" url="/butler/admin_manager/memberCardtype.html">会员卡分类管理</a></li>
                    </ul>
                </div>
                <div title="店内人员管理" data-options="iconCls:'icon-redo'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="yhbShow.html">查看用户信息</a></li>
                    </ul>
                </div>
                <div title="合作方管理" data-options="iconCls:'icon-man'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="user_list.html">用户管理</a></li>
                    </ul>
                </div>
                <div title="部门管理" data-options="iconCls:'icon-tip'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="group_list.html">部门管理</a></li>
                    </ul>
                </div>
                <div title="系统管理员管理" data-options="iconCls:'icon-tip'" style="overflow:auto;padding:10px;">
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
            © 2018 - 9#Butler后台管理系统 - 9#网络部
        </div>
        <!--右侧代码控制  -->
        <div data-options="region:'center'" style="overflow:hidden">
            <div class="easyui-tabs" fit="true" id="container">
                <div title="主页" style="padding:10px">

                    <!--<iframe src="/list.html" scrolling="no" frameborder="0" height="1000" width="1100" style="overflow:hidden; margin-bottom:10px;"></iframe>-->
                </div>

            </div>

        </div>
    </div>
</body>

</html>
