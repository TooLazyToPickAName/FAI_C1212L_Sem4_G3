<%-- 
    Document   : information_admin
    Created on : Sep 1, 2015, 6:18:41 PM
    Author     : windluffy
--%>

<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <div class="row">
            <aside class="profile-nav col-lg-3">
                <section class="panel">
                    <div class="user-heading round">
                        <a href="#">
                            <img src="img/profile-avatar.jpg" alt="">
                        </a>
                        <h1>${sessionScope.user.fullname}</h1>
                        <p>${sessionScope.user.email}</p>
                    </div>

                    <ul class="nav nav-pills nav-stacked">
                        <li class="active"><a href="#"> <i class="fa fa-user"></i> Profile</a></li>
                        <li><a href="#"> <i class="fa fa-calendar"></i> Recent Activity <span class="label label-danger pull-right r-activity">9</span></a></li>
                    </ul>

                </section>
            </aside>
            <aside class="profile-info col-lg-9">

                <section class="panel">
                    <div class="bio-graph-heading">
                        Sow a thought, and you reap an act. Sow an act, and you reap a habit. Sow a habit, and you reap a character. Sow a character, and you reap a destiny.
                    </div>
                    <div class="panel-body bio-graph-info">
                        <h1>Bio Graph</h1>
                        <div class="row">
                            <div class="bio-row">
                                <p><span>Full Name </span>: ${sessionScope.user.fullname}</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Last Name </span>: Smith</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Country </span>: VietNam</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Birthday</span>: ${sessionScope.user.dateOfBirth}</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Occupation </span>: UI Designer</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Email </span>: ${sessionScope.user.email}</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Mobile </span>: (12) 03 4567890</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Phone </span>: ${sessionScope.user.phoneNumber}</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="bio-chart">
                                        <input class="knob" data-width="100" data-height="100" data-displayPrevious=true  data-thickness=".2" value="35" data-fgColor="#e06b7d" data-bgColor="#e8e8e8">
                                    </div>
                                    <div class="bio-desk">
                                        <h4 class="red">Envato Website</h4>
                                        <p>Started : 15 July</p>
                                        <p>Deadline : 15 August</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="bio-chart">
                                        <input class="knob" data-width="100" data-height="100" data-displayPrevious=true  data-thickness=".2" value="63" data-fgColor="#4CC5CD" data-bgColor="#e8e8e8">
                                    </div>
                                    <div class="bio-desk">
                                        <h4 class="terques">ThemeForest CMS </h4>
                                        <p>Started : 15 July</p>
                                        <p>Deadline : 15 August</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="bio-chart">
                                        <input class="knob" data-width="100" data-height="100" data-displayPrevious=true  data-thickness=".2" value="75" data-fgColor="#96be4b" data-bgColor="#e8e8e8">
                                    </div>
                                    <div class="bio-desk">
                                        <h4 class="green">VectorLab Portfolio</h4>
                                        <p>Started : 15 July</p>
                                        <p>Deadline : 15 August</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="bio-chart">
                                        <input class="knob" data-width="100" data-height="100" data-displayPrevious=true  data-thickness=".2" value="50" data-fgColor="#cba4db" data-bgColor="#e8e8e8">
                                    </div>
                                    <div class="bio-desk">
                                        <h4 class="purple">Adobe Muse Template</h4>
                                        <p>Started : 15 July</p>
                                        <p>Deadline : 15 August</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </aside>
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
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="assets/jquery-knob/js/jquery.knob.js"></script>
<script src="js/respond.min.js" ></script>

<!--right slidebar-->
<script src="js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<script>

    //knob
    $(".knob").knob();

</script>