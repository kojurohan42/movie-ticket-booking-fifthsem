<?php include 'header.php';?>
<!DOCTYPE html>
<html>
<head>
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
		.wrapper >div:nth-child(odd){

		}
		.wrapper>p{
			background:#eee;
			padding:0em;
		}

	</style>
	</head>
	<body>
		<?php



	$movieId=$_SESSION['movieId'];
		$conn = mysqli_connect('localhost','root','','project_movie');
		if(isset($_GET['var'])){
			
			$a=$_GET['var'];
			$sql="select * from hall1 where seatnumber='$a' ";
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
			$sql="update hall1 set name ='$name',email='$email',date='$date' where seatnumber='$a' ";
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
					<a href="ticket.php?var=A<?php echo $i; ?>"> A <?php echo $i ?>
					<?php
					$time1="A".$i;
					$sql="select * from hall1 where seatnumber='$time1' ";
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
</div><?php

			}
			for ($i=1;$i<=9;$i++){
				
				?>
				<div>
					<a href="ticket.php?var=B<?php echo $i; ?>"> B <?php echo $i ?>
					<?php
					$time1="B".$i;
					$sql="select * from hall1 where seatnumber='$time1' ";
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
					<a href="ticket.php?var=C<?php echo $i; ?>"> C <?php echo $i ?>
					<?php
					$time1="C".$i;
					$sql="select * from hall1 where seatnumber='$time1' ";
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
					<a href="ticket.php?var=D<?php echo $i; ?>"> D <?php echo $i ?>
					<?php
					$time1="D".$i;
					$sql="select * from hall1 where seatnumber='$time1' ";
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
</div><?php  }


 	echo "<form action='ticketProcessing.php' method='post' >
                        <input type='hidden' name='movieId' value='".$movieId."'>
                        <input type='submit'  class='btn btn-primary btn-xs btn-block' type='submit' value='Confirm Ticket' name='submit'>
                      </form>";



?>
</div>
			

		</body>
</html>