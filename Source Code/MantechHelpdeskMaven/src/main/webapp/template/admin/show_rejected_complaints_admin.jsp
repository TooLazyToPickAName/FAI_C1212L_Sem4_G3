<%-- 
    Document   : show_rejected_complaints_admin
    Created on : Sep 7, 2015, 12:44:59 PM
    Author     : tinblanc
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Rejected Complaints
                    </header>
                    <div class="panel-body">
                        <div class="adv-table">
                            <table class="display table table-bordered" id="hidden-table-info">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Title</th>
                                        <th class="hidden-phone">Category</th>
                                        <th class="hidden-phone">Status</th>
                                        <th class="hidden-phone">Priority</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.complaints}" var="c" >
                                        <tr class="gradeX">
                                            <td>${c.id}</td>
                                            <td>${c.title}</td>
                                            <td class="hidden-phone">${c.categoryName}</td>
                                            <c:choose>
                                                <c:when test="${c.status == 0}">
                                                    <td><span class="label label-warning">${c.statusName}</span></td>
                                                    </c:when>
                                                    <c:when test="${c.status == 1}">
                                                    <td><span class="label label-danger">${c.statusName}</span></td>
                                                    </c:when>
                                                    <c:when test="${c.status== 2}">
                                                    <td><span class="label label-primary">${c.statusName}</span></td>
                                                    </c:when>
                                                    <c:when test="${c.status== 3}">
                                                    <td><span class="label label-success">${c.statusName}</span></td>
                                                    </c:when>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${c.priority==0}">
                                                    <td><span class="label label-danger">${c.priorityName}</span></td>
                                                    </c:when>
                                                    <c:when test="${c.priority==1}">
                                                    <td><span class="label label-warning">${c.priorityName}</span></td>
                                                    </c:when>
                                                    <c:when test="${c.priority==2}">
                                                    <td><span class="label label-success">${c.priorityName}</span></td>
                                                    </c:when>
                                                </c:choose>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

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

<!--My Script -->
<script src="js/myscript.js"></script>
