<%-- 
    Document   : index
    Created on : Aug 18, 2015, 4:54:20 PM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from thevectorlab.net/flatlab/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Aug 2015 03:42:50 GMT -->
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.html">

    <title>Dynamic Table</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!--dynamic table-->
    <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
    <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
      <!--right slidebar-->
      <link href="css/slidebars.css" rel="stylesheet">
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

        <section id="container" >
            <!--header start-->
            <header class="header white-bg">
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                </div>
                <!--logo start-->
                <a href="index.html" class="logo">Help<span>Desk</span></a>
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
                    <!--  notification end -->
                </div>
                <div class="top-nav ">
                    <!--search & user info start-->
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
                    </ul>
                    <!--search & user info end-->
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
                                <li><a  href="boxed_page.html">Boxed Page</a></li>
                                <li><a  href="horizontal_menu.html">Horizontal Menu</a></li>
                                <li><a  href="header-color.html">Different Color Top bar</a></li>
                                <li><a  href="mega_menu.html">Mega Menu</a></li>
                                <li><a  href="language_switch_bar.html">Language Switch Bar</a></li>
                                <li><a  href="email_template.html" target="_blank">Email Template</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-envelope"></i>
                                <span>Complaint</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="inbox.html">Inbox</a></li>
                                <li><a  href="inbox_details.html">Inbox Details</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-bar-chart-o"></i>
                                <span>Reports</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="morris.html">Morris</a></li>
                                <li><a  href="chartjs.html">Chartjs</a></li>
                                <li><a  href="flot_chart.html">Flot Charts</a></li>
                                <li><a  href="xchart.html">xChart</a></li>
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
                                    Show Complaint
                                </header>
                                <div class="panel-body">
                                    <section id="unseen">
                                        <table class="table table-bordered table-striped table-condensed">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Title</th>
                                                    <th class="numeric">Category</th>
                                                    <th class="numeric">Date Register</th>
                                                    <th class="numeric">Date Close</th>
                                                    <th class="numeric">Department</th>
                                                    <th class="numeric">Time Taken</th>
                                                    <th class="numeric">Status</th>
                                                    <th class="numeric">Priority</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${requestScope.complaints}" var="c" >
                                                    <tr>
                                                        <td>${c.id}</td>
                                                        <td>${c.title}</td>
                                                        <td class="numeric"></td>
                                                        <td class="numeric">-0.01</td>
                                                        <td class="numeric">-0.36%</td>
                                                        <td class="numeric">$1.39</td>
                                                        <td class="numeric">$1.39</td>
                                                        <td class="numeric">$1.38</td>
                                                        <td class="numeric">9,395</td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </section>
                                </div>
                            </section>
                        </div>
                    </div>
                    
                    <div class="row">
                <div class="col-sm-12">
              <section class="panel">
              <header class="panel-heading">
                  DataTables hidden row details example
             <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>
                <a href="javascript:;" class="fa fa-times"></a>
             </span>
              </header>
              <div class="panel-body">
              <div class="adv-table">
              <table class="display table table-bordered" id="hidden-table-info">
              <thead>
              <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th class="hidden-phone">Platform(s)</th>
                  <th class="hidden-phone">Engine version</th>
                  <th class="hidden-phone">CSS grade</th>
              </tr>
              </thead>
              <tbody>
              <tr class="gradeX">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 4.0</td>
                  <td class="hidden-phone">Win 95+</td>
                  <td class="center hidden-phone">4</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 5.0</td>
                  <td class="hidden-phone">Win 95+</td>
                  <td class="center hidden-phone">5</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 5.5</td>
                  <td class="hidden-phone">Win 95+</td>
                  <td class="center hidden-phone">5.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet
                      Explorer 6</td>
                  <td class="hidden-phone">Win 98+</td>
                  <td class="center hidden-phone">6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>Internet Explorer 7</td>
                  <td class="hidden-phone">Win XP SP2+</td>
                  <td class="center hidden-phone">7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Trident</td>
                  <td>AOL browser (AOL desktop)</td>
                  <td class="hidden-phone">Win XP</td>
                  <td class="center hidden-phone">6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 1.0</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 1.5</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 2.0</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Firefox 3.0</td>
                  <td class="hidden-phone">Win 2k+ / OSX.3+</td>
                  <td class="center hidden-phone">1.9</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Camino 1.0</td>
                  <td class="hidden-phone">OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Camino 1.5</td>
                  <td class="hidden-phone">OSX.3+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape 7.2</td>
                  <td class="hidden-phone">Win 95+ / Mac OS 8.6-9.2</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape Browser 8</td>
                  <td class="hidden-phone">Win 98SE+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Netscape Navigator 9</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.1</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.2</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.2</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.3</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.4</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.4</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.5</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.6</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">1.6</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.7</td>
                  <td class="hidden-phone">Win 98+ / OSX.1+</td>
                  <td class="center hidden-phone">1.7</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Mozilla 1.8</td>
                  <td class="hidden-phone">Win 98+ / OSX.1+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Seamonkey 1.1</td>
                  <td class="hidden-phone">Win 98+ / OSX.2+</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Gecko</td>
                  <td>Epiphany 2.20</td>
                  <td class="hidden-phone">Gnome</td>
                  <td class="center hidden-phone">1.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 1.2</td>
                  <td class="hidden-phone">OSX.3</td>
                  <td class="center hidden-phone">125.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 1.3</td>
                  <td class="hidden-phone">OSX.3</td>
                  <td class="center hidden-phone">312.8</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 2.0</td>
                  <td class="hidden-phone">OSX.4+</td>
                  <td class="center hidden-phone">419.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>Safari 3.0</td>
                  <td class="hidden-phone">OSX.4+</td>
                  <td class="center hidden-phone">522.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>OmniWeb 5.5</td>
                  <td class="hidden-phone">OSX.4+</td>
                  <td class="center hidden-phone">420</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>iPod Touch / iPhone</td>
                  <td class="hidden-phone">iPod</td>
                  <td class="center hidden-phone">420.1</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Webkit</td>
                  <td>S60</td>
                  <td class="hidden-phone">S60</td>
                  <td class="center hidden-phone">413</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 7.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.1+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 7.5</td>
                  <td class="hidden-phone">Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.5</td>
                  <td class="hidden-phone">Win 95+ / OSX.2+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.0</td>
                  <td class="hidden-phone">Win 95+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.2</td>
                  <td class="hidden-phone">Win 88+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.5</td>
                  <td class="hidden-phone">Win 88+ / OSX.3+</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera for Wii</td>
                  <td class="hidden-phone">Wii</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Nokia N800</td>
                  <td class="hidden-phone">N800</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>Presto</td>
                  <td>Nintendo DS browser</td>
                  <td class="hidden-phone">Nintendo DS</td>
                  <td class="center hidden-phone">8.5</td>
                  <td class="center hidden-phone">C/A<sup>1</sup></td>
              </tr>
              <tr class="gradeC">
                  <td>KHTML</td>
                  <td>Konqureror 3.1</td>
                  <td class="hidden-phone">KDE 3.1</td>
                  <td class="center hidden-phone">3.1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>KHTML</td>
                  <td>Konqureror 3.3</td>
                  <td class="hidden-phone">KDE 3.3</td>
                  <td class="center hidden-phone">3.3</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeA">
                  <td>KHTML</td>
                  <td>Konqureror 3.5</td>
                  <td class="hidden-phone">KDE 3.5</td>
                  <td class="center hidden-phone">3.5</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeX">
                  <td>Tasman</td>
                  <td>Internet Explorer 4.5</td>
                  <td class="hidden-phone">Mac OS 8-9</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Tasman</td>
                  <td>Internet Explorer 5.1</td>
                  <td class="hidden-phone">Mac OS 7.6-9</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeC">
                  <td>Tasman</td>
                  <td>Internet Explorer 5.2</td>
                  <td class="hidden-phone">Mac OS 8-X</td>
                  <td class="center hidden-phone">1</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Misc</td>
                  <td>NetFront 3.1</td>
                  <td>Embedded devices</td>
                  <td class="center">-</td>
                  <td class="center">C</td>
              </tr>
              <tr class="gradeA">
                  <td>Misc</td>
                  <td>NetFront 3.4</td>
                  <td class="hidden-phone">Embedded devices</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">A</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Dillo 0.8</td>
                  <td class="hidden-phone">Embedded devices</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Links</td>
                  <td class="hidden-phone">Text only</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeX">
                  <td>Misc</td>
                  <td>Lynx</td>
                  <td class="hidden-phone">Text only</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">X</td>
              </tr>
              <tr class="gradeC">
                  <td>Misc</td>
                  <td>IE Mobile</td>
                  <td class="hidden-phone">Windows Mobile 6</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeC">
                  <td>Misc</td>
                  <td>PSP browser</td>
                  <td class="hidden-phone">PSP</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">C</td>
              </tr>
              <tr class="gradeU">
                  <td>Other browsers</td>
                  <td>All others</td>
                  <td class="hidden-phone">-</td>
                  <td class="center hidden-phone">-</td>
                  <td class="center hidden-phone">U</td>
              </tr>
              </tbody>
              </table>

              </div>
              </div>
                    </div>
                    <!-- page end-->
                </section>
                <!--main content end-->

                <!-- Right Slidebar start -->
                <div class="sb-slidebar sb-right sb-style-overlay">
                    <h5 class="side-title">Online Customers</h5>
                    <ul class="quick-chat-list">
                        <li class="online">
                            <div class="media">
                                <a href="#" class="pull-left media-thumb">
                                    <img alt="" src="img/chat-avatar2.jpg" class="media-object">
                                </a>
                                <div class="media-body">
                                    <strong>John Doe</strong>
                                    <small>Dream Land, AU</small>
                                </div>
                            </div><!-- media -->
                        </li>
                        <li class="online">
                            <div class="media">
                                <a href="#" class="pull-left media-thumb">
                                    <img alt="" src="img/chat-avatar.jpg" class="media-object">
                                </a>
                                <div class="media-body">
                                    <div class="media-status">
                                        <span class=" badge bg-important">3</span>
                                    </div>
                                    <strong>Jonathan Smith</strong>
                                    <small>United States</small>
                                </div>
                            </div><!-- media -->
                        </li>

                        <li class="online">
                            <div class="media">
                                <a href="#" class="pull-left media-thumb">
                                    <img alt="" src="img/pro-ac-1.png" class="media-object">
                                </a>
                                <div class="media-body">
                                    <div class="media-status">
                                        <span class=" badge bg-success">5</span>
                                    </div>
                                    <strong>Jane Doe</strong>
                                    <small>ABC, USA</small>
                                </div>
                            </div><!-- media -->
                        </li>
                        <li class="online">
                            <div class="media">
                                <a href="#" class="pull-left media-thumb">
                                    <img alt="" src="img/avatar1.jpg" class="media-object">
                                </a>
                                <div class="media-body">
                                    <strong>Anjelina Joli</strong>
                                    <small>Fockland, UK</small>
                                </div>
                            </div><!-- media -->
                        </li>
                        <li class="online">
                            <div class="media">
                                <a href="#" class="pull-left media-thumb">
                                    <img alt="" src="img/mail-avatar.jpg" class="media-object">
                                </a>
                                <div class="media-body">
                                    <div class="media-status">
                                        <span class=" badge bg-warning">7</span>
                                    </div>
                                    <strong>Mr Tasi</strong>
                                    <small>Dream Land, USA</small>
                                </div>
                            </div><!-- media -->
                        </li>
                    </ul>
                    <h5 class="side-title"> pending Task</h5>
                    <ul class="p-task tasks-bar">
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Dashboard v1.3</div>
                                    <div class="percent">40%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
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
                                    <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-warning">
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
                                    <div style="width: 87%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-info">
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
                                    <div style="width: 33%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-danger">
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
                                    <div style="width: 45%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="45" role="progressbar" class="progress-bar">
                                        <span class="sr-only">45% Complete</span>
                                    </div>
                                </div>

                            </a>
                        </li>
                        <li class="external">
                            <a href="#">See All Tasks</a>
                        </li>
                    </ul>
                </div>
                <!-- Right Slidebar end -->

                <!--footer start-->
                <footer class="site-footer">
                    <div class="text-center">
                        2013 &copy; Helpdesk By Group3.
                        <a href="#" class="go-top">
                            <i class="fa fa-angle-up"></i>
                        </a>
                    </div>
                </footer>
                <!--footer end-->
            </section>

            <!-- js placed at the end of the document so the pages load faster -->
            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
            <script src="js/jquery.scrollTo.min.js"></script>
            <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
            <script src="js/jquery.sparkline.js" type="text/javascript"></script>
            <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
            <script src="js/owl.carousel.js" ></script>
            <script src="js/jquery.customSelect.min.js" ></script>
            <script src="js/respond.min.js" ></script>

            <!--right slidebar-->
            <script src="js/slidebars.min.js"></script>

            <!--dynamic table initialization -->
            <script src="js/dynamic_table_init.js"></script>

            <!--common script for all pages-->
            <script src="js/common-scripts.js"></script>

            <!--script for this page-->
            <script src="js/sparkline-chart.js"></script>
            <script src="js/easy-pie-chart.js"></script>
            <script src="js/count.js"></script>

            <script>

                //owl carousel

                $(document).ready(function () {
                    $("#owl-demo").owlCarousel({
                        navigation: true,
                        slideSpeed: 300,
                        paginationSpeed: 400,
                        singleItem: true,
                        autoPlay: true

                    });
                });

                //custom select box

                $(function () {
                    $('select.styled').customSelect();
                });

            </script>

    </body>

    <!-- Mirrored from thevectorlab.net/flatlab/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Aug 2015 03:43:32 GMT -->
</html>


