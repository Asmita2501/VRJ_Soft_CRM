<%@ page import="java.sql.*;"%>
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
                <a href="client_payment_entry.jsp">
                    <button class="btn btn-info">
                        <span class="glyphicon glyphicon-plus"></span>
                        Add Client Payment
                    </button>
                </a>
                
                 <a href="admin_dashboard.html">
    	             <button class="btn btn-info">Go To Dashboard</button>
                 </a>
            </div>
            
            <div>
                <h3>CLIENT PAYMENT DETAILS</h3>
            </div>
        </div><!--end of row-->
        
    <center>
        <table class="table table-bordered">
            <tr bgcolor="gold">
                <th>Client Id</th>
                <th>Entry Date</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Phone Number</th>
                <th>Business Nature</th>
                <th>Payment Amount</th>
                <th>Payment Mode</th>
                <th colspan="2" class="text-center">Action</th>
            </tr>
            
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
                    
                    Statement stmt=con.createStatement();
                    
                    String sql="select * from client_payment_entry order by CLIENT_ID desc";
                    
                    ResultSet rs=stmt.executeQuery(sql);
                    
                    while(rs.next())
                    {
                       %>
                       <tr>
      
                           <td> <%=rs.getInt("CLIENT_ID")%> </td>
                           <td> <%=rs.getString("ENTRY_DATE")%> </td>
                           <td> <%=rs.getString("FIRST_NAME")%> </td>
                           <td> <%=rs.getString("LAST_NAME")%> </td>
                           <td> <%=rs.getString("PHONE_NO")%> </td>
                           <td> <%=rs.getString("BUSINESS_NATURE")%> </td>
                           <td> <%=rs.getInt("PAYMENT_AMOUNT")%> </td>
                           <td> <%=rs.getString("PAYMENT_MODE")%> </td>
                       
                       <td align="center">
                           <a href="delete_payment_entry.jsp?id=<%=rs.getInt("CLIENT_ID")%>">
                               <button class="btn btn-info">
                                   <span class="glyphicon-trash"></span>
                                </button>
                           </a>
                       </td>
                       
                       <td align="center">
                           <a href="update_process_payment_entry.jsp?id=<%=rs.getInt("CLIENT_ID")%>">
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