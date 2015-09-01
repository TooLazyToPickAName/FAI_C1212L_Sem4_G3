<%-- 
    Document   : create_complaint_employee
    Created on : Sep 1, 2015, 4:09:03 AM
    Author     : windluffy
--%>

<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!--page start-->

        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Create Complaint
                    </header>
                    <div class="panel-body">
                        <s:form action="createComplaint"> 
                            <div class=" form">
                                <form class="cmxform form-horizontal tasi-form" id="commentForm" method="Post" action="createComplaint">
                                    <div class="form-group ">
                                        <label for="txtTitle" class="control-label col-lg-2">Title</label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="txtTitle" name="complaint.title" minlength="10" type="text" required />
                                        </div>

                                    </div>

                                    <div class="form-group ">
                                        <label for="category" class="control-label col-lg-2">Category</label>
                                        <div class="col-lg-10">
                                            <c:forEach items="${requestScope.categories}" var="c">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="rdCategories" value="${c.id}" checked="">
                                                        ${c.title}
                                                    </label>
                                                </div> 
                                            </c:forEach>
                                        </div>
                                        <s:textfield id="hidCategory" name="complaint.categoryId" cssStyle="display:none"></s:textfield>
                                    </div>

                                    <div class="form-group">
                                        <label for="txtDepartmentName" class="control-label col-lg-2">Department</label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="txtDepartmentName" value="Department Name" disabled="disabled" />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="txtDescription" class="control-label col-lg-2">Description</label>
                                        <div class="col-lg-10">
                                            <textarea class="form-control " id="txtDescription" name="complaint.description" required></textarea>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button class="btn btn-danger" type="submit">Create</button>
                                            <button class="btn btn-default" type="button">Cancel</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </s:form>
                    </div>
                </section>
            </div>
        </div>

        <!--page end-->
    </section>
</section>
<!--main content end-->