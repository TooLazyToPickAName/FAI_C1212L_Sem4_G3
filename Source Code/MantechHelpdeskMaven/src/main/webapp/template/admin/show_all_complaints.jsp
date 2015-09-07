<%-- 
    Document   : show_all_complaints
    Created on : Sep 6, 2015, 11:20:54 PM
    Author     : tinblanc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Show Complaints
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
                                        <td class="center hidden-phone"><span class="statusComplaint">${c.statusName}</span></td>
                                        <td class="center hidden-phone"><span class="priorityComplaint">${c.priorityName}</span></td>
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
