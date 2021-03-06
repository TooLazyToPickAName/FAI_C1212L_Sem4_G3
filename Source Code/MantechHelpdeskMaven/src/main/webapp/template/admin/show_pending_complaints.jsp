<%-- 
    Document   : manager_complaints
    Created on : Aug 31, 2015, 11:36:38 PM
    Author     : tinblanc
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/struts-tags" prefix="s" %> 
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <link rel="shortcut icon" href="img/favicon.html">

        <title>Administrator</title>

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

        <!--toastr-->
        <link href="assets/toastr-master/toastr.css" rel="stylesheet" type="text/css" />

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
                <a href="indexAdmin" class="logo" >Admin<span>istrator</span></a>
                <!--logo end-->
                <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->
                    <ul class="nav top-menu">

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
                                            Hello, this is Helpdesk
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all messages</a>
                                </li>
                            </ul>
                        </li>
                        <!-- inbox dropdown end -->

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
                                <img alt="" width="30" height="30" src="${sessionScope.user.imgAvatar}">
                                <span class="username">${sessionScope.user.fullname}</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li><a href="showAdminInformation"><i class=" fa fa-suitcase"></i>Profile</a></li>
                                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                                <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li>
                                <li><a href="login"><i class="fa fa-key"></i> Log Out</a></li>
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

                        <li>
                            <a  href="indexAdmin">
                                <i class="fa fa-laptop"></i>
                                <span>Home</span>
                            </a>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class="fa fa-user"></i>
                                <span>Information</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="showAdminInformation">Personal Information</a></li>
                                <li><a  href="changePasswordAdmin">Change Password</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-envelope"></i>
                                <span>Complaint</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="showPendingComplaints">Manager</a></li>
                                <li><a  href="showAllComplaints">Show All Complaints</a></li>
                                <li><a  href="showProcessingComplaintsAdmin">Processing Complaints</a></li>
                                <li><a  href="showRejectedComplaintsAdmin">Rejected Complaints</a></li>
                                <li><a  href="showClosedComplaintsAdmin">Closed Complaints</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" >
                                <i class=" fa fa-cogs"></i>
                                <span>Accounts</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="displayCreateAccountForm">Create Account</a></li>
                                <li><a  href="showTechnical">Show Technical</a></li>
                                <li><a  href="showAccounts">Manager Accounts</a></li>
                            </ul>
                        </li>

                        <li>
                            <a  href="showReportsAdmin">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Reports</span>
                            </a>
                        </li>

                        <!--            <li class="sub-menu">
                                        <a href="javascript:;" >
                                            <i class=" fa fa-bar-chart-o"></i>
                                            <span>Reports</span>
                                        </a>
                                        <ul class="sub">
                                            <li><a  href="#">Reports by date</a></li>
                                            <li><a  href="#">Monthly Report</a></li>
                                            <li><a  href="#">Yearly Report</a></li>
                                        </ul>
                                    </li>-->



                        <!--multi level menu end-->

                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper site-min-height">
                    <!-- page start-->
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Pending Complaints
                                </header>
                                <table class="table table-striped table-advance table-hover">
                                    <thead>
                                        <tr>
                                            <th> ID</th>
                                            <th class="hidden-phone"> Title </th>
                                            <th> Description</th>
                                            <th class="hidden-phone"> Category </th>
                                            <th><i class=" fa fa-edit"></i> Status</th>
                                            <th> Priority </th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.complaints}" var="c" >
                                            <tr>
                                                <td>${c.id}</td>
                                                <td>${c.title}</td>
                                                <td>${c.description}</td>
                                                <td>${c.categoryName}</td>
                                                <td class="center hidden-phone"><span class="statusComplaint">${c.statusName}</span></td>
                                                <td class="center hidden-phone"><span class="priorityComplaint">${c.priorityName}</span></td>

                                                <td>
                                                    <a data-toggle="modal" data-priority="${c.priority}" data-complaintid="${c.id}" data-complainttext="${c.id} (${c.title})" href="#myModal" class="btn btn-primary btn-xs"><i class="fa fa-cogs"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </section>
                        </div>
                    </div>

                    <!-- page end-->
                </section>
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

        <form>
            <!--Modal--> 
            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Assign & Set Priority Pending Complaint</h4>
                        </div>
                        <div class="modal-body">
                            <label id="lblComplaint" for="sumaryComplaintInfo" style="font-weight: 600">Complaint ID: </label>
                            <span id="spanComplaintID" style="font-weight: 600">1 (I have a problem with my computer)</span>
                            <p></p>
                            <p>Technical:</p>
                            <div id="searchTechnicals">
                                <ul class="ul-wrapper">
                                    <ul class="ul-holder" data-bind="foreach: $root.pickedTechnicals ">
                                        <li class="acfb-data"><span data-bind="text: username"></span> <i class="fa fa-times btnDeleteTechnicals" data-bind="click: $root.deleteTechnical"></i></li>
                                    </ul>
                                    <input id="txtSearchTechnical" type="text" placeholder="Search technicals by fullname, email, ..." data-bind="value: $root.keyword, event:{ focus: showFirstResultBox, keyup: searchTheKeyword} " />
                                </ul>
                                <div id="searchResult" data-bind="foreach: $root.resultSearchTechnicals ">
                                    <a href="#" class="technical-item" data-bind="click: $root.pickATechnical">
                                        <img src="${pageContext.request.contextPath}/img/avatar.png" />
                                        <span class="technical-fullname" data-bind="text: fullname"></span>
                                        <span class="technical-username" data-bind="text: username"></span>
                                        <span class="technical-number-progressing" data-bind="text: numberProgressing + ' progressing'"></span>
                                    </a>
                                </div>
                            </div>
                            <p>Priority:</p>
                            <select id="ddlPriority" class="form-control input-sm m-bot15" data-bind="options: arrPriority, optionsText: 'priorityName', optionsValue: 'value', value: priority()">
                                
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-success" type="button" data-bind="click: $root.doSubmit">Submit</button>
                            <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--modal-->
        </form>
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

        <!--KnockoutJs -->
        <script src="js/knockout-2.2.0.js"></script>

        <!--My Script -->
        <script src="js/myscript.js"></script>

        <!--toastr-->
        <script src="assets/toastr-master/toastr.js"></script>

        <script type="text/javascript">
            var vmTechnicals = new TechnicalsViewModel()
            ko.applyBindings(vmTechnicals, document.getElementById("myModal"));
        </script>
    </body>

    <!-- Mirrored from thevectorlab.net/flatlab/dynamic_table.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Aug 2015 03:46:26 GMT -->
</html>



