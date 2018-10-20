<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login master</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <%@include file="include/head.jsp"%>
    
</head>
<body>
    <header>

        <%@include file="include/header.jsp"%>

        <div class="widewrapper subheader">
            <div class="container">
                <div class="clean-breadcrumb">
                    <a href="login">Login</a>
                </div>
                <div class="clean-searchbox">
                    <form action="#" method="get" accept-charset="utf-8">
                        
                        <input class="searchfield" id="searchbox" type="text" placeholder="Search">
                         <button class="searchbutton" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </header>

    <div class="widewrapper main">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 clean-superblock" id="contact">
                    <h2>Login Master</h2>
                    
                    <form method="POST"  class="contact-form" id="adminLoginForm">
                        <input type="text" name="admin_name" id="login-name" placeholder="Name" class="form-control input-lg">
                        <input type="password" name="admin_password" id="login-pwd" placeholder="PassWord" class="form-control input-lg">
                        <div class="buttons clearfix">
                            <button type="button" id="loginButton" class="btn btn-xlarge btn-clean-one">Login Now</button>
                        </div>                    
                    </form>

                </div>
            </div>        
        </div>
    </div>

    <%@include file="include/footer.jsp"%>
    <script src="js/login.js"></script>


</body>
</html>