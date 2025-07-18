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
            //validation for first name

    		if(document.f1.fname.value=="")
            {
              alert("Please Enter the First Name");
              document.f1.fname.focus();
              return false;
            }

            var data=/^[A-Za-z]+$/;

            if(!document.f1.fname.value.match(data))
            {

            alert("Please Enter Valid First name");

            document.f1.fname.focus();

            return false;
            }

            //validation for last name

            if(document.f1.lname.value=="")
            {

            alert("Please Enter Last Name");

            document.f1.lname.focus();

            return false;
            }

             var data=/^[A-Za-z]+$/;

            if(!document.f1.lname.value.match(data))
             {
             
             alert("Please Enter Valid Last Name");

             document.f1.lname.focus();

             return false;
             }

    	     //validation for phone no

    	    if(document.f1.phoneno.value.length!=10)
    	    {
    		 alert("Please Enter valid Phone Number");
    		 document.f1.phoneno.focus();
    		 return false;
    	    }

    	   //validation for email

    	   if(document.f1.email.value=="")
    	   {
    		  alert("Please Enter Email");
    		  document.f1.email.focus();
    		  return false;
    	   }

    	   //validation for username

    	   if(document.f1.uname.value=="")
    	   {
    		  alert("Please Enter Username");
    		  document.f1.uname.focus();
    		  return false;
    	   }

    	   var uname_len=document.f1.uname.value.length;//ramesh
    	   if(uname_len<5 || uname_len>10)
    	   {
    		  alert("Username Length Must In Range 5 to 10");
    		  document.f1.uname.focus();
    		  return false;
    	   }

    	   //validation for password
        
    	if(document.f1.pass.value=="")
    	{
    		alert("Please Enter Password");
    		document.f1.pass.focus();
    		return false;
    	}

    	var pass_len=document.f1.pass.value.length;
    	if(pass_len<5 || pass_len>10)
    	{
    		alert("Password Length Must In Range 5 to 10");
    		document.f1.pass.focus();
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
        
        String sql ="select * from petty_cash where pid=" +id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
          %>
          <html> 
              <body>
          <form name="f1" action="update_petty_cash_entry.jsp" method="POST">
    		<h3 class="text-center">Update Petty Cash</h3>
    		<div class="form-group">
                    <input type="hidden" name="p_id" value="<%=rs.getInt("PID")%>">
                </div>   
                
                <div class="form-group">
                    <label>Purchase Date</label>
                    <input type="text" name="p_date"  class="form-control" value="<%=rs.getString("PURCHASE_DATE")%>">
    		</div>
                
                <div class="form-group">
                    <select name="d_name" class="form-control">
                        <option value="">--Select Remark--</option>
                        <option value="IT" <%=rs.getString("DEPARTMENT_NAME").equals("IT")?"selected":""%>>IT</option>
                        <option value="HR" <%=rs.getString("DEPARTMENT_NAME").equals("HR")?"selected":""%>>HR</option>
                        <option value="Marketing" <%=rs.getString("DEPARTMENT_NAME").equals("Marketing")?"selected":""%>>Marketing</option>
                        <option value="Sales" <%=rs.getString("DEPARTMENT_NAME").equals("Sales")?"selected":""%>>Sales</option>
                    </select>
                </div>


    		<div class="form-group">
                    <label>Product Name</label>
    			<input type="text" name="p_name" class="form-control" value="<%=rs.getString("PRODUCT_NAME")%>">
    		</div>

    		<div class="form-group">
                    <label>Rate</label>
    			<input type="number" name="rate" class="form-control" value="<%=rs.getString("RATE")%>">
    		</div>

    		<div class="form-group">
                    <label>Quantity</label>
    			<input type="number" name="qty" class="form-control" value="<%=rs.getString("QUANTITY")%>">
    		</div>

    		<div class="form-group">
                    <label>Bill</label>
    			<input type="number" name="bill" class="form-control" value="<%=rs.getString("BILL")%>">
    		</div>
                
                <div class="form-group">
                    <label>Entry By</label>
    			<input type="text" name="entry_by" class="form-control" value="<%=rs.getString("ENTRY_BY")%>">
    		</div>
                
                <div class="form-group">
                    <label>Purpose</label>
    			<input type="text" name="purpose" class="form-control" value="<%=rs.getString("PURPOSE")%>">
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