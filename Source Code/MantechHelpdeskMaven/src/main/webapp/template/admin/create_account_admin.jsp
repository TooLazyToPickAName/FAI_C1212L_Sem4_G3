<%-- 
    Document   : create_account_admin
    Created on : Sep 1, 2015, 6:30:58 PM
    Author     : windluffy
--%>

<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <b>Create Account</b>

                    </header>
                    <div class="panel-body">
                        <div class=" form">
                            <form class="cmxform form-horizontal tasi-form" id="signupForm" method="get" action="#">
                                <div class="form-group ">
                                    <label for="username"  class="control-label col-md-3">User Name</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="username" name="username" type="text" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="password" class="control-label col-lg-3">Password</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="password" name="password" type="password" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="confirm_password" class="control-label col-lg-3">Confirm Password</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="confirm_password" name="confirm_password" type="password" />
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <label for="cname" class="control-label col-md-3">Full Name</label>
                                    <div class="col-lg-4">
                                        <input class=" form-control" id="cname" name="name" minlength="2" type="text" required/>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="department" class="control-label col-md-3">Department</label>
                                    <div class="col-lg-4">
                                        <select class="form-control m-bot-none">
                                            <option>Education</option>
                                            <option>Management Services</option>
                                            <option>Learning Services</option>
                                            <option>Internal Systems</option>
                                            <option>Human Resources</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Birthday</label>
                                    <div class="col-lg-3 col-xs-11">

                                        <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="12-02-2012"  class="input-append date dpYears">
                                            <input type="text" readonly="" value="12-02-2012" size="16" class="form-control">
                                            <span class="input-group-btn add-on">
                                                <button class="btn btn-danger" type="button"><i class="fa fa-calendar"></i></button>
                                            </span>
                                        </div>
                                        <span class="help-block">Select date</span>
                                    </div>


                                </div>
                                <div class="form-group">
                                    <label for="phone" class="control-label col-md-3">Phone Number</label>
                                    <div class="col-lg-4">
                                        <input type="text" placeholder="" id="f-name" class="form-control" minlength="2" required >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="control-label col-md-3">Email</label>
                                    <div class="col-lg-4">
                                        <input class="form-control " id="cemail" type="email" name="email" required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-3 col-md-3">
                                        <button class="btn btn-danger " type="submit">Submit</button>
                                        <button class="btn btn-default" type="reset">Reset</button>
                                    </div>
                                </div>

                        </div>
                        </form>
                    </div>

            </div>
    </section>
    <!-- page end-->
</section>
<!--main content end-->