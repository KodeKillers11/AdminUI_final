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

    <title>Simple Sidebar - Start Bootstrap Template</title>

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
                    <a href="complaints.jsp">Complaints Registered</a>
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
                <div class="row">

<%
ResultSet rs;
PreparedStatement pst;
Customer c;

		ToConnect cn=new ToConnect();
		Connection con=cn.getConnection();
		pst=con.prepareStatement("select * from CUSTOMERS");
		rs=pst.executeQuery();
		//while(rs.next())
		//{
		//System.out.println(rs.getString(1));
		//}
		%>
	
			<table border="1" cellspacing="0" cellpadding="0">
			<tr>
				<td><b>customer name</b></td>
				<td><b>customer id</b></td>
				<td><b>username</b></td>
				<td><b>password</b></td>
				<td><b>phone number</b></td>
				<td><b>address</b></td>
				<td><b>fios_internet</b></td>
				<td><b>dsl_internet</b></td>
				<td><b>home_phone</b></td>
				<td><b>mobile service</b></td>
			</tr>
			 	<%
			 while(rs.next()){
			 	%>
			 	<tr>
			 	<td>
			 	<%=rs.getString(1)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(2)%>
			 	
			 	</td>
			 	<td>
			 	<%=rs.getString(3)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(4)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(5)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(6)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(7)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(8)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(9)%>
			 	</td>
			 	<td>
			 	<%=rs.getString(10)%>
			 	</td>
			 	
			 	</tr>
			 	<%} 
			 	rs.close();%>
			</table>

          				

	

          				          
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