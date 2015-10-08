$(document).ready(function(){
    $(".sc_contact_form .enter").click(function(e){
        userSubmitForm();
        e.preventDefault();
    });
});

empt = 'Name cannot be empty';
to_lng = 'Name is too long';
empt_mail = 'Email is too short or empty';
to_lng_mail = 'Email is too long';
incor = 'Email is invalid';
mes_empt = 'Message field is empty';
to_lng_mes = 'Message is too long';

function userSubmitForm() {
    var error = formValidate(jQuery(".sc_contact_form form"), {
        error_message_show: true,
        error_message_time: 5000,
        error_message_class: "sc_infobox sc_infobox_style_error",
        error_fields_class: "error_fields_class",
        exit_after_first_error: false,
        rules: [{
            field: "username",
            min_length: {
                value: 1,
                message: empt
            },
            max_length: {
                value: 160,
                message: to_lng
            }
        }, {
            field: "email",
            min_length: {
                value: 7,
                message: empt_mail
            },
            max_length: {
                value: 60,
                message: to_lng_mail
            },
            mask: {
                value: "^([a-z0-9_\-]+\\.)*[a-z0-9_\\-]+@[a-z0-9_\-]+(\\.[a-z0-9_\-]+)*\\.[a-z]{2,6}$",
                message: incor
            }
        }, {
            field: "message",
            min_length: {
                value: 1,
                message: mes_empt
            },
            max_length: {
                value: 200,
                message: to_lng_mes
            }
        }]
    });

    if (!error) {
        var user_name = jQuery(".sc_contact_form #sc_contact_form_username").val();
        var user_email = jQuery(".sc_contact_form #sc_contact_form_email").val();
        var user_msg = jQuery(".sc_contact_form #sc_contact_form_message").val();
        var data = {
            name: user_name,
            email: user_email,
            message: user_msg
        };
        //jQuery.post("include/sendmail.php", data, userSubmitFormResponse, "text");
        $.ajax({
            type: "POST",
            url: "home/send_email",
            dataType: "script",
            data: data
        });
    }
}
