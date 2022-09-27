<?php

include('config.php');
$id = $_GET['id'];
$delete = "DELETE FROM infor_student WHERE id = $id";
$run_data = mysqli_query($con,$delete);


$delete = "DELETE FROM infor_parents WHERE id = $id";

$run_data = mysqli_query($con,$delete);


$delete = "DELETE FROM infor_register WHERE id = $id";

$run_data = mysqli_query($con,$delete);


$delete = "DELETE FROM infor_siblings WHERE id = $id";

$run_data = mysqli_query($con,$delete);


$delete = "DELETE FROM live_current WHERE id = $id";

$run_data = mysqli_query($con,$delete);


$delete = "DELETE FROM place_of_birth WHERE id = $id";

$run_data = mysqli_query($con,$delete);


$delete = "DELETE FROM study_history WHERE id = $id";

$run_data = mysqli_query($con,$delete);

if($run_data){
	header('location:index.php');
}else{
	echo "Do not Delete";
}


?>