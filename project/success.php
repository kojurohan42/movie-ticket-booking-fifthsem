<?php
include_once 'header.php';  

$ref = $_GET['refId'];

$user=$_SESSION['time'];
$pid=$conn->query("select pid from esewa  where tm='".$user."';");
$row=$pid->fetch_object();
$ID=$row->pid;

$data =[
    'amt'=>$actualamount,
    'rid'=> $ref,
    'pid'=>$ID,
    'scd'=> $merchant_code
];

    $curl = curl_init($fraudcheck_url);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($curl);
    echo $response;
 
    curl_close($curl);
    header("Location: ticketprint.php");

    
    // if(strpos(  $response, "Success") !== false){
    //     header("Location: https://www.google.com/");
    // } else{
    //      header("Location: index.php");
    // }
    
?>