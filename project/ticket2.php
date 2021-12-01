<?php include 'db.php'?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="style3.css" />
	<style>
		.wrapper{
		display:grid;
		grid-template-columns: repeat(9, 0.5fr);
		grid-gap: 1em;
		grid-auto-rows: minmax(5px, auto);

		}
		.wrapper1{
			display:grid;
			grid-template-columns:repeat(11, 0fr);
			grid-gap: 1em;
			grid-auto-rows: minmax(5px, auto);
		}
		.wrapper > div{

			padding:0.5em;
		}
		
		.wrapper>p{
			background:#eee;
			padding:0em;
		}

	</style>
	<?php 
	$movieId=$_SESSION['movieId'];

$date=$_POST['date'];

$time=$_POST['timeSlot'];

$theater=$_POST['theater'];
$dt=strtotime($date);
$day=date('D',$dt);
$th="";
if(strcmp($day,"Sun")==0){
    if(strcmp($time,"8:00am")==0){
        $th="hall11";
    }
    else if(strcmp($time,"11:00am")==0){
        $th="hall12";
    }
    else{
        $th="hall13";
    }

}
else if(strcmp($day,"Sun")==0){
    if(strcmp($time,"8:00am")==0){
        $th="hall21";
    }
    else if(strcmp($time,"11:00am")==0){
        $th="hall22";
    }
    else{
        $th="hall23";
    }
}
else if(strcmp($day,"Mon")==0){
    if(strcmp($time,"8:00am")==0){
        $th="hall31";
    }
    else if(strcmp($time,"11:00am")==0){
        $th="hall32";
    }
    else{
        $th="hall33";
    }
}
else if(strcmp($day,"Tue")==0){
    if(strcmp($time,"8:00am")==0){
        $th="hall41";
    }
    else if(strcmp($time,"11:00am")==0){
        $th="hall42";
    }
    else{
        $th="hall43";
    }
}
else if(strcmp($day,"Thu")==0){
    if(strcmp($time,"8:00am")==0){
        $th="hall51";
    }
    else if(strcmp($time,"11:00am")==0){
        $th="hall52";
    }
    else{
        $th="hall53";
    }
}
else if(strcmp($day,"Fri")==0){
    if(strcmp($time,"8:00am")==0){
        $th="hall61";
    }
    else if(strcmp($time,"11:00am")==0){
        $th="hall62";
    }
    else{
        $th="hall63";
    }
}
else{
    if(strcmp($time,"8:00am")==0){
        $th="hall71";
    }
    else if(strcmp($time,"11:00am")==0){
        $th="hall72";
    }
    else{
        $th="hall73";
    }
}

$username=$_SESSION['username'];
?>

  </head>
  <body>
    

    <ul class="showcase">
      <li>
        <div class="seat"></div>
        <small>N/A</small>
      </li>
      <li>
        <div class="seat selected"></div>
        <small>Selected</small>
      </li>
      <li>
        <div class="seat occupied"></div>
        <small>Occupied</small>
      </li>
    </ul>

    <div class="container">
      <div class="screen"></div>
<?php
$te="";
for($i=1; $i<=4; $i++){
	if($i==1)
	$te="A";
	else if($i==2)
	$te="B";
	else if($i==3)
	$te="C";
	else
	$te="D";?>
<div class="row">
<?php for($j=1; $j<=9; $j++){

		$time1=$te.$j;
		$sql="select * from ".$th." where seatnumber='$time1' ";
		$result= mysqli_query($conn, $sql);
		$res=mysqli_fetch_assoc($result);
		if($res['name']=="notbooked"){
			?>
			<div class="seat">  </div>
			
			<?php
		}
		else{
			?>
			<div class="seat occupied"></div>
			<?php
		}   
         ?>
         <!-- <div id="seats"><?php echo $time1?></div> -->
	<?php
    }

	
?>	
</div>  
<?php
}  

?>
	</div>
	<?php 
	
	echo "<form action='ticketConfirmation.php' method='post' >
	 					<input type='hidden' name='movieId' value='".$movieId."'>
						<input type='hidden' name='date' value='".$date."'>
						<input type='hidden' name='timeSlot' value='".$time."'>
						<input type='hidden' name='theater' value='".$theater."'>
						<input type='hidden' name='count' id='count' value=''>
						<input type='hidden' name='seat' id='seat' value=''>
                        <input type='submit'  class='btn btn-primary btn-xs btn-block' type='submit' value='Confirm Ticket' name='submit'>
                      </form>";

					

?>


    <script src="script.js"></script>
	
  </body>
</html>