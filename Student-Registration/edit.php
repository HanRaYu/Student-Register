<?php
include('config.php');

$id = $_GET['id'];

if(isset($_POST['submit']))
{
	//infor_student
	//Information Student
	
	$card_no = $_POST['card_no'];
	$kh_name = $_POST['kh_name'];
	$latin_name = $_POST['latin_name'];
	$stu_sex = $_POST['sex'];
	$stu_dob = $_POST['dob'];
	$stu_ethnicity = $_POST['ethnicity'];
	$stu_nationality = $_POST['nationality'];
	$stu_status = $_POST['status'];
	$stu_occupation = $_POST['occupation'];
	$stu_phone = $_POST['phone'];
	$stu_email = $_POST['email'];
	$stu_fb = $_POST['facebook'];
	$bacii_num = $_POST['bacii_num'];
	$bacii_grade = $_POST['bacii_grade'];
	$bacii_session = $_POST['bacii_session'];
	$exam_center = $_POST['exam_center'];
	$from_school = $_POST['from_school'];
	$pro_school = $_POST['province_school'];
	
	//information of register

	$level_degree = $_POST['level_degree'];
	$major = $_POST['major'];
	$faculty = $_POST['faculty'];
	$i_province = $_POST['i_province'];
	$year_study = $_POST['year_study'];
	$training_level = $_POST['training_level'];
	$study_in = $_POST['study_in'];
	$semester = $_POST['semester'];
	$gen_stu = $_POST['gen_stu'];
	$t_study = $_POST['t_study'];
	$ven_study = $_POST['ven_study'];
	$type_study = $_POST['type_study'];
	$leader_name = $_POST['leader_name'];
	$num_scholarship = $_POST['num_scholarship'];


	//Study history

	$primary_school = $_POST['primary_school'];
	$primary_in_out = $_POST['primary_in_out'];
	$primary_grade = $_POST['primary_grade'];
	$primary_degree = $_POST['primary_degree'];

	$secondary_school = $_POST['secondary_school'];
	$secondary_in_out = $_POST['secondary_in_out'];
	$secondary_grade = $_POST['secondary_grade'];
	$secondary_degree = $_POST['secondary_degree'];

	$high_school = $_POST['high_school'];
	$high_in_out = $_POST['high_in_out'];
	$high_grade = $_POST['high_grade'];
	$high_degree = $_POST['high_degree'];

	$university = $_POST['university'];
	$university_in_out = $_POST['university_in_out'];
	$u_year = $_POST['u_year'];
	$u_degree = $_POST['u_degree'];


	//Place of birth

	$home_num = $_POST['home_num'];
	$street = $_POST['street'];
	$village = $_POST['village'];
	$commune = $_POST['commune'];
	$district = $_POST['district'];
	$province = $_POST['province'];

	//Live current

	$lc_home_num = $_POST['lc_home_num'];
	$lc_street = $_POST['lc_street'];
	$lc_village = $_POST['lc_village'];
	$lc_commune = $_POST['lc_commune'];
	$lc_district = $_POST['lc_district'];
	$lc_province = $_POST['lc_province'];


	//information parent
	$fa_name = $_POST['fa_name'];
	$fa_latin_name = $_POST['fa_latin_name'];
	$fa_status = $_POST['fa_status'];
	$fa_training_level = $_POST['fa_training_level'];
	$fa_occ = $_POST['fa_occ'];
	$fa_og = $_POST['fa_og'];
	$fa_email = $_POST['fa_email'];
	$fa_phone = $_POST['fa_phone'];
	$fa_fb = $_POST['fa_fb'];


	$mo_name = $_POST['mo_name'];
	$mo_latin_name = $_POST['mo_latin_name'];
	$mo_status = $_POST['mo_status'];
	$mo_training_level = $_POST['mo_training_level'];
	$mo_occ = $_POST['mo_occ'];
	$mo_og = $_POST['mo_og'];
	$mo_email = $_POST['mo_email'];
	$mo_phone = $_POST['mo_phone'];
	$mo_fb = $_POST['mo_fb'];


	//Information siblings

	$sib_name = $_POST['sib_name'];
	$sib_sex = $_POST['sib_sex'];
	$sib_status = $_POST['sib_status'];
	$sib_training_level = $_POST['sib_training_level'];
	$sib_occ = $_POST['sib_occ'];
	$sib_og = $_POST['sib_og'];
	$sib_phone = $_POST['sib_phone'];

	//image upload

	$msg = "";
	$photo = $_FILES['photo']['name'];
	$target = "upload_images/".basename($photo);

	if (move_uploaded_file($_FILES['photo']['tmp_name'], $target)) {
  		$msg = "photo uploaded successfully";
  	}else{
  		$msg = "Failed to upload photo";
  	}


	//check duplicate data

	// $get_data = "SELECT * FROM infor_student";
	// $run_data = mysqli_query($con,$get_data);
	
	// while($row = mysqli_fetch_array($run_data))
	// {
	//   $card_no_stu = $row['card_no'];
	//   $stu_phone_stu = $row['phone'];
	// }

	// if($card_no == $card_no_stu || $stu_phone == $stu_phone_stu){
	//   die('ទិន្នន័យជាន់គ្នា!');
	//   header('location:index.php');
	// }
	// else{
	//update infor_student

	$update = "UPDATE infor_student SET card_no='$card_no', kh_name = '$kh_name', latin_name = '$latin_name', sex = '$stu_sex', dob = '$stu_dob', ethnicity = '$stu_ethnicity', nationality = '$stu_nationality', status = '$stu_status', occupation = '$stu_occupation', phone = '$stu_phone', email = '$stu_email', facebook = '$stu_fb', bacii_num = '$bacii_num', bacii_grade = '$bacii_grade', bacii_session = '$bacii_session', exam_center = '$exam_center', from_school = '$from_school', province_school = '$pro_school', photo = '$photo' WHERE id=$id ";
	$run_update = mysqli_query($con,$update);

	//update infor_register

	$update = "UPDATE infor_register SET level_degree='$level_degree', major = '$major', faculty = '$faculty', province = '$i_province', year_study = '$year_study', training_level = '$training_level', study_in = '$study_in', semester = '$semester', gen_stu = '$gen_stu', t_study = '$t_study', ven_study = '$ven_study', type_study = '$type_study', leader_name = '$leader_name', num_scholarship = '$num_scholarship' WHERE reg_id=$id ";
	$run_update = mysqli_query($con,$update);

	//Update study history

	$update = "UPDATE study_history SET primary_school='$primary_school', primary_in_out = '$primary_in_out', primary_grade = '$primary_grade', primary_degree = '$primary_degree', secondary_school = '$secondary_school', secondary_in_out = '$secondary_in_out', secondary_grade = '$secondary_grade', secondary_degree = '$secondary_degree', high_school = '$high_school', high_in_out = '$high_in_out', high_grade = '$high_grade', high_degree = '$high_degree', university = '$university', university_in_out = '$university_in_out', u_year = '$u_year', u_degree = '$u_degree'  WHERE id=$id ";
	$run_update = mysqli_query($con,$update);

	//Update Place of birth

	$update = "UPDATE place_of_birth SET home_num='$home_num', street = '$street', village = '$village', commune = '$commune', district = '$district', province = '$province'  WHERE id=$id ";
	$run_update = mysqli_query($con,$update);

	//Update Live Current

	$update = "UPDATE live_current SET home_num='$lc_home_num', street = '$lc_street', village = '$lc_village', commune = '$lc_commune', district = '$lc_district', province = '$lc_province'  WHERE id=$id ";
	$run_update = mysqli_query($con,$update);

	//Update Infor Parent

	$update = "UPDATE infor_parents SET father_name='$fa_name', father_latin = '$fa_latin_name', fa_status = '$fa_status', fa_training_level = '$fa_training_level', fa_occ = '$fa_occ', fa_og = '$fa_og', fa_email = '$fa_email', fa_phone = '$fa_phone', fa_fb = '$fa_fb', mother_name = '$mo_name', mother_latin = '$mo_latin_name', mo_status = '$mo_status', mo_training_level = '$mo_training_level', mo_occ = '$mo_occ', mo_og = '$mo_og', mo_email = '$mo_email', mo_phone = '$mo_phone', mo_fb = '$mo_fb'  WHERE id=$id ";
	$run_update = mysqli_query($con,$update);

	//Update infor Sibling

	$update = "UPDATE infor_siblings SET sib_name ='$sib_name', sib_sex = '$sib_sex', sib_status = '$sib_status', sib_training_level = '$sib_training_level', sib_occ = '$sib_occ', sib_og = '$sib_og', sib_phone = '$sib_phone'  WHERE id=$id ";
	$run_update = mysqli_query($con,$update);

	if($run_update){
		header('location:index.php');
	}else{
		echo "Data not update";
	}
}
//}

?>