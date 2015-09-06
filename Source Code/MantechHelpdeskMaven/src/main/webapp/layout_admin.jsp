<%-- 
    Document   : layout_admin
    Created on : Sep 1, 2015, 1:12:06 AM
    Author     : windluffy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/favicon.html">
        <title>
            <tiles:getAsString name="title"></tiles:getAsString>
            </title>


            <!-- Bootstrap core CSS -->
            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/bootstrap-reset.css" rel="stylesheet">

            <!--dynamic table-->
            <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
            <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
            <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
            <!-- Custom styles for this template -->
            <link href="css/style.css" rel="stylesheet">
            <link href="css/style-responsive.css" rel="stylesheet" />



            <!--Bootstrap core CSS--> 
            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/bootstrap-reset.css" rel="stylesheet">


            <!--dynamic table-->
            <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
            <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
            <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />

            <!--summernote--> 
            <link href="assets/summernote/dist/summernote.css" rel="stylesheet">

            <!--Custom styles for this template--> 
            <link href="css/style.css" rel="stylesheet">
            <link href="css/style-responsive.css" rel="stylesheet" />

            <!--right slidebar-->
            <link href="css/slidebars.css" rel="stylesheet">

            <!--external css-->
            <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

            <link rel="stylesheet" type="text/css" href="assets/bootstrap-fileupload/bootstrap-fileupload.css" />
            <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
            <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />
            <link rel="stylesheet" type="text/css" href="assets/bootstrap-timepicker/compiled/timepicker.css" />
            <link rel="stylesheet" type="text/css" href="assets/bootstrap-colorpicker/css/colorpicker.css" />
            <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker-bs3.css" />
            <link rel="stylesheet" type="text/css" href="assets/bootstrap-datetimepicker/css/datetimepicker.css" />
            <link rel="stylesheet" type="text/css" href="assets/jquery-multi-select/css/multi-select.css" />

            <!--right slidebar-->
            <link href="css/slidebars.css" rel="stylesheet">

            <!--  summernote -->
            <link href="assets/summernote/dist/summernote.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="css/style.css" rel="stylesheet">
            <link href="css/style-responsive.css" rel="stylesheet" />






            <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
            <!--[if lt IE 9]>
              <script src="js/html5shiv.js"></script>
              <script src="js/respond.min.js"></script>
            <![endif]-->

        </head>
        <body>
        <%@include file="/template/header_admin.jsp" %>
        <%@include file="/template/admin/menu_left_admin.jsp" %>
        <tiles:insertAttribute name="main_content"></tiles:insertAttribute>
        <%@include file="/template/footer.jsp" %>


    </body>
</html>
