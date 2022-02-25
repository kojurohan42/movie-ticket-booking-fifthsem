<?php 
error_reporting(0);
$otp=rand(11111,99999);
include('server.php'); 


    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    require 'C:\xampp\htdocs\movie-ticket-booking-fifthsem\project\mail\Exception.php';
    require 'C:\xampp\htdocs\movie-ticket-booking-fifthsem\project\mail\PHPMailer.php';
    require 'C:\xampp\htdocs\movie-ticket-booking-fifthsem\project\mail\SMTP.php';
//session_start();
$con=mysqli_connect('localhost','root','','project_movie');
$email="rukesh.shrestha545@gmail.com";
function debugger($data,$is_die=false){
	echo "</pre>";
	print_r($data);
	echo"<pre>";
	if($is_die) {
		exit();
	}
//$_POST['email'];

}
// debugger($_POST,true);
$res=mysqli_query($con,"select * from users where email='$email'");
$count=mysqli_num_rows($res);
if($count>0){
	//$otp=rand(11111,99999);
	mysqli_query($con,"update users  where email='$email'");
	$html="Your otp code for email verification is: " .$otp;
	

	$_SESSION['EMAIL']=$email;
	$_SESSION['otp']=$otp;

	smtp_mailer($email,'OTP Verification',$html);
	//echo "yes";
}
// else{
// 	echo "not_exist";
// }

function smtp_mailer($to,$subject, $msg){
	require_once("smtp/class.phpmailer.php");
	$mail = new PHPMailer(); 
	$mail->IsSMTP(); 
	$mail->SMTPDebug = 1; 
	$mail->SMTPAuth = true; 
	$mail->SMTPSecure = 'TLS'; 
	$mail->Host = "smtp.gmail.com";
	$mail->Port = 587; 
	$mail->IsHTML(true);
	$mail->CharSet = 'UTF-8';
	$mail->Username = "rukesh639@gmail.com";
	$mail->Password = "rs9860@1";
	$mail->SetFrom("rukesh639@gmail.com");
	$mail->Subject = $subject;
	$mail->Body =$msg;
	$mail->AddAddress($_POST['email']);
	if(!$mail->Send()){
		return 0;
	}else{
		return 1;
	}
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system PHP and MySQL</title>
  <link rel="stylesheet" type="text/css" href="css/rstyle.css">
</head>
<body>
	
  <div class="header">
	  
  	<h2 >Registration Form</h2>
  </div>
	
  <form action="" method="POST"   style=" width: 30%; margin: 50px auto 0px;">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  	  <label>Username</label>
  	  <input type="text" name="username" value="<?php echo $username; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="email" name="email" value="<?php echo $email; ?>">
  	</div>
	  

  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password_1">
  	</div>
  	<div class="input-group">
  	  <label>Confirm password</label>
  	  <input type="password" name="password_2">
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="login.php">Login</a>
  	</p>
  </form>
</body>
</html>