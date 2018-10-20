<%--
  Created by IntelliJ IDEA.
  User: SeeClanUkyo
  Date: 2018/10/15
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择卡号</title>
    <meta name="description" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">


    <link rel="stylesheet" type="text/css" href="css/style2.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <!--BootStrap的样式文件-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- 字体样式文件 -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">

    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="js/jquery-1.10.2.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
    <!-- 按钮样式 -->
    <link rel="stylesheet" href="css/icheck-bootstrap.css">

</head>


<body>
<div class="container">

    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <h1>
                        请选取卡号
                    </h1>
                    <p>
                        <a class="btn btn-primary btn-large" href="javascript:void(0);">Learn more</a>
                    </p>
                </div><img alt="140x140" src="img/bcd.jpg" class="img-rounded img-responsive center-block" /><br/>
                <center>
                    <div class="btn-group">
                     <button class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-left"></em> 常规普号</button>
                     <button class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-center"></em>尊享靓号</button>
                     <button class="btn btn-default" type="button"><em class="glyphicon glyphicon-align-right"></em>顶级连号</button>
                     <button class="btn btn-default center-block" type="button"><em class="glyphicon glyphicon-align-justify"></em> 全</button>
                    </div>
                </center>
                <div class="radio icheck-turquoise">
                    <input type="radio" id="turquoise1" name="turquoise" />
                    <label for="turquoise1">turquoise 1</label>
                </div>
                <div class="radio icheck-turquoise">
                    <input type="radio" checked id="turquoise2" name="turquoise" />
                    <label for="turquoise2">turquoise 2</label>
                </div>
            </div>
        </div>
    </div>

</div>
</body>


<script>
    $.ajax({
        url:"/cardList",
        data:{"cardType":<%=request.getParameter("cardType")%>},//获取卡类别ID
        dataType:"json",
        method:"POST",
        success:function(data){
            alert("OKLY");
        }
    })

</script>

</html>