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

    		if(document.f1.vendor_name.value=="")
            {
              alert("Please Enter the Vendor Name");
              document.f1.vendor_name.focus();
              return false;
            }

            var data=/^[A-Za-z]+$/;

            if(!document.f1.vendor_name.value.match(data))
            {

            alert("Please Enter Valid Vendor Name");

            document.f1.vendor_name.focus();

            return false;
            }

            //validation for payment amount

            if(document.f1.pay_amt.value=="")
            {

            alert("Please Enter Payment");

            document.f1.pay_amt.focus();

            return false;
           }

    	   //validation for radio button

    	   if(document.f1.payment_mode[0].checked==false && document.f1.payment_mode[1].checked==false && document.f1.payment_mode[2].checked==false)
    	   {
    		  alert("Please Select Radio button");
    		  return false;
           }
           
           //valiadtion for payment by
           
           
    	    if(document.f1.pay_by.value=="")
            {
              alert("Please Enter The Payment By");
              document.f1.pay_by.focus();
              return false;
            }

            var data=/^[A-Za-z]+$/;

            if(!document.f1.pay_by.value.match(data))
            {

            alert("Please Enter Valid Payment By");

            document.f1.pay_by.focus();

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
        
        String sql ="select * from vendor_payment_entry where VENDOR_ID=" +id;
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
          %>
          <html> 
              <body>
          <form name="f1" action="update_vendor_payment.jsp" method="POST">
    		<h3 class="text-center">Update Vendor Payment</h3>
    		<div class="form-group">
                    <input type="hidden" name="vendor_id" value="<%=rs.getInt("VENDOR_ID")%>">
                </div>   
                
                <div class="form-group">
                    <label>Vendor Name</label>
    			<input type="text" name="vendor_name" class="form-control" value="<%=rs.getString("VENDOR_NAME")%>">
    		</div>
                
                <div class="form-group">
                    <label>Payment Date</label>
                    <input type="text" name="pay_date"  class="form-control" value="<%=rs.getString("PAYMENT_DATE")%>">
    		</div>

    		<div class="form-group">
                    <label>Payment Amount</label>
    			<input type="number" name="pay_amt" class="form-control" value="<%=rs.getInt("PAYMENT_AMOUNT")%>">
    		</div>

    		
                <div class="form-group">
                <label>Payment Mode</label>

                <div class="radio-inline">
                    <input type="radio" name="payment_mode" value="Netbanking"<%=rs.getString("PAYMENT_MODE").equals("Netbanking")?"checked":"unchecked"%>>Netbanking
                </div>

                <div class="radio-inline">
                    <input type="radio" name="payment_mode" value="UPI" <%=rs.getString("PAYMENT_MODE").equals("UPI")?"checked":"unchecked"%>>UPI
                </div>

                <div class="radio-inline">
                    <input type="radio" name="payment_mode" value="By Cheque" <%=rs.getString("PAYMENT_MODE").equals("By Cheque")?"checked":"unchecked"%>>By Cheque
                </div>
                
                <div class="form-group">
                    <label>Payment By</label>
    			<input type="text" name="pay_by"  class="form-control" value="<%=rs.getString("PAYMENT_BY")%>"> 
    		</div>

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