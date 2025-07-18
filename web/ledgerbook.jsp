<%@page import="java.sql.*;"%>

<!DOCTYPE html>
<html>
<head>

	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
</script>

<style type="text/css">
	.jumbotron{
		padding: 10px;
		font-family: sans-serif;
		background-color: #ED3196;
	}

	p{
		font-weight: bolder;
		margin-top: -15px;
		font-style: italic;
		color: white;
	}

	.well{
		font-size: 20px;
		background-color: gold;
	}

	a{
		text-decoration: none;
		color: #000123;
	}

	a:hover{
		text-decoration: none;
		color: white;
	}

	.cardcontainer{
		box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.5);
		transition: 0.3s;
	}

	.cardcontainer:hover{
		box-shadow: 0px 10px 20px 0px rgba(0,0,0,0.5);
	}

	.add_data{
		background-color: deeppink;
		color: white;
		width: 100%;
		padding: 10px;
		padding-bottom: 20px;
	}

	.showamt{
		color: gold;
		font-size: 20px;
	}
        body{
              background-color: gold;
        }
</style>

</head>
<body >
    
    <%!
    int camt=0,eamt=0,vamt=0;
    int tot_expenses;
    %>
    
       <%
        try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
               
               Statement st_client=con.createStatement();
               
               String client_pay="select sum(payment_amount) 'total_cpay' from client_payment_entry";
               
               ResultSet rs_client=st_client.executeQuery(client_pay);
               
               
               Statement st_emp=con.createStatement();
               
               String emp_pay="select sum(PAYMENT_AMOUNT) 'total_epay' from employee_payment_entry";
               
               ResultSet rs_emp=st_emp.executeQuery(emp_pay);
               
               
               
               Statement st_vendor=con.createStatement();
               
               String vendor_pay="select sum(payment_amount) 'total_vpay' from vendor_payment_entry";
               
               ResultSet rs_vendor=st_vendor.executeQuery(vendor_pay);
               
           
        
               %>
           
    

	<div class="jumbotron">
		<h2 style="color: gold">VRJ Soft CRM</h2>
		<p>Digital Software Solutions</p>
	</div>
                       
                       
             
               
                                                

	<div class="Container-fluid text-center">
		<h3>Leadger Book profit & Loss</h3>

		<div class="row">
			
			<div class="col-sm-3">
				<div class="cardcontainer">
					<img src="Book/client.jpg" style="width: 100%">
					<div class="add_data">
						<h3>Client Payment</h3>
						<br>
                                                
                                                
                                                <%
                                                while(rs_client.next()) 
                                                {
                                                    %>
                                                
                                            <p class="showamt">&#8377 <%=camt=rs_client.getInt("total_cpay")%> /-                                                </p>
                                                                  
                                                <%
                                                }
                                                %>
                                        </div>
				</div>
			</div>


			<div class="col-sm-3">
				<div class="cardcontainer">
					<img src="Book/emp_pay.jpg" style="width: 100%">
					<div class="add_data">
						<h3>Employee Payment</h3>
						<br>
                                                
                                                <%
                                                while(rs_emp.next())
                                                {
                                                    %>
                                                
                                            <p class="showamt">&#8377 <%=eamt=rs_emp.getInt("total_epay")%> /-                                                </p>

                                                <%
                                                }
                                                %>
						
					</div>
				</div>
			</div>


			<div class="col-sm-3">
				<div class="cardcontainer">
					<img src="Book/vendor.png" style="width: 100%">
					<div class="add_data">
						<h3>Vendor Payment</h3>
						<br>
						
                                                <%
                                                while(rs_vendor.next())
                                                {
                                                %>
                                                <p class="showamt">&#8377 <%=vamt=rs_vendor.getInt("total_vpay")%>/-</p>
 
                                                    <%
                                                }
                                                %>
					</div>
				</div>
			</div>

                    <%tot_expenses=camt-(eamt+vamt);%>
			<div class="col-sm-3">
				<div class="cardcontainer">
					<img src="Book/profit.jpg" style="width: 100%">
					<div class="add_data">
						<h3>Profit Payment</h3>
						<br>
						<p class="showamt">&#8377 <%=tot_expenses%>/- </p>
					</div>
				</div>
			</div>
		</div>
	</div>
                   
                 
        <%
            
               con.close();
          }
        catch(Exception e)
        {
            System.out.println(e);
        }
        %>
        </table>
        
    </center>   

</body>
</html>