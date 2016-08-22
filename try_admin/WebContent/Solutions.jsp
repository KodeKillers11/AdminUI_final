
<%@page import="try_admin.ToConnect"%>

<%@page import="try_admin.Customer" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.io.*" %>
<%@ page language="java" import="com.servlets.*" %>
<%@ page language="java" import="com.vz.test.*" %>
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
                    <a href="customerDetails.jsp">Customer Details</a>
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
                    <a href="#">Complains and Suggestions</a>
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
               <center> <h3 style="color:red">Present Status</h3> 
               <table border="1">
				<tr>
               <th>
               WareHouse
               </th>
               <th>Number Of Technicians</th>
               </tr>
               <tr>
               <td>
              W1
               </td>
               <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W2
               </td>
              <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W3
               </td>
               <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W4
               </td>
               <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W5
               </td>
              <td><center>
               5
               </center></td>
               </tr>
               </table>
               
               
               </center>
               
                
                <h3 style="color:red">Following are the solutions provided for the month January</h3>
                <center>
          		<table border="1" ><tr>
          		<th>Warehouse Name</th>
          		<th>No Of Men Recommended</th>
          		</tr>	
  			<% 
  			Connection con;
  			PreparedStatement pst;
            PreparedStatement pst1;
  			double requests;
  			double served;
  			double misses;
  			double efficiency;
  			String warehouse_no;
  			double occup;
  			double fr;
  			double ot;
  			HashMap<String, String> miss = new HashMap<String, String>();
  			HashMap<String, Double> req = new HashMap<String, Double>();
  			HashMap<String, Double> serve = new HashMap<String, Double>();
  			HashMap<String, Double> missed = new HashMap<String, Double>();
  			HashMap<String, Double> occupied = new HashMap<String, Double>();
  			HashMap<String, Double> free = new HashMap<String, Double>();
  			HashMap<String, Double> otw = new HashMap<String, Double>();
  			HashMap<String, String> status = new HashMap<String,String>();
  			HashMap<String, Double> tech_req = new HashMap<String,Double>();
  			final double freeThreshold=8.0;
  			final  double persons = 5.0;
  			final  double TotalWorkingHours = 9.0;
  			
  			
  			ConnectionGetter cg=new ConnectionGetter();
  			con=cg.getConnection();
  			//Analysis an=new Analysis();
  			//		try{
  			 //out = response.getWriter();
  				// Comparing efficeiency and finding out the value
  				
  			try {
  				pst=con.prepareStatement("select warehouse_no,avg_req,avg_served,eff from monthlyreport");
  				ResultSet rs=pst.executeQuery();
  				while(rs.next())
  				{
  					requests=rs.getDouble(2);
  					served=rs.getDouble(3);
  					warehouse_no=rs.getString(1);
  					efficiency=rs.getDouble(4);
  					System.out.println(efficiency);
  					miss.put(warehouse_no, Double.toString(efficiency));
  					req.put(warehouse_no, requests);
  					serve.put(warehouse_no, served);
  					missed.put(warehouse_no, (requests-served));
  					// miss.put("W2", arg1);
  					// miss.put("W3", arg1);
  					// miss.put("W4", arg1);
  					// miss.put("W5", arg1);

  					
  				}
  				pst=con.prepareStatement("select warehouse_no,occupied,free,otw from technician_avg_status");
  				ResultSet rs1=pst.executeQuery();
  				while(rs1.next())
  				{
  					
  							
  					occupied.put(rs1.getString(1),rs1.getDouble(2));
  					free.put(rs1.getString(1), rs1.getDouble(3));
  					otw.put(rs1.getString(1), rs1.getDouble(4));
  					
  				}
  				
  			} catch (SQLException e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
  			
//  			for (String name: missed.keySet()){
  	//
//  	            String key =name.toString();
//  	            String value = missed.get(name).toString();  
//  	            out.println(key + " " + value);  
  	//} 

  			for (String name: free.keySet()){

  	            String key =name.toString();
  	            String value = free.get(name).toString(); 
  	            
  	            if((free.get(name))/30.0<freeThreshold)
  	            {
  	    			double o1 =occupied.get(name) ;
  	    			double otw1 =otw.get(name) ;
  	    			


  	    				//case1A(req.get(name),missed.get(name),name);
  	    				double totalMen = persons;
  	    				double menRequired = ((totalMen / req.get(name)) * missed.get(name));
  	    				%>
  	          			<tr><td><center><%=name %></center></td>
  	    				<td><center><%= Math.ceil(menRequired)%></center></td></tr>

  	    			<%
  	    			status.put(name, "recommended");
  	    			tech_req.put(name, Math.ceil(menRequired));
  	    			if (Analysis.checkOTWHours(otw1)) {
  	    				%>
<%
  	    				if (otw1 > o1) {
  	    			%>
  	    			</table></center><br/>
  	    				
  	    					<h>Warehouse <%=name %> overloaded!! More warehouses needed because techies are busy in travelling to long distant nodes</h> <br/> <br/>
					<% 
  	    			}
  	            }
  	            }
  	            else if((free.get(name))/30.0>freeThreshold)
  	            {
  	            	//Analysis.optimise(free.get(name),out,name);
  	            	double freeTimePerDay = free.get(name) / 30;
				if (freeTimePerDay > 8) {
				double resultingAlpha = (double) (freeTimePerDay / (TotalWorkingHours - 1.0));
				%>
				<center>
			<table border="1"><tr>
			<th>Warehouse Name</th>
			<th>Number Of Personnel free</th></tr>
			<tr><td><center><%=name %></center></td>
				<td><center><%=Math.floor(resultingAlpha) %></center></td></tr></table></center>
				<% 
				status.put(name, "extra");
				tech_req.put(name, Math.floor(resultingAlpha));
  	            }
  	            //out.println(key + " " + value);  
  	           } 
  			}
  			
  			for(String namei:status.keySet())
  			{
  				if(status.get(namei).equals("extra"))
  				{
  					double no1=tech_req.get(namei);
  				
  					pst=con.prepareStatement("update warehouse set technician_no=technician_no-? where warehouse_id=?");
  					pst.setDouble(1,no1);
  					pst.setString(2,namei);
  					int k=pst.executeUpdate();%>
  					
  					
  					<%
  					while(no1>0)
	  					{
  						for(String namej:status.keySet())
  						{
  							
  							if(status.get(namej).equals("recommended"))
  							{
  								double no2=tech_req.get(namej);
  								if(no2>0)
  								{
  				  					
  									pst=con.prepareStatement("update warehouse set technician_no=technician_no+? where warehouse_id=?");
  				  					pst.setDouble(1,1.0);
  				  					pst.setString(2,namej);
  				  					no1=no1-1;
  				  					
  								}
  							}
  						}
  					}
  				}
  			}
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
  			
				pst1=con.prepareStatement("update warehouse set technician_no=6 where warehouse_id=?");
				pst1.setString(1, "W1");
				pst1.executeUpdate();
				pst1=con.prepareStatement("update warehouse set technician_no=6 where warehouse_id=?");
				pst1.setString(1,"W2");
				pst1.executeUpdate();

  				pst1=con.prepareStatement("select warehouse_id,technician_no from warehouse");
  				ResultSet rs=pst1.executeQuery();
  				%>

  				<center style="color:red">
  				<h3>Reallocation</h3><br/>
				Before Reallocation-<br/>
				</center>
				<center>
               <table border="1">
				<tr>
               <th>
               WareHouse
               </th>
               <th>Number Of Technicians</th>
               </tr>
               <tr>
               <td>
              W1
               </td>
               <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W2
               </td>
              <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W3
               </td>
               <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W4
               </td>
               <td><center>
               5
               </center></td>
               </tr>
                <tr>
               <td>
              W5
               </td>
              <td><center>
               5
               </center></td>
               </tr>
               </table>
               </center>
               <center>
               <center style="color:red">
  				After Reallocation-<br/>
  				</center>
  				<table border="1">
  				<tr>
  				<th>Warehouse</th>
  				<th>Number of technicians</th>
  				</tr>
  				
  				<% 
  				while(rs.next())
  				{
  					%>
  			
  				<tr>
  				<td><center><%=rs.getString(1) %></center></td>
  				<td><center><%=rs.getDouble(2) %></center></td>
  				</tr>
  				
  				<%}%>
          		</table>
          		</center>    
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