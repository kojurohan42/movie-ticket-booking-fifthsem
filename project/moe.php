<?php include 'header.php';?>
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
		$conn = mysqli_connect('localhost','root','','project_movie');
		if(isset($_GET['var'])){
			
			$a=$_GET['var'];
			$sql="select * from ".$th." where seatnumber='$a' ";
			$result= mysqli_query($conn,$sql);
			$res= mysqli_fetch_assoc($result);
			if($res['name']=="notbooked"){
				$name=$_SESSION['username'];
				$sql="select email from users where username='$name'";
			$result= mysqli_query($conn,$sql);
			$resu= mysqli_fetch_assoc($result);
			$email=$resu['email'];
			$date=date("Y/m/d");
		
			$time1="B1-1";
			$sql="update ".$th." set name ='$name',email='$email',date='$date' where seatnumber='$a' ";
			$result=mysqli_query($conn,$sql);
			
			if($result){
				?>
				<script>
					alert("Booking confirmed");
				</script>
				<?php
			}else
			{ ?>
				<script>
					alert("Already Booked");
				</script>
				<?php
			}
						}
						else{
							?>
							<script>
					alert("Already Booked");
				</script>
				<?php
						}

		}
		?>
		<div class="wrapper">
			<?php
			for ($i=1;$i<=9;$i++){
			
				?>
				<div>
					<a href="ticket2.php?var=A<?php echo $i; ?>"> A <?php echo $i ?>
					<?php
					$time1="A".$i;
					$sql="select * from ".$th." where seatnumber='$time1' ";
					$result= mysqli_query($conn,$sql);
					$res=mysqli_fetch_assoc($result);
					if($res['name']=="notbooked"){
						?>
						<img src ="img/seat.png" height="50em">
						<?php
					}
					else{
						?>
						<img src ="img/selected_seat.png" height="50em">
						<?php
					}
?>
</a>
</div><?php

			}
			for ($i=1;$i<=9;$i++){
				
				?>
				<div>
					<a href="ticket2.php?var=B<?php echo $i; ?>"> B <?php echo $i ?>
					<?php
					$time1="B".$i;
					$sql="select * from ".$th." where seatnumber='$time1' ";
					$result= mysqli_query($conn, $sql);
					$res=mysqli_fetch_assoc($result);
					if($res['name']=="notbooked"){
						?>
						<img src ="img/seat.png" height="50em">
						<?php
					}
					else{
						?>
						<img src ="img/selected_seat.png" height="50em">
						<?php
					}
?>	
</a>
</div>
<?php

			}
			for ($i=1;$i<=9;$i++){
				
				?>
				<div>
					<a href="ticket2.php?var=C<?php echo $i; ?>"> C <?php echo $i ?>
					<?php
					$time1="C".$i;
					$sql="select * from ".$th." where seatnumber='$time1' ";
					$result= mysqli_query($conn, $sql);
					$res=mysqli_fetch_assoc($result);
					if($res['name']=="notbooked"){
						?>
						<img src ="img/seat.png" height="50em">
						<?php
					}
					else{
						?>
						<img src ="img/selected_seat.png" height="50em">
						<?php
					}
?>	
</a>
</div>
<?php

			}
			for ($i=1;$i<=9;$i++){
				
				?>
				<div>
					<a href="ticket2.php?var=D<?php echo $i; ?>"> D <?php echo $i ?>
					<?php
					$time1="D".$i;
					$sql="select * from ".$th." where seatnumber='$time1' ";
					$result= mysqli_query($conn, $sql);
					$res=mysqli_fetch_assoc($result);
					if($res['name']=="notbooked"){
						?>
						<img src ="img/seat.png" height="50em">
						<?php
					}
					else{
						?>
						<img src ="img/selected_seat.png" height="50em">
						<?php
					}
                    <?php  
echo $date;

 	echo "<form action='ticketConfirmation.php' method='post' >
	 					<input type='hidden' name='movieId' value='".$movieId."'>
						<input type='hidden' name='date' value='".$date."'>
						<input type='hidden' name='timeSlot' value='".$time."'>
						<input type='hidden' name='theater' value='".$theater."'>

                        <input type='submit'  class='btn btn-primary btn-xs btn-block' type='submit' value='Confirm Ticket' name='submit'>
                      </form>";



?>