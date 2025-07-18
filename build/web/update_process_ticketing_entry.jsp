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

    <script type="text/javascript">
    	function validation()
    	{
            //validation for department name

    	    if(document.f1.dname.value=="")
            {
              alert("Please Enter The Department Name");
              document.f1.dname.focus();
              return false;
            }

            var data=/^[A-Za-z]+$/;

            if(!document.f1.dname.value.match(data))
            {

            alert("Please Enter Valid Department name");

            document.f1.dname.focus();

            return false;
            }

            //validation for client name

            if(document.f1.client_name.value=="")
            {

            alert("Please Enter Client Name");

            document.f1.client_name.focus();

            return false;
            }

             var data=/^[A-Za-z]+$/;

            if(!document.f1.client_name.value.match(data))
             {
             
             alert("Please Enter Valid client Name");

             document.f1.client_name.focus();

             return false;
             }

    	     //validation for project

    	    if(document.f1.project.value=="")
    	    {
    		 alert("Please Enter Project Name");
    		 document.f1.project.focus();
    		 return false;
    	    }

    	   //validation for issue

    	   if(document.f1.issue.value=="")
    	   {
    		  alert("Please Enter Issue");
    		  document.f1.issue.focus();
    		  return false;
    	   }

    	   //validation for handoverto

    	   if(document.f1.handoverto.value=="")
    	   {
    		  alert("Please Enter Handover Name");
    		  document.f1.handoverto.focus();
    		  return false;
    	   }

    	   
    	   //validation for remark
        
    	if(document.f1.remark.value=="")
    	{
    		alert("Please Select Remark");
    		return false;
    	}
    }

    </script>

</head>
<body>

     <div class="jumbotron">
     	<h2 style="color: gold">PB Matics CRM</h2>
     	<p>Digital Software Solution</p>
    </div>

    <button class="btn btn-primary">
    	<a href="logout.html">Log Out</a>
    </button>

    <div class="form formdiv">

<%@ page import="java.sql.*;"%>

<%
    int id=Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
        
        Statement st=conn.createStatement();
        
        String sql ="select * from add_ticketing where TICKETING_ID=" +id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
          %>
          <html> 
              <body>
          <form name="f1" action="update_ticketing_entry.jsp" method="POST">
    		<h3 class="text-center">Update Ticketing Entry</h3>
    		<div class="form-group">
                    <input type="hidden" name="userid" value="<%=rs.getInt("TICKETING_ID")%>">
                </div>   
                
                <div class="form-group">
                    <label>Entry Date</label>
                    <input type="text" name="entry_date"  class="form-control" value="<%=rs.getString("ENTRY_DATE")%>">
    		</div>


    		<div class="form-group">
                    <label>Department Name</label>
                    <select name="d_name" class="form-control">
                        <option value="">--Select Department--</option>
                        <option value="IT" <%=rs.getString("DEPARTMENT_NAME").equals("IT")?"selected":""%>>IT</option>
                        <option value="Sales" <%=rs.getString("DEPARTMENT_NAME").equals("Sales")?"selected":""%>>Sales</option>
                        <option value="Marketing" <%=rs.getString("DEPARTMENT_NAME").equals("Marketing")?"selected":""%>>Marketing</option>
                        <option value="HR" <%=rs.getString("DEPARTMENT_NAME").equals("HR")?"selected":""%>>HR</option>
                    </select>
    		</div>

    		<div class="form-group">
                    <label>Client Name</label>
    			<input type="text" name="client_name" class="form-control" value="<%=rs.getString("CLIENT_NAME")%>">
    		</div>

    		<div class="form-group">
                    <label>Project</label>
    			<input type="text" name="project" class="form-control" value="<%=rs.getString("PROJECT")%>">
    		</div>

    		<div class="form-group">
                    <label>Issue</label>
    			<input type="text" name="issue" class="form-control" value="<%=rs.getString("ISSUE")%>">
    		</div>

    		<div class="form-group">
                    <label>Handover</label>
    			<input type="text" name="handover" class="form-control" value="<%=rs.getString("HANDOVER")%>">
    		</div>
                
                <div class="form-group">
                    <label>Remark</label>
                    <select name="remark" class="form-control">
                        <option value="">--Select Remark--</option>
                        <option value="Issue On Hold" <%=rs.getString("REMARK").equals("Issue On Hold")?"selected":""%>>Issue On Hold</option>
                        <option value="Issue Resolve" <%=rs.getString("REMARK").equals("Issue Resolve")?"selected":""%>>Issue Resolve</option>
                        <option value="Issue In Progress" <%=rs.getString("REMARK").equals("Issue In Progress")?"selected":""%>>Issue In Progress</option>
                    </select>
    		</div>

    		<div class="form-group text-center">
    		
                <button class="btn btn-info" type="submit" onclick="return validation()">Update</button>
                <button type="reset" class="btn btn-info">Reset</button>
                
    		</div>
        </form>
                <%
        }//end of while loop
        
        conn.close();
    
       
     
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>
    </body>
 </html>