<%-- 
    Document   : show_technical
    Created on : Sep 7, 2015, 10:59:00 AM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->

        <div class="directory-info-row">
            <div class="row">
                <c:forEach items="${requestScope.ListUser}" var="c" >
                    <div class="col-md-6 col-sm-6">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="thumb media-object" src="${c.imgAvatar}" alt="">
                                    </a>
                                    <div class="media-body">
                                        <h4>${c.fullname}<span class="text-muted small"> - Technical</span></h4>
                                        <ul class="social-links">
                                            <li><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                            <li><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                            <li><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
                                            <li><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="#" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
                                        </ul>
                                        <address>
                                            <strong>HelpDesk, Inc.</strong><br>
                                            ${c.username}, ${c.dateOfBirth}<br>
                                            Dream land, VietNam <br>
                                            <abbr title="Phone">P:</abbr> ${c.phoneNumber}
                                        </address>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- page end-->
    </section>
</section>
<!--main content end-->

<!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/slidebars.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/respond.min.js" ></script>

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>