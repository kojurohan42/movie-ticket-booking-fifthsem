<?php
$newdate=date("Y-m-d");
 $sql="DELETE FROM `showorder` WHERE `showorder`.`date` < '$newdate'";
 mysqli_query($conn, $sql);
 
?>