//Send Email js for email.jsp

var formButton = $("#sendButton");

formButton.click();

var email_file = $("#email_file");
email_file.change(fileUpLoad);
//fileUpLoad
function fileUpLoad() {
    var email_file = email_file[0].files[0];
    console.log(email_file);
    if (email_file == "") {
        return;
    } else {
        var formData = new FormData();
        formData.append("uploadfile", email_file);
        $.ajax({
            url: "upload",
            type: "POST",
            data: formData,
            cache: false,
            processData: false,
            contentType: false,
            success: function (data) {
                console.log(data.message);
            }


        });
    }
}

function sendEmail1(){
    var email_address = $("#email_address");
    var email_title = $("#email_title");
    var user_email = $("#user_email");
    var email_file = $("#email_file");



}

