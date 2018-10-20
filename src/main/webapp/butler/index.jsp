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


    <script src="js/jquery-1.10.2.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/bootstrapValidator.min.css">

    <script src="js/bootstrapValidator.min.js"></script>

    <script src="js/zh_CN.js"></script>
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


<div class="container-fluid">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="jumbotron">
                            <h1>
                                卖卡
                            </h1>
                            <p>
                                This is the website to sell the cards.
                            </p>
                            <p>
                                <a class="btn  btn-large" style="background-color:#dca85f;color:white" href="#">查看九号管家卡使用范围</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-4 column">
                        <h3 class="text-center">
                            首享卡 ￥3000元
                        </h3><img alt="140x140" src="img/bcd.jpg" class="img-responsive"/>
                        <br/>
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h3 class="panel-title text-center card-title">
                                    会员特权<br>
                                    (..买了吗..)
                                </h3>
                            </div>
                            <div class="panel-body">
                                1.尊享各版块会员价格
                            </div>
                            <div class="panel-footer">
                                2.每月9号会员日免费洗车等会员专属服务
                            </div>
                            <div class="panel-body">
                                3.城区内免费道路救援、搭电、应急送油
                            </div>
                            <div class="panel-footer">
                                4.每月1次免费酒后代驾服务<b>★</b>
                            </div>
                            <div class="panel-body">
                                5.车辆代审服务
                            </div>
                            <div class="panel-footer">
                                6.尊享各版块会员专属包间及菜品
                            </div>
                            <div class="panel-body">
                                7.赠送啤酒100瓶
                            </div>
                            <div class="panel-footer">
                                8.干洗版块享8折+专属收衣筐及快速熨烫服务<b>★</b>
                            </div>
                            <div class="panel-body">
                                9.中石油会员专属加油卡每升优惠2毛/升，周二周五优惠8毛/升
                            </div>
                            <div class="panel-footer">
                                10.每月免费宠物洗澡一次（20KG以下）
                            </div>
                            <div class="panel-body">
                                11.会员免费洗牙服务
                            </div>
                            <div class="panel-footer">
                                12.尊享一年不定期花艺基础课程教学
                            </div>
                            <div class="panel-heading">
                                <button  id="modal-760018" class="btn  center-block" href="#modal-container-760018" role="button"  data-toggle="modal" style="color:white">买了买了</button>
                            </div>
                        </div>
                        <div class="modal fade" id="modal-container-760018" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title" id="myModalLabel1">
                                            购买首享卡
                                        </h4>
                                    </div>
                                    <div class="modal-body">

                                        <!--首享卡表-->
                                        <form class="form-horizontal" role="form" id="form1" action="/insertOne" method="post">
                                            <!--首享卡value1-->
                                            <div class="form-group">
                                                <input type="hidden" value="1" name="cardType"/>
                                            </div>


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
                                    </div>
                                    <!-- <div class="modal-footer">
                                         <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn ">保存</button>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="alert alert-dismissable alert-info">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4>
                                注意!
                            </h4> <strong>Warning!</strong> 买定离手. <a href="javascript:void(0);" class="alert-link">查看来9号洗车的欠款</a>
                        </div>
                    </div>
                    <div class="col-md-4 column">
                        <h3 class="text-center">
                            私享卡 ￥20000元
                        </h3><img alt="140x140" src="img/bcd.jpg" class="img-responsive"/>
                        <br/>
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <h3 class="panel-title text-center card-title">
                                    会员特权<br>
                                    (在首享卡基础上增加 标★除外)
                                </h3>
                            </div>
                            <div class="panel-body">
                                1. 配备专属管家
                            </div>
                            <div class="panel-footer">
                                2. 1台车辆一年免费清洗
                            </div>
                            <div class="panel-body">
                                3. 每月3次免费酒后代驾
                            </div>
                            <div class="panel-footer">
                                4. 免费上门取送车服务
                            </div>
                            <div class="panel-body">
                                5. 定制一款会员姓名菜品
                            </div>
                            <div class="panel-footer">
                                6. 管家上门取送衣服务
                            </div>
                            <div class="panel-body">
                                7. 干洗版块享7折+专属收衣筐及快速熨烫服务
                            </div>
                            <div class="panel-footer">
                                8. 体检套餐卡半价购买
                            </div>
                            <div class="panel-body">
                                9. 体检套餐卡半价购买
                            </div>
                            <div class="panel-footer">
                                10.体检免费接送服务
                            </div>
                            <div class="panel-body">
                                11.花艺兴趣课程2节<b>★</b>
                            </div>
                            <div class="panel-footer">
                                再次重申<br> 私享卡在首享卡基础上增加 标★除外<br>
                            </div>
                            <div class="panel-heading">
                                <button  id="modal-702677" class="btn  center-block" href="#modal-container-702677" role="button"  data-toggle="modal" style="color:white">买了买了</button>
                            </div>
                        </div>
                        <div class="modal fade" id="modal-container-702677" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title" id="myModalLabel2">
                                            购买私享卡
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" id="form2" action="/insertOne" method="post">
                                            <!--私享卡value2-->

                                            <div class="form-group">
                                                <input type="hidden" value="2" name="cardType"/>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                        <input class="form-control" type="text" placeholder="姓名" id="memberName2" name="memberName">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                                        <input class="form-control" type="numberic" placeholder="手机号" id="memberPhone2" name="memberPhone">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-id-card fa-fw"></i></span>
                                                        <input class="form-control" type="numberic" placeholder="身份证号" id="memberIdentity2" name="memberIdentity">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-car fa-fw"></i></span>
                                                        <input class="form-control" type="text" placeholder="车牌" id="memberCarnumber2" name="memberCarnumber">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- <div class="form-group">
                                                 <div class="col-sm-offset-2 col-sm-10">
                                                     <div class="checkbox">
                                                         <label><input type="checkbox" />Remember me</label>
                                                     </div>
                                                 </div>
                                             </div>-->
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit"  class="btn btn-default" name="submit">前往挑选卡号</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- <div class="modal-footer">
                                         <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn ">保存</button>
                                     </div>-->
                                </div>
                            </div>
                        </div>
                        <div class="alert alert-dismissable alert-warning">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4>
                                注意!
                            </h4> <strong>Warning!</strong> 买了私享卡您就更有思想了. <a href="javascript:void(0);" class="alert-link">看看</a>
                        </div>
                    </div>
                    <div class="col-md-4 column">
                        <h3 class="text-center">
                            至尊卡 ￥50000元
                        </h3><img alt="140x140" src="img/bcd.jpg" class="img-responsive"/>
                        <br>
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title text-center card-title">
                                    会员特权<br>
                                    （在私享卡基础上增加 标★除外）

                                </h3>
                            </div>
                            <div class="panel-body">
                                1. 3台车辆一年免费清洗
                            </div>
                            <div class="panel-footer">
                                2. 每月6次免费酒后代驾
                            </div>
                            <div class="panel-body">
                                3. 24小时全国免费道路救援
                            </div>
                            <div class="panel-footer">
                                4. 智能车联管家服务（含带车辆手机体检、防盗、碰撞呼救、车辆追踪、违章提醒等功能）
                            </div>
                            <div class="panel-body">
                                5. 餐饮房间姓名定制
                            </div>
                            <div class="panel-footer">
                                6. 每年3次免费体检服务
                            </div>
                            <div class="panel-body">
                                7. 各店面专属定制茶杯
                            </div>
                            <div class="panel-footer">
                                8.干洗享6折+专属收衣筐及快速熨烫服务
                            </div>
                            <div class="panel-body">
                                9.花艺兴趣课程5节+生日派对布景1场
                            </div>
                            <div class="panel-footer">
                                再次重申<br> 至尊卡在私享卡基础上增加 标★除外<br>
                                在私享卡基础上增加 标★除外<br>
                                再次重申<br> 至尊卡在私享卡基础上增加 标★除外<br>
                            </div>
                            <div class="panel-heading">
                                <button  id="modal-917003" class="btn  center-block" href="#modal-container-917003" role="button"  data-toggle="modal" style="color:white">买了买了</button>
                            </div>
                        </div>
                        <div class="modal fade" id="modal-container-917003" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                            购买至尊卡
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" id="form3" action="/insertOne" method="post">
                                            <!--至尊卡value3-->
                                            <div class="form-group">
                                                <input type="hidden" value="3" name="cardType"/>
                                            </div>
                                            <div class="form-group">

                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                        <input class="form-control" type="text" placeholder="姓名" id="memberName3" name="memberName">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                                        <input class="form-control" type="numberic" placeholder="手机号" id="memberPhone3" name="memberPhone">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-id-card fa-fw"></i></span>
                                                        <input class="form-control" type="numberic" placeholder="身份证号" id="memberIdentity3" name="memberIdentity">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-car fa-fw"></i></span>
                                                        <input class="form-control" type="text" placeholder="车牌" id="memberCarnumber3" name="memberCarnumber">
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- <div class="form-group">
                                                 <div class="col-sm-offset-2 col-sm-10">
                                                     <div class="checkbox">
                                                         <label><input type="checkbox" />Remember me</label>
                                                     </div>
                                                 </div>
                                             </div> -->
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" class="btn btn-default" name="submit">前往挑选卡号</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- <div class="modal-footer">
                                         <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn ">保存</button>
                                     </div>-->
                                </div>
                            </div>
                        </div>
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4>
                                注意!
                            </h4> <strong>Warning!</strong> 还等什么?立即购买吧. <a href="javascript:void(0);" class="alert-link">查看</a>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <dl>
                            <dt>
                                www.jiuhaoguanjia.com
                            </dt>
                            <dd>
                                面向全国的汽车交流门户网站.
                            </dd>
                            <dt>
                                www.九号管家.com
                            </dt>
                            <dd>
                                九号管家的中文域名,用户搜索后对接的是英文域名及功能.
                            </dd>
                            <dt>
                                购卡
                            </dt>
                            <dd>
                                需要在对接微信/支付宝/银行卡支付.
                            </dd>
                            <dt>
                                线上服务器
                            </dt>
                            <dd>
                                继续深入了解使用多项目部署单个维护.
                            </dd>
                            <dt>
                                全景拍摄
                            </dt>
                            <dd>
                                拍摄及修正图片发布.
                            </dd>
                        </dl>

                        <!-- <form role="form">
                            <div class="form-group">
                                 <label for="exampleInputEmail1">Email address</label><input type="email" class="form-control" id="exampleInputEmail1" />
                            </div>
                            <div class="form-group">
                                 <label for="exampleInputPassword1">Password</label><input type="password" class="form-control" id="exampleInputPassword1" />
                            </div>
                            <div class="form-group">
                                 <label for="exampleInputFile">File input</label><input type="file" id="exampleInputFile" />
                                <p class="help-block">
                                    Example block-level help text here.
                                </p>
                            </div>
                            <div class="checkbox">
                                 <label><input type="checkbox" />Check me out</label>
                            </div> <button type="submit" class="btn btn-default">Submit</button>
                        </form> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
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
                            min: 2,
                            max: 18,
                            message: '用户名长度必须在2到18位之间'
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
                    alert(result.code);
                    alert(result.message);
                    if(result.code==1){
                        window.location.href="/showCards?cardType="+ $form.serialize()[9];
                    }
                }, 'json');
            });
    });

</script>
</html>