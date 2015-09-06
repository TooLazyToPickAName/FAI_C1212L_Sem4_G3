<%-- 
    Document   : admin_temp
    Created on : Aug 29, 2015, 12:01:09 AM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Mosaddek">
        <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <link rel="shortcut icon" href="img/favicon.html">

        <title>Administrator</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-reset.css" rel="stylesheet">

        <!--dynamic table-->
        <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
        <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />

        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

        <link rel="stylesheet" type="text/css" href="assets/bootstrap-fileupload/bootstrap-fileupload.css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-timepicker/compiled/timepicker.css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-colorpicker/css/colorpicker.css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker-bs3.css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-datetimepicker/css/datetimepicker.css" />
        <link rel="stylesheet" type="text/css" href="assets/jquery-multi-select/css/multi-select.css" />

        <!--right slidebar-->
        <link href="css/slidebars.css" rel="stylesheet">

        <!--  summernote -->
        <link href="assets/summernote/dist/summernote.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <section id="container" class="">
            <!--header start-->
            <header class="header white-bg">
                <div class="sidebar-toggle-box">
                    <div data-original-title="Toggle Navigation" data-placement="right" class="fa fa-bars tooltips"></div>
                </div>
                <!--logo start-->
                <a href="index.html" class="logo" >Help<span>Desk</span></a>
                <!--logo end-->
                <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->
                    <ul class="nav top-menu">
                        <!-- settings start -->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-tasks"></i>
                                <span class="badge bg-success">6</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 6 pending tasks</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Dashboard v1.3</div>
                                            <div class="percent">40%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Database Update</div>
                                            <div class="percent">60%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Iphone Development</div>
                                            <div class="percent">87%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 87%">
                                                <span class="sr-only">87% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Mobile App</div>
                                            <div class="percent">33%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                                                <span class="sr-only">33% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Dashboard v1.3</div>
                                            <div class="percent">45%</div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>

                                    </a>
                                </li>
                                <li class="external">
                                    <a href="#">See All Tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- settings end -->
                        <!-- inbox dropdown start-->
                        <li id="header_inbox_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-important">5</span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-red"></div>
                                <li>
                                    <p class="red">You have 5 new messages</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="img/avatar-mini.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jonathan Smith</span>
                                            <span class="time">Just now</span>
                                        </span>
                                        <span class="message">
                                            Hello, this is an example msg.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="img/avatar-mini2.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jhon Doe</span>
                                            <span class="time">10 mins</span>
                                        </span>
                                        <span class="message">
                                            Hi, Jhon Doe Bhai how are you ?
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="img/avatar-mini3.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jason Stathum</span>
                                            <span class="time">3 hrs</span>
                                        </span>
                                        <span class="message">
                                            This is awesome dashboard.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="img/avatar-mini4.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jondi Rose</span>
                                            <span class="time">Just now</span>
                                        </span>
                                        <span class="message">
                                            Hello, this is metrolab
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all messages</a>
                                </li>
                            </ul>
                        </li>
                        <!-- inbox dropdown end -->
                        <!-- notification dropdown start-->
                        <li id="header_notification_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-warning">7</span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-yellow"></div>
                                <li>
                                    <p class="yellow">You have 7 new notifications</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Server #3 overloaded.
                                        <span class="small italic">34 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                        Server #10 not respoding.
                                        <span class="small italic">1 Hours</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Database overloaded 24%.
                                        <span class="small italic">4 hrs</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-success"><i class="fa fa-plus"></i></span>
                                        New user registered.
                                        <span class="small italic">Just now</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-info"><i class="fa fa-bullhorn"></i></span>
                                        Application error.
                                        <span class="small italic">10 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all notifications</a>
                                </li>
                            </ul>
                        </li>
                        <!-- notification dropdown end -->
                    </ul>
                </div>
                <div class="top-nav ">
                    <ul class="nav pull-right top-menu">
                        <li>
                            <input type="text" class="form-control search" placeholder="Search">
                        </li>
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <img alt="" src="img/avatar1_small.jpg">
                                <span class="username">Tin Blanc</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                                <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li>
                                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
                            </ul>
                        </li>
                        <!-- user login dropdown end -->
                        <li class="sb-toggle-right">
                            <i class="fa  fa-align-right"></i>
                        </li>
                    </ul>
                </div>
            </header>
            <!--header end-->
            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">


                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-laptop"></i>
                                <span>Home</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="#">Introduce</a></li>
                                <li><a  href="#">Personal Information</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-envelope"></i>
                                <span>Complaint</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="#">Show Complaints</a></li>
                                <li><a  href="#">Manager Complaints</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-cogs"></i>
                                <span>Manager Accounts</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="#">Create Account</a></li>
                                <li><a  href="#">Show Accounts</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-bar-chart-o"></i>
                                <span>Reports</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="#">Reports by date</a></li>
                                <li><a  href="#">Monthly Report</a></li>
                                <li><a  href="#">Yearly Report</a></li>
                            </ul>
                        </li>



                        <!--multi level menu end-->

                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->
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
                                        <form class="cmxform form-horizontal tasi-form" id="commentForm" method="get" action="#">
                                            <div class="form-group ">
                                                <label for="cname" class="control-label col-md-3">User Name</label>
                                                <div class="col-lg-4">
                                                    <input type="text" placeholder="" id="f-name" class="form-control">    
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label for="cemail" class="control-label col-md-3">Password</label>
                                                <div class="col-lg-4">
                                                    <input type="text" placeholder="" id="f-name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label for="curl" class="control-label col-md-3">Full Name</label>
                                                <div class="col-lg-4">
                                                    <input type="text" placeholder="" id="f-name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label for="ccomment" class="control-label col-md-3">Department</label>
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
                                                <label for="curl" class="control-label col-md-3">Phone Number</label>
                                                <div class="col-lg-4">
                                                    <input type="text" placeholder="" id="f-name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="curl" class="control-label col-md-3">Email</label>
                                                <div class="col-lg-4">
                                                    <input type="text" placeholder="" id="f-name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-offset-3 col-md-3">
                                                    <button class="btn btn-success " type="submit">Submit</button>
                                                    <button class="btn btn-danger" type="reset">Reset</button>
                                                </div>
                                            </div>

                                    </div>
                                    </form>
                                </div>

                        </div>
                </section>
                </div>
                </div>

                <!-- page end-->
            </section>
            <!--main content end-->

            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    2015 &copy; Helpdesk by Group3.
                    <a href="#" class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                </div>
            </footer>
            <!--footer end-->
        </section>

        <!-- js placed at the end of the document so the pages load faster -->

        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
        <script type="text/javascript" language="javascript" src="assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
        <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
        <script src="js/respond.min.js" ></script>

        <!--right slidebar-->
        <script src="js/slidebars.min.js"></script>

        <!--dynamic table initialization -->
        <script src="js/dynamic_table_init.js"></script>


        <!--common script for all pages-->
        <script src="js/common-scripts.js"></script>
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
            });

        </script>
    </body>
    

    <!-- Mirrored from thevectorlab.net/flatlab/dynamic_table.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Aug 2015 03:46:26 GMT -->
</html>


