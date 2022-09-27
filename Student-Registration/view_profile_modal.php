<style>
	h3{
		font-family: Khmer Os Muol Light;
	}
	i{
		font-family: Khmer OS Battambang;
	}
</style>
<?php
// <!-- profile modal start -->

$get_data = "SELECT infor_student.id, infor_student.card_no, infor_student.kh_name, infor_student.sex, infor_student.phone, infor_student.photo, infor_student.facebook, infor_student.email, infor_student.uploaded, infor_register.major, infor_register.gen_stu, infor_register.faculty, live_current.lc_home_num, live_current.lc_street, live_current.lc_village, live_current.lc_commune, live_current.lc_district, live_current.lc_province 
FROM infor_student
JOIN infor_register ON infor_register.id = infor_student.id JOIN live_current ON live_current.id = infor_register.id Where infor_student.id = $id";
$run_data = mysqli_query($con,$get_data);

while($row = mysqli_fetch_array($run_data))
{
	//infor student
	$id = $row['id'];
	$card_no = $row['card_no'];
	$kh_name = $row['kh_name'];
	$stu_sex = $row['sex'];
	$stu_phone = $row['phone'];
	$stu_email = $row['email'];
	$stu_fb = $row['facebook'];
	$photo = $row['photo'];
	$time = $row['uploaded'];

  	//infor_register

	$major = $row['major'];
	$faculty = $row['faculty'];
	$gen_stu = $row['gen_stu'];

	//Live current

	$lc_home_num = $row['lc_home_num'];
	$lc_street = $row['lc_street'];
	$lc_village = $row['lc_village'];
	$lc_commune = $row['lc_commune'];
	$lc_district = $row['lc_district'];
	$lc_province = $row['lc_province'];
   
	echo "

		<div class='modal fade' id='view$id' tabindex='-1' role='dialog' aria-labelledby='userViewModalLabel' aria-hidden='true'>
		<div class='modal-dialog'>
			<div class='modal-content'>
			<div class='modal-header'>
				<h5 class='modal-title text-center' id='exampleModalLabel'>Profile <i class='fa fa-user-circle-o' aria-hidden='true'></i></h5>
				<button type='button' class='close' data-dismiss='modal' aria-label='Close'>
				<span aria-hidden='true'>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
			<div class='container' id='profile'> 
				<div class='row'>
					<div class='col-sm-4 col-md-2'>
						<img src='upload_images/$photo' alt='' style='width: 150px; height: 190px;' ><br>
		
						<i class='fa fa-id-card' aria-hidden='true'></i> $card_no<br>
						<i class='fa fa-phone' aria-hidden='true'></i> $stu_phone <br>
						Issue Date : $time
					</div>
					<div class='col-sm-3 col-md-6'>
						<h3 class='text-primary'>$kh_name</h3>
						<p class='text-secondary'>
						
						<i class='fa fa-venus-mars' aria-hidden='true'> $stu_sex</i> 
						<br />
						<i class='fa fa-envelope-o' aria-hidden='true'> $stu_email</i> 
						<br />
						<div class='card' style='width: 18rem;'>
						<i class='fa fa-facebook-square' aria-hidden='true'> $stu_fb</i> 
						<br>
						<i class='fa fa-graduation-cap' aria-hidden='true'>$major</i> 
						<br />
						<i class='fa fa-cogs' aria-hidden='true'> $gen_stu</i> 
						
						</div>
						<i class='fa fa-briefcase' aria-hidden='true'> $faculty</i> 
						<br /> <br />
						<i class='fa fa-home' aria-hidden='true'> Address : $lc_home_num, $lc_street, $lc_village, $lc_commune,<br> $lc_district, $lc_province</i>
						
						</p>
						<!-- Split button -->
					</div>
				</div>

			</div>   
			</div>
			
			</form>
			</div>
		</div>
		</div> 


    ";
}


// <!-- profile modal end -->


?>