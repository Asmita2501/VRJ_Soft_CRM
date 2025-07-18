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

    	   //validation for profession Radiobutton

    	   if(document.f1.profession[0].checked==false && document.f1.profession[1].checked==false && document.f1.profession[2].checked==false)
    	   {
    		  alert("Please Select Radiobutton");
    		  return false;
    	   }


    	   //validation for client information
        
    	if(document.f1.client_info.value=="")
    	{
    		alert("Please Enter Client Information");
    		document.f1.client_info.focus();
    		return false;
    	}
        
          //validation for client suggested information
        
    	if(document.f1.client_suggested_info.value=="")
    	{
    		alert("Please Enter Client Suggested Information");
    		document.f1.client_suggested_info.focus();
    		return false;
    	}
        
          //validation for client info
        
    	if(document.f1.client_info.value=="")
    	{
    		alert("Please Enter Client Information");
    		document.f1.client_info.focus();
    		return false;
    	}
        
        //validation for status Radiobutton
        
        if(document.f1.status[0].checked==false && document.f1.status.[1].checked==false && document.f1.status[2].checked==false)
    	{
    		alert("Please Select Status");
    		return false;
    	}

 }//end of validation 

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
        
        String sql ="select * from client_enquiry where CLIENT_ID=" +id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
          %>
          <html> 
              <body>
          <form name="f1" action="display_update_client_lead.jsp" method="POST">
    		<h3 class="text-center">Update Client Enquiry</h3>
    		<div class="form-group">
                    <input type="hidden" name="client_id" value="<%=rs.getInt("CLIENT_ID")%>">
                </div>   
                
                <div class="form-group">
                    Enquiry Date:
                    <input type="text" name="e_date"  class="form-control" value="<%=rs.getString("ENQUIRY_DATE")%>">
    		</div>


    		<div class="form-group">
                    First Name:
    			<input type="text" name="fname" class="form-control" value="<%=rs.getString("FIRST_NAME")%>">
    		</div>

    		<div class="form-group">
                    Last Name:
    			<input type="text" name="lname" class="form-control" value="<%=rs.getString("LAST_NAME")%>">
    		</div>

    		<div class="form-group">
                    Phone Number:
    			<input type="text" name="phoneno" class="form-control" value="<%=rs.getString("PHONE_NUMBER")%>">
    		</div>

    		<div class="form-group">
                    Email:
    			<input type="text" name="email" class="form-control" value="<%=rs.getString("EMAIL")%>">
    		</div>

    		<div class="form-group">
                    Profession:
                    <div class="radio-inline">
                        <input type="radio" name="profession" value="JOB" <%=rs.getString("PROFESSION").equals("JOB")?"checked":"unchecked"%>>JOB
                    </div>
                    
                    <div class="radio-inline">
                        <input type="radio" name="profession" value="Business" <%=rs.getString("PROFESSION").equals("Business")?"checked":"unchecked"%>>BUSINESS
                    </div>
                    
                    <div class="radio-inline">
                        <input type="radio" name="profession" value="Self Employee" <%=rs.getString("PROFESSION").equals("Self Employee")?"checked":"unchecked"%>>SELF EMPLOYEE
                    </div>
                    
    		</div>
                
                <div class="form-group">
                    Client Information:
    			<input type="text" name="client_info" class="form-control" value="<%=rs.getString("CLIENT_INFORMATION")%>">
    		</div>
                
                <div class="form-group">
                    Client Suggested Information:
    			<input type="text" name="client_suggested_info" class="form-control" value="<%=rs.getString("CLIENT_SUGGESTED_INFORMATION")%>">
    		</div>
                
                <div class="form-group">
                    Status:
                    <div class="radio-inline">
    			<input type="radio" name="status" value="Lead" <%=rs.getString("STATUS").equals("Lead")?"checked":"unchecked"%>>Lead
                    </div>
                    
                    <div class="radio-inline">
                        <input type="radio" name="status" value="FollowUp" <%=rs.getString("STATUS").equals("FollowUp")?"checked":"unchecked"%>>FollowUp
                    </div>   
                    
    		</div>
    		<div class="form-group text-center">
    			<button class="btn btn-info">Go To Dashboard</button>
                <button class="btn btn-info" type="submit" onclick="return validation()">Update</button>
                <button class="btn btn-info">Reset</button>
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