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
        		color: white;
        		font-weight: bolder;
        		margin-top: -15px;
        		font-style: italic;
        	}

        	.well{
        		font-size: 20px;
        		background-color: gold;
        	}

        	.well:hover{
        		background-color: #ED3196;
        		color: white;
        		cursor: pointer;
        	}

        	a{
        		text-decoration: none;
        		color: #000123;
        	}

        	a:hover{
        		text-decoration: none;
        		color: white;
        	}

        	.formdiv{
        		width: 40%;
        		margin-left: 30%;
        		background: linear-gradient(to right bottom,deeppink,purple);
        		padding: 10px;
        		color: white;
        	}

        	.btn{
        		background-color: gold;
        		border: none;
        	}
    </style>
    </head>
    
    <body>
        <div class="jumbotron">
            <h2 style="color:gold">PB Matics CRM</h2>
            <p>Digital Software Solution</p>
        </div>
        
        <div class="row">
            <div class="col-sm-4">
                <a href="employee_payment_entry.html">
                    <button class="btn btn-info">
                        <span class="glyphicon glyphicon-plus"></span>
                        Add Employee Payment
                    </button>
                </a>
                
                <a href="employee_dashboard.html">
    	            <button class="btn btn-info">Go To Dashboard</button>
                </a>
            </div>
            
            <div>
                <h3>EMPLOYEE PAYMENT DETAILS</h3>
            </div>
        </div><!--end of row-->
        
    <center>
        <table class="table table-bordered">
            <tr bgcolor="gold">
                <th>Employee Id</th>
                <th>Payment Date</th>
                <th>Payment Time</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Payment Amount</th>
                <th>Job</th>
                <th>Payment Mode</th>
                <th>Incentive Amount</th>
                <th>Final Amount</th>
                <th colspan="2" class="text-center">Action</th>
            </tr>
            
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
                    
                    Statement stmt=con.createStatement();
                    
                    String sql="select * from employee_payment_entry order by EMP_ID desc";
                    
                    ResultSet rs=stmt.executeQuery(sql);
                    
                    while(rs.next())
                    {
                       %>
                       <tr>
      
                           <td> <%=rs.getInt("EMP_ID")%> </td>
                           <td> <%=rs.getString("DATE")%> </td>
                           <td> <%=rs.getString("TIME")%> </td>
                           <td> <%=rs.getString("FIRST_NAME")%> </td>
                           <td> <%=rs.getString("LAST_NAME")%> </td>
                           <td> <%=rs.getInt("AMOUNT")%> </td>
                           <td> <%=rs.getString("JOB")%> </td>
                           <td> <%=rs.getString("PAYMENT_MODE")%> </td>
                           <td> <%=rs.getString("INCENTIVE")%> </td>
                           <td> <%=rs.getInt("FINAL_AMOUNT")%> </td>




                           
                       
                       <td align="center">
                           <a href="delete_employee_payment.jsp?id=<%=rs.getInt("EMP_ID")%>">
                               <button class="btn btn-info">
                                   <span class="glyphicon-trash"></span>
                                </button>
                           </a>
                       </td>
                       
                       <td align="center">
                           <a href="update_process_employee_payment.jsp?id=<%=rs.getInt("EMP_ID")%>">
                               <button class="btn btn-info">
                                   <span class="glyphicon glyphicon-pencil"></span>
                               </button>
                           </a>
                       </td>
        </tr>
        <%
        }//end of while loop
                    con.close();
                }//end of try
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %>
        </table>
    </center>
        
    </body>
</html>