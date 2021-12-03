<html>
<head>
<style>
p.inline {display: inline-block;}
span { font-size: 13px;}
</style>
<style type="text/css" media="print">
    @page 
    {
        size: auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */

    }
</style>


  <meta name="viewport" content="width=device-width, initial-scale=1">
  
</head>
<body>
<?php
echo "<h3>Future Cinemas</h3>
<p>Kathmandu,Nepal</p> 
<p>989898989</p>
<table>
<tr>
<td>Username:</td>
<td>".$_GET['username']."</td>
</tr>
<tr>
<td>Movie name:</td>
<td>".$_GET['moviename']."</td>
</tr>
<tr>
<td>Theater:</td>
<td>".$_GET['theater']."</td>
</tr>
<tr>
<td>Date:</td>
<td>".$_GET['date']."</td>
</tr>
<tr>
<td>Time:</td>
<td>".$_GET['time']."</td>
</tr>
<tr>
<td>No of seats:</td>
<td>".$_GET['nseat']."</td>
</tr>
<tr>
<td>Seat no.:</td>
<td>".$_GET['seatnum']."</td>
</tr>
<tr>
<td>Ticket Price:</td>
<td>".$_GET['tprice']."</td>
</tr>

</table>
 
"; 
?>

    <div style="margin-left: 5%">
		<?php
		include 'barcode128.php';
		$product = $_GET['userId'];
			echo "<p class='inline'>".bar128(stripcslashes($product))."</p>&nbsp&nbsp&nbsp&nbsp";
		?><br>
		
	</div>
	<button onclick="window.print();" class="btn btn-primary" id="print-btn">Print</button>
	
</body>
</html>