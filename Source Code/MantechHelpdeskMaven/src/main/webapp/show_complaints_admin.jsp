<%-- 
    Document   : show_complaints_admin
    Created on : Sep 1, 2015, 2:09:49 AM
    Author     : windluffy
--%>

<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Show Complaints
                        <!--             <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                     </span>-->
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
