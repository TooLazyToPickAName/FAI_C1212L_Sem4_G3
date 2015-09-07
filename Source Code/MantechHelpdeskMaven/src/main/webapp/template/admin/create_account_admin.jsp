<%-- 
    Document   : create_account_admin
    Created on : Sep 1, 2015, 6:30:58 PM
    Author     : windluffy
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
                        <b>Create Account</b>

                    </header>
                    <div class="panel-body">
                        <div class=" form">
                            <s:form cssClass="cmxform form-horizontal tasi-form" id="signupForm" method="Post" action="createAccount">
                                <div class="form-group ">
                                    <label for="username"  class="control-label col-md-3">User Name</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="username" name="user.username" type="text" />
                                    </div>
                                    <div id="iconSuccessUsername" class="col-lg-1" style="padding-left: 0px; display: none"><i style="line-height: 1.6; color: #6ED06E; font-size: 1.5em" class="fa fa-check"></i></div>
                                    <div id="iconFailUsername" class="col-lg-1" style="padding-left: 0px; display: none"><i style="line-height: 1.6; color: red; font-size: 1.5em" class="fa fa-times"></i></div>
                                </div>
                                <div class="form-group ">
                                    <label for="role" class="control-label col-md-3">Role</label>
                                    <div class="col-lg-2">
                                        <select id="ddlRole" class="form-control m-bot-none"  name="user.roleId" >
                                            <option value="1">Employee</option>
                                            <option value="2">Technical</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group " id="divDepartment">
                                    <label for="department" class="control-label col-md-3">Department</label>
                                    <div class="col-lg-4">
                                        <select class="form-control m-bot-none" name="user.departmentId">
                                            <option value="1">Education</option>
                                            <option value="2">Management Services</option>
                                            <option value="3">Learning Services</option>
                                            <option value="4">Internal Systems</option>
                                            <option value="5">Human Resources</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="password" class="control-label col-lg-3">Password</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="password" name="user.password" type="text" value="12345" />
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <label for="cname" class="control-label col-md-3">Full Name</label>
                                    <div class="col-lg-4">
                                        <input class=" form-control" id="cname" name="user.fullname" type="text"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Birthday</label>
                                    <div class="col-lg-3 col-xs-11">

                                        <div data-date-viewmode="years" data-date-format="mm-dd-yyyy" data-date="12-02-1991"  class="input-append date dpYears">
                                            <input name="dateOfBirth" type="text" value="12-02-1991" size="16" class="form-control">
                                            <span class="input-group-btn add-on">
                                                <button class="btn btn-danger" type="button"><i class="fa fa-calendar"></i></button>
                                            </span>
                                        </div>
                                        <span class="help-block"> (mm-dd-yyyy)</span>
                                    </div>


                                </div>
                                <div class="form-group">
                                    <label for="phone" class="control-label col-md-3">Phone Number</label>
                                    <div class="col-lg-4">
                                        <input name="user.phoneNumber" type="text" placeholder="" id="f-name" class="form-control" minlength="2" maxlength="20">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="control-label col-md-3">Email</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="cemail" type="email" name="user.email" required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-3 col-md-3">
                                        <button class="btn btn-danger " type="submit">Submit</button>
                                        <button class="btn btn-default" type="reset">Reset</button>
                                    </div>
                                </div>
                            </s:form>
                        </div>

                    </div>

            </div>
    </section>
    <!-- page end-->
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

<!--this page plugins-->

<script type="text/javascript" src="assets/fuelux/js/spinner.min.js"></script>
<script type="text/javascript" src="assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script type="text/javascript" src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="assets/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="assets/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script type="text/javascript" src="assets/jquery-multi-select/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="assets/jquery-multi-select/js/jquery.quicksearch.js"></script>


<!--summernote-->
<script src="assets/summernote/dist/summernote.min.js"></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>
<!--this page  script only-->
<script src="js/advanced-form-components.js"></script>

<script>

    jQuery(document).ready(function () {

        $('.summernote').summernote({
            height: 200, // set editor height

            minHeight: null, // set minimum height of editor
            maxHeight: null, // set maximum height of editor

            focus: true                 // set focus to editable area after initializing summernote
        });

        $("select#ddlRole").change(function () {
            roleId = $("select#ddlRole :selected").val();
            if (roleId == "1") {
                $("#divDepartment").show();
            } else {
                $("#divDepartment").hide();
            }
        });

        $('#username').keyup(function () {
            var username = $('#username').val();
            var success = $('#iconSuccessUsername');
            var fail = $('#iconFailUsername');
            $.get(
                "ajaxValidate",
                {typeValidation: "UsernameExist", value: username},
                function (data) {
                    var isValidated = data.isValidated;
                    if (isValidated) {
                        success.show();
                        fail.hide();
                    } else {
                        success.hide();
                        fail.show();
                    }
                    if(!username) {
                        success.hide();
                        fail.hide();
                    }
                    
                    if(username.length < 5 || username.length > 50 ) {
                        success.hide();
                        fail.show();
                    }
                }
            );
        });
    });

</script>

<!--script for this page-->
<script src="js/form-validation-script.js"></script>