<?php 
include_once 'header.php'; 
// Change Info From Here


$user=$_SESSION['time'];
$pid=$conn->query("select pid from esewa  where tm='".$user."';");
$row=$pid->fetch_object();
$ID=$row->pid;


$epay_url = "https://uat.esewa.com.np/epay/main";
$pid = $ID;
$successurl = "http://localhost/project/success.php";
$failedurl = "http://localhost/project/failed.php";
$merchant_code = "EPAYTEST"; 
$fraudcheck_url = "https://uat.esewa.com.np/epay/transrec";

// For Amount Check
$actualamount = 1000;

?>