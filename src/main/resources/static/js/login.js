
// The javascript to login

var loginButton = $("#loginButton");

loginButton.click(login);

// function login(){
//     /*var admin_name = $("#login-name").val();
//     var admin_password = $("#login-pwd").val();*/
//     var loginForm = $("#adminLoginForm");
//     console.log("in login");
//     loginForm.action="adminLogin";
//     loginForm.submit();
// }


function login(){
    var admin_name = $("#login-name").val();
    var admin_password = $("#login-pwd").val();

    $.ajax({
        url:"/t/test",
        type:"POST",
        data:{"admin_name":admin_name,"admin_password":admin_password},
        dataType:"json",
        success:function(data){
             alert("in ajax success");
             console.log(data.admin_id);
            if(data.code>0){
                alert(data.message);
                //跳转到管理员后台界面
            }else{
                alert(data.message);
            }
        }
    })

}
