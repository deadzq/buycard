<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>会员购卡</title>
    <meta name="description" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <link rel="stylesheet" type="text/css" href="css/style2.css" />
    <!--BootStrap的样式文件-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- 字体样式文件 -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">

    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>

    <script src="js/jquery-1.10.2.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/bootstrapValidator.min.css">

    <script src="js/bootstrapValidator.min.js"></script>

    <script src="js/zh_CN.js"></script>



    <script type="text/javascript">

        $(function () {
            $('form').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    memberName: {
                        message: '用户名验证失败',
                        validators: {
                            notEmpty: {
                                message: '用户名不能为空，请重新输入'
                            },
                            stringLength: {
                                min: 1,
                                max: 18,
                                message: '用户名长度必须在1到18位之间'
                            },
                            regexp: {
                                //适用于判断中英文姓名，鉴于英文姓名中间常有空格，所以也加入了适用空格的判断；中文姓名也支持空格以及“·”的匹配
                                regexp: /^[\u4E00-\u9FA5A-Za-z\s]+(·[\u4E00-\u9FA5A-Za-z]+)*$/,
                                message: '姓名格式错误，请重新输入'
                            }
                        }
                    },
                    memberPhone: {
                        validators: {
                            notEmpty: {
                                message: '手机号码不能为空，请重新输入'
                            },
                            regexp: {
                                regexp:/^1[34578]\d{9}$/,
                                message: '手机号码格式有誤，请重新输入'
                            }
                        }
                    },
                    memberIdentity:{
                        validators:{
                            notEmpty:{
                                message:'身份证号码不能为空，请重新输入'
                            },
                            regexp:{
                                regexp:/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,
                                message:'身份证号码格式有误，请重新输入'
                            }
                        }
                    },
                    memberCarnumber:{
                        validators:{
                            notEmpty:{
                                message:'车牌号码不能为空，请重新输入'
                            },
                            regexp:{
                                regexp:/^(([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领][A-Z](([0-9]{5}[DF])|([DF]([A-HJ-NP-Z0-9])[0-9]{4})))|([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领][A-Z][A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9挂学警港澳使领]))$/,
                                message:'车牌号码格式有誤，请重新输入'
                            }
                        }
                    }
                }
            })
                    .on('success.form.bv',function(e){
                        // Prevent form submission
                        e.preventDefault();

                        // Get the form instance
                        var $form = $(e.target);

                        // Get the BootstrapValidator instance
                        var bv = $form.data('bootstrapValidator');

                        // Use Ajax to submit form data
                        $.post($form.attr('action'), $form.serialize(), function(result) {
                            console.log(result);
                            $("form[name='submit']").submit();
                        }, 'json');
                    });
        });


    </script>


    <style>
        button{
            background-color:#dca85f;
        }
        .card-title{
            color:#dca85f;
        }
    </style>
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .margin-bottom-sm {
            margin-bottom: 5px !important;
        }

        .input-group {
            position: relative;
            display: table;
            border-collapse: separate;
        }
        .input-group[class*="col-"] {
            float: none;
            padding-left: 0;
            padding-right: 0;
        }
        .input-group .form-control {
            position: relative;
            z-index: 2;
            float: left;
            width: 100%;
            margin-bottom: 0;
        }

        .input-group-addon,
        .input-group-btn,
        .input-group .form-control {
            display: table-cell;
        }
        .input-group-addon:not(:first-child):not(:last-child),
        .input-group-btn:not(:first-child):not(:last-child),
        .input-group .form-control:not(:first-child):not(:last-child) {
            border-radius: 0;
        }
        .input-group-addon,
        .input-group-btn {
            width: 1%;
            white-space: nowrap;
            vertical-align: middle;
        }
        .input-group-addon {
            padding: 6px 12px;
            font-size: 14px;
            font-weight: normal;
            line-height: 1;
            color: #555555;
            text-align: center;
            background-color: #eeeeee;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        .input-group .form-control:first-child,
        .input-group-addon:first-child,
        .input-group-btn:first-child > .btn,
        .input-group-btn:first-child > .btn-group > .btn,
        .input-group-btn:first-child > .dropdown-toggle,
        .input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
        .input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
            border-bottom-right-radius: 0;
            border-top-right-radius: 0;
        }

        .input-group-addon:first-child {
            border-right: 0;
        }
        .input-group .form-control:last-child,
        .input-group-addon:last-child,
        .input-group-btn:last-child > .btn,
        .input-group-btn:last-child > .btn-group > .btn,
        .input-group-btn:last-child > .dropdown-toggle,
        .input-group-btn:first-child > .btn:not(:first-child),
        .input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
            border-bottom-left-radius: 0;
            border-top-left-radius: 0;
        }
        .input-group-addon:last-child {
            border-left: 0;
        }

        .form-control {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555555;
            background-color: #ffffff;
            background-image: none;
            border: 1px solid #cccccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
        .form-control:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
        }
        .form-control::-moz-placeholder {
            color: #999999;
            opacity: 1;
        }
        .form-control:-ms-input-placeholder {
            color: #999999;
        }
        .form-control::-webkit-input-placeholder {
            color: #999999;
        }
        .form-control::-ms-expand {
            border: 0;
            background-color: transparent;
        }
    </style>

</head>
<body>


　<form class="form-horizontal" role="form" id="form1" action="/insertOne" method="POST">


    <div class="form-group">

        <div class="col-sm-10">
            <div class="input-group margin-bottom-sm">
                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                <input class="form-control" type="text" placeholder="姓名" id="memberName1" name="memberName">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10">
            <div class="input-group margin-bottom-sm">
                <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                <input class="form-control" type="numberic" placeholder="手机号" id="memberPhone1" name="memberPhone">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10">
            <div class="input-group margin-bottom-sm">
                <span class="input-group-addon"><i class="fa fa-id-card fa-fw"></i></span>
                <input class="form-control" type="numberic" placeholder="身份证号" id="memberIdentity1" name="memberIdentity">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10">
            <div class="input-group margin-bottom-sm">
                <span class="input-group-addon"><i class="fa fa-car fa-fw"></i></span>
                <input class="form-control" type="text" placeholder="车牌" id="memberCarnumber1" name="memberCarnumber">
            </div>
        </div>
    </div>
    <!-- <div class="form-group">
         <label class="col-sm-2 control-label">性别</label>
        <div class="col-sm-10">
            <input type="numeric" class="form-control" id="member_sexual" name="member_sexual" />
        </div>
    </div> -->

    <!-- <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                 <label><input type="checkbox" />Remember me</label>
            </div>
      </div>
    </div> -->
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default"  name="submit">前往挑选卡号</button>
        </div>
    </div>
</form>

</body>

</html>