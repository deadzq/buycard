/**
 *
 * @type {*|jQuery|HTMLElement}
 *
 * @Author:Chen&ZQ
 * TODO:更改提示样式 使用bootstrapValidator
 *
 */

//判定姓名
var memberNameObj = $("input[name='memberName']");
//中文姓名正则
var namePattern = /^[\u4E00-\u9FA5]{1,6}$/;
//首享卡名称更改时判定是否合规
memberNameObj.change(memberNameJudger);
//正则判定会员名称
function memberNameJudger(){
   var memberName = memberNameObj.val();
   console.log(memberName);
    if(!namePattern.test(memberName)){
        // alert("名称不合法");
        return false;
    }else{
        return memberName;
    }
}


//判定手机号
var memberPhoneObj = $("input[name='memberPhone']");
//手机号正则
var phonePattern = /^1[34578]\d{9}$/;
if(memberPhoneObj != null){
    memberPhoneObj.change(memberPhoneJudger);
}
//验证手机号
function memberPhoneJudger() {
    var memberPhone = memberPhoneObj.val();
    if(!phonePattern.test(memberPhone)){
        // alert("手机填写不合法");
        return false;
    }else{
        return memberPhone;
    }
}

//判定身份证号
var memberIdentityObj = $("input[name='memberIdentity']");
//身份证正则
var identityPattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
if(memberIdentityObj != null){
    memberIdentityObj.change(memberIdentityJudger);
}

//验证身份证
 function memberIdentityJudger() {
     var memberIdentity = memberIdentityObj.val();
     if(!identityPattern.test(memberIdentity)){
         // alert("身份证填写不合法");
         return false;
     }else{
         return memberIdentity;
     }

 }


//判定车牌
var memberCarnumberObj = $("input[name='memberCarnumber']");
//车牌正则√
var carnumberPattern = /^(([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领][A-Z](([0-9]{5}[DF])|([DF]([A-HJ-NP-Z0-9])[0-9]{4})))|([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领][A-Z][A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9挂学警港澳使领]))$/;
if(memberCarnumberObj != null){
    memberCarnumberObj.change(memberCarnumberJudger);
}
//验证车牌号
function memberCarnumberJudger() {
    var memberCarnumber = memberCarnumberObj.val();
    if(!carnumberPattern.test(memberCarnumber)){
        // alert("车牌填写不合法");
        return false;
    }else{
        return memberCarnumber;
    }
}
//整体表单验证
function formValidate(){
    memberNameFlag = memberNameJudger();
    memberPhoneFlag = memberPhoneJudger();
    memberIdentityFlag = memberIdentityJudger();
    memberCarNumberFlag = memberCarnumberJudger();
    if(memberNameFlag && memberPhoneFlag && memberIdentityFlag && memberCarNumberFlag){
        //验证成功 注册到新会员表元组数据中
        $.ajax({
            url:"/insertOne",
            type:"POST",
            data:{/*"memberId":14,*/"memberName":memberNameFlag,"memberPhone":memberPhoneFlag,"memberIdentity":memberIdentityFlag,"memberCarnumber":memberCarNumberFlag},
            dataType:"json",
            success:function(data){
                if(data.code>0){
                    alert("用户注册成功,前往选择卡号~💗");
                    document.forms["form1"].submit();
                    // $('#form1').submit();
                    // window.location.href="https://www.baidu.com";
                    window.location.href="/admin";
                }else{
                    alert("用户注册失败,请联系管理员343840681~");
                }
            }
        })

    }else{
        return false;
    }
}

//SUBMIT
$('#submit1').click(formValidate);
$('#submit2').click(formValidate);
$('#submit3').click(formValidate);