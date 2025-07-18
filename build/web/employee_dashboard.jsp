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

	.btn{
		background-color: gold;
	}
</style>
     <title>Employee Dashboard</title>
</head>
<body>

	<div class="jumbotron">
		<h2 style="color: gold">VRJ Soft CRM</h2>
		<p>Digital Software Solution</p>
                <%
                          String sess_name=(String)session.getAttribute("user");
                          out.print("<h4>Welcome "+sess_name+"</h4>");
                %> 
	</div>
    <a href="logout.jsp">
	<button class="btn btn-primary">
		 Log Out
    </button>
        </a>

    <div class="container-fluid text-center">
    	<h3>Employee Dashboard </h3>

    	<div class="row">
    		<div class="col-sm-3">
    			<a href="new_client_enquiry.html">
    			<div class="well">
    				New Client Enquiry
    			</div>
    			</a>
    		</div>
            
            
    		<div class="col-sm-3">
    			<a href="display_all_client_enquiry.jsp">
    			<div class="well">
    				Display All Client Enquiry
    			</div>
    			</a>
    		</div>
              

    		<div class="col-sm-3">
    			<a href="display_client_followup.jsp">
    			<div class="well">
    			       Display Client Follow up
    			</div>
    			</a>
    		</div>


    		<div class="col-sm-3">
    			<a href="display_client_lead.jsp">
    			<div class="well">
    			      Display Client Lead
    			</div>
    			</a>
    		</div>

    	</div><!--end of 1st row-->


        <div class="row">
    		<div class="col-sm-3">
    			<a href="client_registration.html">
    			<div class="well">
    			   Client Registration Entry
    			</div>
    			</a>
    		</div>

    		<div class="col-sm-3">
    			<a href="display_registred_client.jsp">
    			<div class="well">
    				Registered Client
    			</div>
    			</a>
    		</div>
              

    		<div class="col-sm-3">
    			<a href="client_payment_entry.html">
    			<div class="well">
    				Client Payment Entry
    			</div>
    			</a>
    		</div>

    		<div class="col-sm-3">
    			<a href="display_client_payment_entry.jsp">
    			<div class="well">
    				Display Client Payment
    			</div>
    			</a>
    		</div><!--end of 2nd row-->
    	</div>	


    	<div class="row">
    		<div class="col-sm-3">
    			<a href="employee_vendor_payment.html">
    			<div class="well">
    			   Vendor payment Entry
    			</div>
    			</a>
    		</div>

    		<div class="col-sm-3">
    			<a href="display_employee_vendor_payment.jsp">
    			<div class="well">
    			       Display Vendor Payment
    			</div>
    			</a>
    		</div>
              

    		
    		<div class="col-sm-3">
    			<a href="employee_payment_entry.html">
    			<div class="well">
    				Employee Payment Entry
    			</div>
    			</a>
    		</div>

    		
    		<div class="col-sm-3">
    			<a href="display_employee_payment_entry.jsp">
    			<div class="well">
    				Display Employee Payment 
    			</div>
    			</a>
    		</div>
            
            <div class="col-sm-3">
    			<a href="day_plan_entry.html">
    			<div class="well">
    				Day Plan Entry 
    			</div>
    			</a>
    		</div>
            
            <div class="col-sm-3">
    			<a href="display_day_plan_entry.jsp">
    			<div class="well">
    				Display Day Plan 
    			</div>
    			</a>
    		</div>
            
            <div class="col-sm-3">
    			<a href="employee_ticketing_entry.html">
    			<div class="well">
    				Ticketing Entry 
    			</div>
    			</a>
    		</div>
            
            <div class="col-sm-3">
    			<a href="display_employee_ticketing.jsp">
    			<div class="well">
    				Display Ticketing 
    			</div>
    			</a>
    		</div>
            
        </div><!--end of 3rd row-->
    	
    </div>		<!--end of container fluid-->
		
	

</body>
</html>