<%-- 
    Document   : home_technical
    Created on : Sep 7, 2015, 2:33:44 AM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->

        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Processing Complaints
                    </header>
                    <table class="table table-striped table-advance table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th><i class="fa fa-bullhorn"></i> Title</th>
                                <th class="hidden-phone"><i class="fa fa-question-circle"></i> Description</th>
                                <th><i class="fa fa-bookmark"></i> Category</th>
                                <th><i class=" fa fa-edit"></i> Priority</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.complaints}" var="c" >
                                <tr>
                                    <td>${c.id}</td>
                                    <td><a href="#">${c.title}</a></td>
                                    <td class="hidden-phone">${c.description}</td>
                                    <td>${c.categoryName}</td>
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
                                    <td>
                                        <button class="btn btn-success btn-xs" data-complaintId="${c.id}" data-toggle="modal" data-target="#modalConfirmClose"><i class="fa fa-check"> Success</i></button>
                                        <button class="btn btn-danger btn-xs" data-complaintId="${c.id}" data-toggle="modal" data-target="#modalConfirmReject"><i class="fa fa-times "> Reject</i></button>
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
<!-- Modal -->
<div class="modal fade " id="modalConfirmClose" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Close Complaint Comfirm!</h4>
            </div>
            <div class="modal-body">

                Do you sure close this complaint?

            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" type="button" id="btnConfirm">Confirm</button>
                <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade " id="modalConfirmReject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Reject Complaint Comfirm!</h4>
            </div>
            <div class="modal-body">

                <!--                Do you sure close this complaint?-->
                <form class="cmxform form-horizontal tasi-form">
                    <div class="form-group ">
                        <p class="col-lg-12">Notes:</p>
                        <div class="col-lg-12">
                            <textarea class="form-control " id="txtNotes" maxlength="500" required></textarea>
                        </div>

                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" type="button" id="btnReject">Reject</button>
                <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->

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

<!-- js placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="assets/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="js/jquery.pulsate.min.js"></script>

<!--script for this page only-->
<script src="js/gritter.js" type="text/javascript"></script>
<script src="js/pulstate.js" type="text/javascript"></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--dynamic table initialization -->
<script src="js/dynamic_table_init.js"></script>


<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<!--toastr-->
<script src="assets/toastr-master/toastr.js"></script>

<!--My Script -->
<script src="js/myscript.js"></script>

