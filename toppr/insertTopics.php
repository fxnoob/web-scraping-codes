<?php
	require_once("mysql.php");  
	header("Access-Control-Allow-Origin:*");
	$topic = $_GET["topic"];
	$sub_id= $_GET["sub_id"];
	$class_name= $_GET["class_name"]; 
	$sql ="INSERT INTO `topics`(`cls_id`, `tps_name`) SELECT class.cls_id , '$topic' AS tps_name FROM class  WHERE  class.sub_id=$sub_id AND class.cls_name='".$class_name."'";
	echo $sql;
	$res = mysqli_query($mysql , $sql);
	if ($res) {
		echo "SUCCESS";
	}
	else{
		echo "NULL";
	}
?>
