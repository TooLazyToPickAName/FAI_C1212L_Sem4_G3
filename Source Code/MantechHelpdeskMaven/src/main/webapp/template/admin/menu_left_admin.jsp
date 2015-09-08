<%-- 
    Document   : menu_left
    Created on : Sep 1, 2015, 1:39:12 AM
    Author     : windluffy
--%>

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
                    <li><a  href="showFormChangePasswordAdmin">Change Password</a></li>
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