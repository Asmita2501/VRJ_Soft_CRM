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
         <a href="petty_cash_entry.html">
             <button class="btn btn-info">
             <span class="glyphicon glyphicon-plus"></span>Add Petty Cash
             </button>
        </a>
                
        <a href="admin_dashboard.html">
    	   <button class="btn btn-info">Go To Dashboard</button>
        </a>
            </div>
            
            <div>
               <h3>PETTY CASH DETAILS</h3>
            </div>
            
        </div><!--end of row--> 
        
    <center>
        <table class="table table-bordered">
            <tr bgcolor="gold">
                <th>Purchase Id</th>
                <th>Purchase Date</th>
                <th>Department Name</th>
                <th>Product Name</th>
                <th>Product Rate</th>
                <th>Product Quantity</th>
                <th>Product Bill</th>
                <th>Purchase By</th>
                <th>Purpose Of Need</th>
                <th colspan="2" class="text_center">Action</th>
            </tr>
            
    <%
        try{
            
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
               
               Statement st=con.createStatement();
               
               String sql="select * from petty_cash order by PID desc";
               
               ResultSet rs=st.executeQuery(sql);
               
               while(rs.next())
               {
                   %>
                   
                   <tr>
                       <td><%=rs.getInt("PID")%></td>
                       <td><%=rs.getString("PURCHASE_DATE")%></td>
                       <td><%=rs.getString("DEPARTMENT_NAME")%></td>
                       <td><%=rs.getString("PRODUCT_NAME")%></td>
                       <td><%=rs.getString("RATE")%></td>
                       <td><%=rs.getString("QUANTITY")%></td>
                       <td><%=rs.getString("BILL")%></td>
                       <td><%=rs.getString("ENTRY_BY")%></td>
                       <td><%=rs.getString("PURPOSE")%></td>
                       
                       <td align="center">
                           <a href="delete_petty_cash_entry.jsp?id=<%=rs.getInt("PID")%>">
                           <button class="btn btn-info">
                               <span class="glyphicon glyphicon-trash"></span>Delete
                           </button>
                           </a>
                       </td>
                       
                       <td align="center">
                           <a href="update_process_petty_cash_entry.jsp?id=<%=rs.getInt("PID")%>">
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
</html>
      