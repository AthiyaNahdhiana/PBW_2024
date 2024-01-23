<?php
date_default_timezone_set('Asia/Jakarta');

$servername = "localhost";
$username = "id21766301_athiya";
$password = "2024_Hosting";
$db = "id21766301_webdailyjournal";

//create connection
$conn = new mysqli($servername,$username,$password,$db);

//check connection
if($conn->connect_error){
	die("Connection failed : ".$conn->connect_error);
}

//echo "Connected successfully<hr>";
?>