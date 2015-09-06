var Script = function () {

    $().ready(function () {
        // validate the comment form when it is submitted
        $("#commentForm").validate();

        // validate signup form on keyup and submit
        $("#signupForm").validate({
            rules: {
                firstname: "required",
                lastname: "required",
                "user\.username": {
                    required: true,
                    minlength: 5,
                    checkExistUsername: true
                },
                "user\.password": {
                    required: true,
                    minlength: 5
                },
                "user\.fullname": {
                    required: true,
                    minlength: 2
                },
                "confirm_password": {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                "user\.email": {
                    required: true,
                    email: true,
                    checkExistEmail: true
                },
                topic: {
                    required: "#newsletter:checked",
                    minlength: 2
                },
                agree: "required"
            },
            messages: {
                firstname: "Please enter your firstname",
                lastname: "Please enter your lastname",
                username: {
                    required: "Please enter a username",
                    minlength: "Your username fuck must consist of at least 2 characters"
                },
                password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long"
                },
                confirm_password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long",
                    equalTo: "Please enter the same password as above"
                },
                email: "Please enter a valid email address",
                agree: "Please accept our policy"
            }
        });
        $.validator.addMethod("checkExistUsername", function (value, element)
        {
            var inputElem = $('#username'), data = {"typeValidation": "UsernameExist", "value": value};
            var ret = false;
            $.ajax(
                    {
                        type: "GET",
                        url: "ajaxValidate",
                        dataType: "json",
                        data: data,
                        async: false,
                        success: function (returnData)
                        {
                            ret = returnData.isValidated;
                        }
                    });
            return ret;

        }, "This username is existed.");

        $.validator.addMethod("checkExistEmail", function (value, element)
        {
            var inputElem = $('#username'), data = {"typeValidation": "EmailExist", "value": value};
            var ret = false;
            $.ajax(
                    {
                        type: "GET",
                        url: "ajaxValidate",
                        dataType: "json",
                        data: data,
                        async: false,
                        success: function (returnData)
                        {
                            ret = returnData.isValidated;
                        }
                    });
            return ret;

        }, "This email is existed.");

        // propose username by combining first- and lastname
        $("#username").focus(function () {
            var firstname = $("#firstname").val();
            var lastname = $("#lastname").val();
            if (firstname && lastname && !this.value) {
                this.value = firstname + "." + lastname;
            }
        });

        //code to hide topic selection, disable for demo
        var newsletter = $("#newsletter");
        // newsletter topics are optional, hide at first
        var inital = newsletter.is(":checked");
        var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
        var topicInputs = topics.find("input").attr("disabled", !inital);
        // show when newsletter is checked
        newsletter.click(function () {
            topics[this.checked ? "removeClass" : "addClass"]("gray");
            topicInputs.attr("disabled", !this.checked);
        });
    });


}();