<%@page import="try_admin.ToConnect"%>
<%@page import="try_admin.Customer" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

    <title>Simple Sidebar - Start Bootstrap Template</title>
    
    <script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Admin
                    </a>
                </li>
                <li>
                    <a href="customerdetails.html">Customer Details</a>
                </li>
                <li>
                    <a href="tech_details.jsp">Technician Details</a>
                </li>
                <li>
                    <a href="#">New Connection</a>
                </li>
                <li>
                    <a href="#">Repairs</a>
                </li>
                <li>
                    <a href="Solutions.jsp">Solutions</a>
                </li>
                <li>
                    <a href="#">Complains and Suggestion</a>
                </li>
                <li>
                    <a href="charts.jsp">Charts</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">

			<h2 class="w3-center">Analysis Charts</h2>

			<div class="w3-content" style="max-width:800px;position:relative">
			
			<img class="mySlides" src="C:\chart.jpg" style="width:100%">
			<img class="mySlides" src="C:\chart2.jpg" style="width:100%">
			<img class="mySlides" src="C:\LineChart.jpg" style="width:100%">
<!-- 			<img class="mySlides" src="C:\chart.jpg" style="width:100%"> -->
			
			<a class="w3-btn-floating" style="position:absolute;top:45%;left:0" onclick="plusDivs(-1)"></a>
			<a class="w3-btn-floating" style="position:absolute;top:45%;right:0" onclick="plusDivs(1)"></a>
			
			</div>
          				         
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>