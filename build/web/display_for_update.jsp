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
         <a href="create_user.html">
             <button class="btn btn-info">
             <span class="glyphicon glyphicon-plus"></span>Add New User
             </button>
        </a>
                
        <a href="admin_dashboard.html">
    	     <button class="btn btn-info">Go To Dashboard</button>
        </a>
            </div>
            
            <div>
               <h3>CRM USERS DETAILS</h3>
            </div>
            
        </div><!--end of row-->    
    <center>
        <table class="table table-bordered">
            <tr bgcolor="gold">
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Action</th>
            </tr>
            
    <%
        try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
               
               Statement st=con.createStatement();
               
               String sql="select * from users";
               
               ResultSet rs=st.executeQuery(sql);
               
               while(rs.next())
               {
                   %>
                   
                   <tr>
                       <td><%=rs.getInt("userid")%></td>
                       <td><%=rs.getString("fname")%></td>
                       <td><%=rs.getString("lname")%></td>
                       <td><%=rs.getString("phoneno")%></td>
                       <td><%=rs.getString("email")%></td>
                       <td><%=rs.getString("uname")%></td>
                       <td><%=rs.getString("pass")%></td>
                       
                       
                       <td align="center">
                           <a href="display_update_user_process.jsp?id=<%=rs.getInt("userid")%>">
                           <button class="btn btn-info">
                               <span class="glyphicon glyphicon-pencil"></span>Update
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
        
    </center>    

    </body>
</html>
