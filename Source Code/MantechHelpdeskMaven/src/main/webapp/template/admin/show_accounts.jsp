<%-- 
    Document   : show_account
    Created on : Sep 7, 2015, 12:07:26 AM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <section class="panel">
            <header class="panel-heading">
                Editable Table
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">
                    <div class="clearfix">
                        <div class="btn-group">
                            <a class="btn green" href="displayCreateAccountForm">
                                Add New <i class="fa fa-plus"></i>
                            </a>
                        </div>

                    </div>
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Full Name</th>
                                <th>Date Of Birth</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Edit/Delete</th>
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
                                        <c:when test="${c.roleId == 1}">
                                            <td><span class="label label-default">${c.roleName}</span></td>
                                        </c:when>
                                        <c:otherwise>
                                            <td><span class="label label-info">${c.roleName}</span></td>
                                        </c:otherwise>
                                    </c:choose>
                                    
                                    <td>
                                        <a class="btn btn-primary btn-xs"  href="#"><i class="fa fa-pencil"></i></a>
                                        <a class="btn btn-danger btn-xs"  href="#"><i class="fa fa-trash-o "></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
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

<!-- END JAVASCRIPTS -->
<script>
    jQuery(document).ready(function () {
        EditableTable.init();

        var refreshClass = function () {
            $('.roleAccount').each(function () {
                sRole = this.innerHTML;
                switch (sRole) {
                    case "administrator":
                        $(this).addClass("label label-danger");
                        break;
                    case "technical":
                        $(this).addClass("label label-info");
                        break;
                    case "employee":
                        $(this).addClass("label label-default");
                        break;
                    default:
                        break;
                }
            });
        };
        refreshClass();
        $(".dataTables_paginate a").on("click", function () {
            refreshClass();
        });

    });
</script>

