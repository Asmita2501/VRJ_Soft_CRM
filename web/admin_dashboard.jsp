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
     <title></title>
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

	<button class="btn btn-primary">
		<a href="logout.html">Log Out</a>
    </button>

    <div class="container-fluid text-center">
    	<h3>Admin Department</h3>

    	<div class="row">
    		<div class="col-sm-3">
    			<a href="create_user.html">
    			<div class="well">
    				Create New User
    			</div>
    			</a>
    		</div>
              

    		<div class="col-sm-3">
    			<a href="display_user.jsp">
    			<div class="well">
    				Display User
    			</div>
    			</a>
    		</div>

    		<div class="col-sm-3">
    			<a href="display_for_update.jsp">
    			<div class="well">
    				Update User
    			</div>
    			</a>
    		</div>


    		<div class="col-sm-3">
    			<a href="display_for_remove.jsp">
    			<div class="well">
    				Remove User
    			</div>
    			</a>
    		</div>

    	</div><!--end of 1st row-->


        <div class="row">
    		<div class="col-sm-3">
    			<a href="petty_cash_entry.html">
    			<div class="well">
    			   Petty Cash Entry
    			</div>
    			</a>
    		</div>

    		<div class="col-sm-3">
    			<a href="display_petty_cash.jsp">
    			<div class="well">
    				Display Petty Cash Entry
    			</div>
    			</a>
    		</div>
              

    		<div class="col-sm-3">
    			<a href="add_ticketing.html">
    			<div class="well">
    				Add Ticketing Entry
    			</div>
    			</a>
    		</div>

    		<div class="col-sm-3">
    			<a href="display_ticketing.jsp">
    			<div class="well">
    				Display Ticketing Entry
    			</div>
    			</a>
    		</div><!--end of 2nd row-->
    	</div>	


    	<div class="row">
    		<div class="col-sm-3">
    			<a href="display_payment_entry.jsp">
    			<div class="well">
    			  Display Client Payment
    			</div>
    			</a>
    		</div>

    		<div class="col-sm-3">
    			<a href="display_admin_vendor_payment.jsp">
    			<div class="well">
    			   Display Vendor Payment
    			</div>
    			</a>
    		</div>
              

    		
    		<div class="col-sm-3">
    			<a href="display_client_payment_entry_admin.jsp">
    			<div class="well">
    			    Display Employee Payment
    			</div>
    			</a>
    		</div>

    		
    		<div class="col-sm-3">
    			<a href="ledgerbook.jsp">
    			<div class="well">
    				Ledger Book
    			</div>
    			</a>
    		</div>


    		
        </div><!--end of row div-->
    	
    </div>		<!--end of container fluid-->
		
	

</body>
</html>