<%@page import="java.sql.*"%>

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
		<h2 style="color: gold">PB Matics CRM</h2>
		<p>Digital Software Solution</p>
	</div>
        
        <div class="row">
            <div class="col-sm-4">
         <a href="day_plan_entry.html">
             <button class="btn btn-info">
             <span class="glyphicon glyphicon-plus"></span>Add New Day Plan
             </button>
        </a>
            </div>
            
            <div>
               <h3>DAY PLAN DETAILS</h3>
            </div>
            
        </div><!--end of row-->    
        
    <center>
        <table class="table table-bordered">
            <tr bgcolor="gold">
                <th>Plan Id</th>
                <th>Plan Date</th>
                <th>Plan Day</th>
                <th>Plan Time</th>
                <th>Task Detail</th>
                <th>Task Status</th>
                <th>Remark</th>
                <th>Plan By</th>
                <th colspan="2" class="text-center">Action</th>
            </tr>
            
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
                    
                    Statement stmt=con.createStatement();
                    
                    String sql="select * from day_plan_entry order by PLAN_ID desc";
                    
                    ResultSet rs=stmt.executeQuery(sql);
                    
                    while(rs.next())
                    {
                        %>
                        <tr>
                            <td><%=rs.getInt("PLAN_ID")%></td>
                            <td><%=rs.getString("DATE")%></td>
                            <td><%=rs.getString("DAY")%></td>
                            <td><%=rs.getString("TIME")%></td>
                            <td><%=rs.getString("DETAILS")%></td>
                            <td><%=rs.getString("STATUS")%></td>
                            <td bgcolor="skyblue">
                            <marquee scrolldelay="200"><%=rs.getString("REMARK")%></marquee>
                            </td>
                            
                            <td><%=rs.getString("PLAN_BY")%></td>
                            
                            <td align="center">
                                <a href="delete_day_plan_entry.jsp?id=<%=rs.getInt("plan_id")%>">
                           <button class="btn btn-info">
                               <span class="glyphicon glyphicon-trash"></span>
                           </button>
                                </a>
                       </td>
                           
                            <td align="center">
                                <a href="update_process_day_plan_entry.jsp?id=<%=rs.getInt("plan_id")%>">
                           <button class="btn btn-info">
                               <span class="glyphicon glyphicon-pencil"></span>
                           </button>
                                </a>
                       </td>
                       
                       </tr>
              <%
            }
               con.close();
          }
        catch(Exception e)
        {
            System.out.println(e);
        }
        %>
        
        </table>  
        
    </body>
                        
  </center>