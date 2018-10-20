<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>About Me</title>
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
                    <a href="#">About Me</a>
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
        <div class="container about">
            <h1>Hello, My name is <span class="about-bold">  John Doe</span></h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus inventore magni ratione perferendis ex molestiae cum reiciendis perspiciatis consequuntur, nihil ducimus corrupti! Ipsum nesciunt ipsa nobis obcaecati labore, rem recusandae?</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui quo sint asperiores, ut doloremque eum commodi, odit nisi sed repellendus earum recusandae pariatur consectetur minus rerum, magni dolores officiis magnam.</p>

            <div class="about-button">
                <a class="btn btn-xlarge btn-clean-one" href="contact.jsp">Contact Me</a>
            </div>
            <hr>
        </div>

    </div>

    <%@include file="include/footer.jsp"%>

</body>
</html>