<%-- 
    Document   : home_admin
    Created on : Sep 1, 2015, 2:46:20 AM
    Author     : windluffy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <div class="row state-overview">
            <div class="col-lg-3 col-sm-6">
                <section class="panel">
                    <a href="showPendingComplaints">
                        <div class="symbol orangle">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                    </a>
                    <div class="value">
                        <h1 class="count">
                            0
                        </h1>
                        <p>Pedding</p>
                    </div>
                </section>
            </div>
            <div class="col-lg-3 col-sm-6">
                <section class="panel">
                    <a href="showProcessingComplaintsAdmin">
                        <div class="symbol red">
                            <i class="fa fa-clock-o"></i>
                        </div>
                    </a>
                    <div class="value">
                        <h1 class=" count2">
                            0
                        </h1>
                        <p>Processing</p>
                    </div>
                </section>
            </div>
            <div class="col-lg-3 col-sm-6">
                <section class="panel">
                    <a href="showRejectedComplaintsAdmin">
                        <div class="symbol blue">
                            <i class="fa fa-cog"></i>
                        </div>
                    </a>
                    <div class="value">
                        <h1 class=" count3">
                            0
                        </h1>
                        <p>Rejected</p>
                    </div>
                </section>
            </div>

            <div class="col-lg-3 col-sm-6">
                <section class="panel">
                    <a href="showClosedComplaintsAdmin">
                        <div class="symbol green">
                            <i class="fa fa-check"></i>
                        </div>
                    </a>
                    <div class="value">
                        <h1 class=" count4">
                            0
                        </h1>
                        <p>Closed</p>
                    </div>
                </section>
            </div>


        </div>

        <!-- show accounts start-->
        <section class="panel">
            <header class="panel-heading">
                Show All Accounts
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">

                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Full Name</th>
                                <th>Date Of Birth</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Edit/Ban</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.listUser}" var="c" >
                                <tr class="">
                                    <td>${c.username}</td>
                                    <td>${c.fullname}</td>
                                    <td>${c.dateOfBirth}</td>
                                    <td class="center">${c.email}</td>
                                    <c:choose> 
                                        <c:when test="${c.roleId == 0}">
                                            <td><span class="label label-danger">${c.roleName}</span></td>
                                            </c:when>
                                            <c:when test="${c.roleId == 2}">
                                            <td><span class="label label-default">${c.roleName}</span></td>
                                            </c:when>
                                            <c:otherwise>
                                            <td><span class="label label-info">${c.roleName}</span></td>
                                            </c:otherwise>
                                        </c:choose>

                                    <td>
                                        <a class="btn btn-info btn-xs"  href="#"><i class="fa fa-pencil"></i></a>
                                        <a class="btn btn-danger btn-xs"  href="#"><i class="fa fa-ban "></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- show accounts end-->


        <!-- page end-->
    </section>
</section>
<!--main content end-->


<!-- js placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>


<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
<script src="js/respond.min.js" ></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<!--script for this page only-->
<script src="js/editable-table.js"></script>

<!--script for this page-->
<script src="js/count.js"></script>

<!--myscript-->
<script src="js/myscript.js"></script>

<!--knockout-->
<script src="js/knockout-2.2.0.js"></script>

<script>
    jQuery(document).ready(function () {
        EditableTable.init();
        var vmReports = new SummaryComplaintReportsViewModel();
        vmReports.init();
    });
</script>



<!--index admin end-->