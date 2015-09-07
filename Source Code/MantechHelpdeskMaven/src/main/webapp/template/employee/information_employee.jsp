<%-- 
    Document   : information_employee
    Created on : Sep 6, 2015, 8:14:15 PM
    Author     : tinblanc
--%>

<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Personal Information
                    </header>
                    <div class="panel-body">
                        <div class=" form">
                            <form class="cmxform form-horizontal tasi-form" id="commentForm" method="get" action="#">
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Full Name</label>
                                    <div class="col-lg-10">
                                        <label for="cname" class="control-label col-lg-4">${sessionScope.user.fullname}</label>    
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Birthday</label>
                                    <div class="col-lg-10">
                                        <label for="cname" class="control-label col-lg-2">${sessionScope.user.dateOfBirth}</label>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="curl" class="control-label col-lg-2">Phone Number</label>
                                    <div class="col-lg-10">
                                        <label for="cname" class="control-label col-lg-2">${sessionScope.user.phoneNumber}</label>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="ccomment" class="control-label col-lg-2">Email</label>
                                    <div class="col-lg-10">
                                        <label for="cname" class="control-label col-lg-2">${sessionScope.user.email}</label>
                                    </div>
                                </div>
                                <div class="form-group">

                                </div>
                            </form>
                        </div>

                    </div>
                </section>
            </div>
        </div>

        <!-- page end-->
    </section>
</section>
<!--main content end-->


<!--index admin--> 
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



<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<!--script for this page-->
<script src="js/sparkline-chart.js"></script>
<script src="js/easy-pie-chart.js"></script>
<script src="js/count.js"></script>
