<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Free Email</title>
    <meta name="description" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <%--<%@include file="include/head.jsp"%>--%>
    <!--BootStrap的样式文件-->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>

<div class="container-fluid">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="page-header">
                            <h1>
                                Email for free !!!
                                <small>version 1.0</small>
                            </h1>
                        </div>
                    </div>
                </div>
                <form role="form" id="emailFrom" enctype="multipart/form-data" method="post">
                    <div class="form-group">
                        <label >Email address to ?</label><input type="email" class="form-control"
                                                                                    id="email_address"/>
                    </div>
                    <div class="form-group">
                        <label >Email title ?</label><input type="text" class="form-control"
                                                                                    id="email_title"/>
                    </div>
                    <div class="form-group">
                        <label >Email content ?</label><textarea class="form-control" id="email_content" cols="30" rows="10"></textarea>
                    </div>

                    <%--<div class="form-group">--%>
                        <%--<label >Your Email ?</label><input type="email" class="form-control"--%>
                                                                 <%--id="user_email"/>--%>
                    <%--</div>--%>
                    <!--<div class="form-group">
                        <label >Password</label><input type="password" class="form-control"
                                                                                  id="exampleInputPassword1"/>
                    </div>-->
                    <div class="form-group">
                        <label >File input</label><input type="file"
                                                         id="uploadfile" name="uploadfile" />
                        <p class="help-block">
                            File max size : 10Mb.
                        </p>
                    </div>
                    <!--<div class="checkbox">
                        <label><input type="checkbox"/>Check me out</label>
                    </div>-->
                    <button type="button" id="sendButton" class="btn btn-default">Send Email</button>
                </form>
            </div>
        </div>
        <hr>
        <br>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <ul class="nav nav-pills">
                    <li class="active">
                        <a href="javascript:void(0);"> <span class="badge pull-right">42</span> Home</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);"> <span class="badge pull-right">16</span> More</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

</body>


<!-- 邮件附件文件上传js -->
<script>
    //Send Email js for email.jsp

    //A new file path by Ajax upload
    var newpath;
    function getNewPath(){
        return newpath;
    }
    //send button object
    var formButton = $("#sendButton");
    //when click the button -> sendEmail
    formButton.click(sendEmail);

    var uploadfileObj = $("#uploadfile");
    uploadfileObj.change(fileUpLoad);
    //fileUpLoad
    function fileUpLoad() {

        var uploadfile = uploadfileObj[0].files[0];
        var allowSize = 10*1024*1024;// 10M
        var nowSize = uploadfile.size;
        console.log(uploadfile);
        if (nowSize>allowSize) {
            alert("超过上传限制大小");
            event.preventDefault();
        } else {
            var formData = new FormData();
            formData.append("uploadfile", uploadfile);
            $.ajax({
                url: "upload",
                type: "POST",
                data: formData,
                cache: false,
                processData: false,
                contentType: false,
                success: function (data) {
                    console.log(data.message);
                    console.log(data.filepath);
                    newpath=data.filepath;
                }

            });
        }
    }


    //TODO 加入正则判定各字段
    function sendEmail(){
        console.log("in submit");
        var to = $("#email_address").val();
        var subject = $("#email_title").val();
        var content = $("#email_content").val();
        var filePath = getNewPath();
        console.log(to);
        console.log(subject);
        console.log(content);
        console.log(filePath);

        $.ajax({
            url:"sendEmail",
            type:"POST",
            data:{"to":to,"subject":subject,"content":content,"filePath":filePath},
            dataType:"json",
            success:function(data){
                    alert(data.message);
            }



        })

    }
</script>

</html>