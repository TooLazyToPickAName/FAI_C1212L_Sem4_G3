<%-- 
    Document   : layout_technical
    Created on : Sep 7, 2015, 2:28:11 AM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/struts-tags" prefix="s" %> 
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
            <!--external css-->
            <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
            <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
            <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">

            <!--dynamic table-->
            <link href="assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
            <link href="assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
            <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
            <!--right slidebar-->
            <link href="css/slidebars.css" rel="stylesheet">

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
        <%@include file="/template/header_technical.jsp" %>
        <%@include file="/template/technical/menu_left_technical.jsp" %>
        <tiles:insertAttribute name="main_content"></tiles:insertAttribute>
        <%@include file="/template/footer.jsp" %>


    </body>
</html>
