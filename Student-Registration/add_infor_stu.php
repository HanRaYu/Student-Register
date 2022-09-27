<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
// database connection
include('config.php');

$added = false;


//Add  new student code 

if(isset($_POST['submit'])){

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

	//   $get_data = "SELECT * FROM infor_student";
	//   $run_data = mysqli_query($con,$get_data);
	  
	//   while($row = mysqli_fetch_array($run_data))
	//   {
	// 	$row['card_no'];
	// 	$row['phone'];
	//   }

	//   if($card_no == $row['card_no'] || $stu_phone == $row['phone']){
	// 	die('ទិន្នន័យជាន់គ្នា!');
	// 	header('location:index.php');
	//   }
	//   else{
	// insert into infor_student

  	$insert_data = "INSERT INTO infor_student(card_no, kh_name, latin_name, sex, dob, ethnicity, nationality, status, occupation, phone, email, facebook, bacii_num, bacii_grade, bacii_session, exam_center, from_school, province_school,photo,uploaded) VALUES ('$card_no','$kh_name','$latin_name','$stu_sex','$stu_dob','$stu_ethnicity','$stu_nationality','$stu_status','$stu_occupation','$stu_phone','$stu_email','$stu_fb','$bacii_num','$bacii_grade','$bacii_session','$exam_center','$from_school','$pro_school','$photo',NOW())";
  	$run_data = mysqli_query($con,$insert_data);
	

  	if($run_data){
		$stu_id = $con->insert_id;
		$added = true;
  	}else{
  		echo "<div class='modal-dialog modal-lg text-danger'>ទិន្នន័យមិនត្រូវបានបញ្ចូល!</div>";
  	}

	//end


	// insert into infor_register

	$insert_data = "INSERT INTO infor_register(stu_id, level_degree, major, faculty, province, year_study, training_level, study_in, semester, gen_stu, t_study, ven_study, type_study, leader_name, num_scholarship) VALUES ('$stu_id','$level_degree','$major','$faculty','$i_province','$year_study','$training_level','$study_in','$semester','$gen_stu','$t_study','$ven_study','$type_study','$leader_name','$num_scholarship')";
	$run_data = mysqli_query($con,$insert_data);

	if($run_data){
		$added = true;
	}else{
		echo "<div class='modal-dialog modal-lg text-danger'>ព័ត៌មានចុះឈ្មោះចូលរៀនមិនត្រូវបានបញ្ចូល!</div>";
	}

  //end Infor_register

	//Study History

  $insert_data = "INSERT INTO study_history(stu_id, primary_school,primary_in_out, primary_grade, primary_degree, secondary_school, secondary_in_out, secondary_grade, secondary_degree, high_school, high_in_out, high_grade, high_degree, university, university_in_out, u_year,u_degree) VALUES ('$stu_id','$primary_school','$primary_in_out','$primary_grade','$primary_degree','$secondary_school','$secondary_in_out','$secondary_grade','$secondary_degree','$high_school','$high_in_out','$high_grade','$high_degree','$university','$university_in_out','$u_year','$u_degree')";
	$run_data = mysqli_query($con,$insert_data);

	if($run_data){
		$added = true;
	}else{
		echo "<div class='modal-dialog modal-lg text-danger'>ប្រវត្តការសិក្សាមិនត្រូវបានបញ្ចូល!</div>";
	}
//end study history

	//Place of Birth

	$insert_data = "INSERT INTO place_of_birth(stu_id, pob_home_num,pob_street, pob_village, pob_commune, pob_district, pob_province) VALUES ('$stu_id','$home_num','$street','$village','$commune','$district','$province')";
	$run_data = mysqli_query($con,$insert_data);

	if($run_data){
		$added = true;
	}else{
		echo "<div class='modal-dialog modal-lg text-danger'>ទីកន្លែងកំណើតមិនត្រូវបានបញ្ចូល!</div>";
	}
//end Place of Birth

//Live Current

$insert_data = "INSERT INTO live_current(stu_id, lc_home_num, lc_street, lc_village, lc_commune, lc_district, lc_province) VALUES ('$stu_id','$lc_home_num','$lc_street','$lc_village','$lc_commune','$lc_district','$lc_province')";
$run_data = mysqli_query($con,$insert_data);

if($run_data){
	$added = true;
}else{
	echo "<div class='modal-dialog modal-lg text-danger'>ទីកន្លែងបច្ចុប្បន្នមិនត្រូវបានបញ្ចូល!</div>";
}
//end Live Current

//information parent

$insert_data = "INSERT INTO infor_parents(stu_id, father_name, father_latin, fa_status, fa_training_level, fa_occ, fa_og, fa_email, fa_phone, fa_fb, mother_name, mother_latin, mo_status, mo_training_level, mo_occ, mo_og, mo_email, mo_phone, mo_fb) VALUES ('$stu_id','$fa_name','$fa_latin_name','$fa_status','$fa_training_level','$fa_occ','$fa_og', '$fa_email', '$fa_phone', '$mo_fb', '$mo_name','$mo_latin_name','$mo_status','$mo_training_level','$mo_occ','$mo_og', '$mo_email', '$mo_phone', '$mo_fb')";
$run_data = mysqli_query($con,$insert_data);

if($run_data){
	$added = true;
}else{
	echo "<div class='modal-dialog modal-lg text-danger'>ព័ត៌មានឪពុកម្តាយមិនត្រូវបានបញ្ចូល!</div>";
}
//end information parent

//infor_siblings

$insert_data = "INSERT INTO infor_siblings(stu_id, sib_name, sib_sex, sib_status, sib_training_level, sib_occ, sib_og, sib_phone) VALUES ('$stu_id','$sib_name','$sib_sex','$sib_status','$sib_training_level','$sib_occ','$sib_og', '$sib_phone')";
$run_data = mysqli_query($con,$insert_data);

if($run_data){
	$added = true;
}else{
	echo "<div class='modal-dialog modal-lg text-danger'>បងប្អូនបង្កើតមិនត្រូវបានបញ្ចូល!</div>";
}
//end infor_siblings

}
//}
?>