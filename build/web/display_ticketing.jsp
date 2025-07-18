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
         <a href="add_ticketing.html">
             <button class="btn btn-info">
             <span class="glyphicon glyphicon-plus"></span>Add Ticketing 
             </button>
        </a>
                
        <a href="admin_dashboard.html">
    	  <button class="btn btn-info">Go To Dashboard</button>
        </a>
            </div>
            
            <div>
               <h3>TICKETING ENTRY DETAILS</h3>
            </div>
            
        </div><!--end of row--> 
        
    <center>
        <table class="table table-bordered">
            <tr bgcolor="gold">
                <th>Ticketing Id</th>
                <th>Ticketing Date</th>
                <th>Department Name</th>
                <th>Client Name</th>
                <th>Project Name</th>
                <th>Description Of Issue</th>
                <th>Hand Over TO</th>
                <th>Remark</th>
                <th colspan="2" class="text_center">Action</th>
            </tr>
            
    <%
        try{
            
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
               
               Statement st=con.createStatement();
               
               String sql="select * from add_ticketing order by TICKETING_ID";
               
               ResultSet rs=st.executeQuery(sql);
               
               while(rs.next())
               {
                   %>
                   
                   <tr>
                       <td><%=rs.getInt("TICKETING_ID")%></td>
                       <td><%=rs.getString("ENTRY_DATE")%></td>
                       <td><%=rs.getString("DEPARTMENT_NAME")%></td>
                       <td><%=rs.getString("CLIENT_NAME")%></td>
                       <td><%=rs.getString("PROJECT")%></td>
                       <td><%=rs.getString("ISSUE")%></td>
                       <td><%=rs.getString("HANDOVER")%></td>
                       <td bgcolor="skyblue">
                   <marquee scrolldelay="200"> <%=rs.getString("REMARK")%> </marquee>
                       </td>
                       
                       <td align="center">
                           <a href="delete_ticketing_entry.jsp?id=<%=rs.getInt("TICKETING_ID")%>">
                           <button class="btn btn-info">
                               <span class="glyphicon glyphicon-trash"></span>Delete
                           </button>
                           </a>
                       </td>
                           
                            <td align="center">
                                <a href="update_process_ticketing_entry.jsp?id=<%=rs.getInt("TICKETING_ID")%>">
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
        
    </body>