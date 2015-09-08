<%-- 
    Document   : change_password
    Created on : Sep 7, 2015, 7:59:57 AM
    Author     : tinblanc
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Change Password
                    </header>
                    <div class="panel-body">
                        <div class="form">
                            <s:form cssClass="cmxform form-horizontal tasi-form" id="signupForm">

                                <div class="form-group ">
                                    <label for="old_password" class="control-label col-lg-2">Old Password</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="old_password" name="oldPassword" type="password" minlength="2" maxlength="100" required/>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="password" class="control-label col-lg-2">New Password</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="password" name="newPassword" type="password" minlength="2" maxlength="100" required />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="confirm_password" class="control-label col-lg-2">Confirm Password</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="confirm_password" name="confirm_password" type="password" minlength="2" maxlength="100" required />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-danger" type="submit" id="btnSave">Save</button>
                                        <button class="btn btn-default" type="button">Cancel</button>
                                    </div>
                                </div>
                            </s:form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- page end-->
    </section>
</section>
<!--main content end-->



<!-- js placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script src="js/respond.min.js" ></script>

<script type="text/javascript" src="js/jquery.validate.min.js"></script>

<!--summernote-->
<script src="assets/summernote/dist/summernote.min.js"></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<!--myscript-->
<script src="js/myscript.js"></script>

<!--toastr-->
<script src="assets/toastr-master/toastr.js"></script>

<script type="text/javascript">
    $.validator.setDefaults({
        debug: true,
        success: "valid"
    });
    $(document).ready(function () {
        var $form = $("#signupForm");
        $form.validate({
            rules: {
                newPassword: "required",
                confirm_password: {
                    equalTo: "#password"
                }
            }});
        $("#btnSave").on("click", function () {
            var username = "${sessionScope.user.username}";
            var oldPassword = $("#old_password").val();
            var newPassword = $("#password").val();
            var comfirmPassword = $("#confirm_password").val();
            console.log($form.valid());
            if ($form.valid()) {
                changePassword(username, oldPassword, newPassword, function () {
                    toastr.success("You have changed your passord.", "Successfully!");
                    $("#old_password").val("");
                    $("#password").val("");
                    $("#confirm_password").val("");
                }, function () {
                    toastr.error("You type your old passowrd incorrectly.", "Error!");
                });
            }
        });

    });
</script>