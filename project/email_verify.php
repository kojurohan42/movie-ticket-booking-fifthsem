<?php include('server.php') ?>

<!DOCTYPE html>
<html>
<head>
  <title>Email Verification</title>
  <link rel="stylesheet" type="text/css" href="login.css">

</head>
<body>
  <div class="header">
    
  </div>
   
  <form method="post" action="email_verify.php" >
     <?php include('errors.php'); ?>
    

  
    <div class="loginbox">
    
    
   
    

       <h1>Email-Verification</h1>
       
        
            <p>OTP</p>
            <input type="text" name="otp"  placeholder="Enter the OTP" required>
            
          
            <input type="submit" name="verify_email" class="login_user" value="Verify Email">
            

          
        
  </form>
</body>
</html>