<!----edit Data--->
<?php
//infor_student
$get_data = "SELECT * FROM infor_student,infor_register,study_history,place_of_birth,live_current,infor_parents,infor_siblings";
$run_data = mysqli_query($con,$get_data);

while($row = mysqli_fetch_array($run_data))
{
  //infor student
  	$id = $row['id'];
	$card_no = $row['card_no'];
	$kh_name = $row['kh_name'];
	$latin_name = $row['latin_name'];
	$stu_sex = $row['sex'];
	$stu_dob = $row['dob'];
	$stu_ethnicity = $row['ethnicity'];
	$stu_nationality = $row['nationality'];
	$stu_status = $row['status'];
	$stu_occupation = $row['occupation'];
	$stu_phone = $row['phone'];
	$stu_email = $row['email'];
	$stu_fb = $row['facebook'];
	$bacii_num = $row['bacii_num'];
	$bacii_grade = $row['bacii_grade'];
	$bacii_session = $row['bacii_session'];
	$exam_center = $row['exam_center'];
	$from_school = $row['from_school'];
	$pro_school = $row['province_school'];
	$photo = $row['photo'];

  //infor_register

  $level_degree = $row['level_degree'];
	$major = $row['major'];
	$faculty = $row['faculty'];
	$i_province = $row['province'];
	$year_study = $row['year_study'];
	$training_level = $row['training_level'];
	$study_in = $row['study_in'];
	$semester = $row['semester'];
	$gen_stu = $row['gen_stu'];
	$t_study = $row['t_study'];
	$ven_study = $row['ven_study'];
	$type_study = $row['type_study'];
	$leader_name = $row['leader_name'];
	$num_scholarship = $row['num_scholarship'];

//Study history

	$primary_school = $row['primary_school'];
	$primary_in_out = $row['primary_in_out'];
	$primary_grade = $row['primary_grade'];
	$primary_degree = $row['primary_degree'];

	$secondary_school = $row['secondary_school'];
	$secondary_in_out = $row['secondary_in_out'];
	$secondary_grade = $row['secondary_grade'];
	$secondary_degree = $row['secondary_degree'];

	$high_school = $row['high_school'];
	$high_in_out = $row['high_in_out'];
	$high_grade = $row['high_grade'];
	$high_degree = $row['high_degree'];

	$university = $row['university'];
	$university_in_out = $row['university_in_out'];
	$u_year = $row['u_year'];
	$u_degree = $row['u_degree'];


	//Place of birth

	$home_num = $row['pob_home_num'];
	$street = $row['pob_street'];
	$village = $row['pob_village'];
	$commune = $row['pob_commune'];
	$district = $row['pob_district'];
	$province = $row['pob_province'];

	//Live current

	$lc_home_num = $row['lc_home_num'];
	$lc_street = $row['lc_street'];
	$lc_village = $row['lc_village'];
	$lc_commune = $row['lc_commune'];
	$lc_district = $row['lc_district'];
	$lc_province = $row['lc_province'];


	//information parent
	$fa_name = $row['father_name'];
	$fa_latin_name = $row['father_latin'];
	$fa_status = $row['fa_status'];
	$fa_training_level = $row['fa_training_level'];
	$fa_occ = $row['fa_occ'];
	$fa_og = $row['fa_og'];
	$fa_email = $row['fa_email'];
	$fa_phone = $row['fa_phone'];
	$fa_fb = $row['fa_fb'];


	$mo_name = $row['mother_name'];
	$mo_latin_name = $row['mother_latin'];
	$mo_status = $row['mo_status'];
	$mo_training_level = $row['mo_training_level'];
	$mo_occ = $row['mo_occ'];
	$mo_og = $row['mo_og'];
	$mo_email = $row['mo_email'];
	$mo_phone = $row['mo_phone'];
	$mo_fb = $row['mo_fb'];


	//Information siblings

	$sib_name = $row['sib_name'];
	$sib_sex = $row['sib_sex'];
	$sib_status = $row['sib_status'];
	$sib_training_level = $row['sib_training_level'];
	$sib_occ = $row['sib_occ'];
	$sib_og = $row['sib_og'];
	$sib_phone = $row['sib_phone'];


}



	echo "

<div id='edit$id' class='modal fade' role='dialog'>
  <div class='modal-dialog'>

    <!-- Modal content-->
    <div class='modal-content'>
      <div class='modal-header'>
             <button type='button' class='close' data-dismiss='modal'>&times;</button>
			 
             <h4 class='modal-title text-center'>កែប្រែ ទិន្នន័យ</h4> 
      </div>

      <div class='modal-body'>
        <form action='edit.php?id=$id' method='post' enctype='multipart/form-data'>

        
		<h4 class='text-primary'>ព័ត៌មាននិស្សិត</h4>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>លេខអត្តសញ្ញាណប័ណ្ណប្រជាជន.</label>
		<input type='text' class='form-control' name='card_no' placeholder='Enter your card number' maxlength='12' value='$card_no' required>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>លេខទូរស័ព្ទ</label>
		<input type='phone' class='form-control' name='phone' placeholder='Enter 10-digit phone number' maxlength='10' value='$stu_phone' required>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='firstname'>គោត្តនាម​ និងនាម</label>
		<input type='text' class='form-control' name='kh_name' placeholder='Enter your khmer name' value='$kh_name'>
		</div>
		<div class='form-group col-md-6'>
		<label for='lastname'>អក្សរឡាតាំង</label>
		<input type='text' class='form-control' name='latin_name' placeholder='Enter your latin name' value='$latin_name'>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>ភេទ</label>
		<select id='inputState' name='sex' class='form-control' value='$stu_sex'>
		<option selected>$stu_sex</option>
		<option>ប្រុស</option>
		<option>ស្រី</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ថ្ងៃខែឆ្នាំកំណើត</label>
		<input type='date' class='form-control' name='dob' placeholder='Date of Birth' value='$stu_dob'>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='fathername'>សញ្ជាតិ</label>
		<input type='text' class='form-control' name='ethnicity' placeholder='Enter ethnicity' value='$stu_ethnicity'>
		</div>
		<div class='form-group col-md-6'>
		<label for='mothername'>ជនជាតិ</label>
		<input type='text' class='form-control' name='nationality' placeholder='Enter nationality' value='$stu_nationality'>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>ស្ថានភាពគ្រួសារ</label>
		<select id='inputState' name='status' class='form-control' value='$stu_status'>
		<option selected>$stu_status</option>
		<option>នៅលីវ</option>
		<option>រៀបការ</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>មុខរបរ</label>
		<input type='text' class='form-control' name='occupation' placeholder='Enter occuption' value='$stu_occupation'>
		</div>
		</div>


		<div class='form-row' style='color: skyblue;'>
		<div class='form-group col-md-6'>
		<label for='email'>អ៊ីម៉ែល</label>
		<input type='email' class='form-control' name='email' placeholder='Enter Email' value='$stu_email'>
		</div>
		<div class='form-group col-md-6'>
		<label for='aadharno'>ហ្វេសប៊ុក</label>
		<input type='text' class='form-control' name='facebook' maxlength='12' placeholder='Enter facebook name' value='$stu_fb'>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>លេខសញ្ញាបត្រមធ្យមសិក្សាទុតិយភូមិ</label>
		<input type='text' class='form-control' name='bacii_num' placeholder='Enter your bacii number' maxlength='20' value='$bacii_num' required>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputState'>និទ្ទេសរួម</label>
		<select id='inputState' name='bacii_grade' class='form-control' value='$bacii_grade'>
		<option selected>$bacii_grade</option>
		<option>A</option>
		<option>B</option>
		<option>C</option>
		<option>D</option>
		<option>E</option>
		<option>F</option>
		</select>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>សម័យប្រឡង</label>
		<input type='date' class='form-control' name='bacii_session' placeholder='Date of Birth' value='$bacii_session'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>មណ្ឌលប្រឡង</label>
		<input type='text' class='form-control' name='exam_center' placeholder='Enter exam center' value='$exam_center'>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>អតីតសិស្សមកពីវិទ្យាល័យ</label>
		<input type='text' class='form-control' name='from_school' placeholder='Enter your high school name' value='$from_school'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ខេត្ត</label>
		<input type='text' class='form-control' name='province_school' placeholder='Enter province' value='$pro_school'>
		</div>
		</div>


		<!-- add information register -->

		<h4 class='text-primary'>ព័ត៌មាននៃការចុះឈ្មោះចូលរៀន</h4>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>កម្រិតនៃការសិក្សា</label>
		<select id='inputState' value='$level_degree' name='level_degree' class='form-control'>
		<option selected>$level_degree</option>
		<option>បរិញ្ញាបត្រ</option>
		<option>បរិញ្ញាបត្ររង</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ជំនាញ</label>
		<input type='text' class='form-control' value='$major' name='major' placeholder='Enter your major'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>មហាវិទ្យាល័យ</label>
		<select id='inputState' value='$faculty' name='faculty' class='form-control'>
		<option selected>$faculty</option>
		<option>មហាវិទ្យាល័យវិទ្យាសាស្រ្ត និងបច្ចេកវិទ្យា</option>
		<option>មហាវិទ្យាល័យសិល្បៈមនុស្សសាស្ត្រ និងភាសា</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ខេត្ត</label>
		<input type='text' class='form-control' value='$i_province' name='province' placeholder='Enter province'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>ឆ្នាំសិក្សា</label>
		<select id='inputState' value='$year_study' name='year_study' class='form-control'>
		<option selected>$year_study</option>
		<option>២០២២-២០២៣</option>
		<option>២០២៣-២០២៤</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតបណ្តុះបណ្តាល</label>
		<input type='text' class='form-control' value='$training_level' name='training_level' placeholder='Enter your training level'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>ចូលរៀនលើកទី</label>
		<select id='inputState' value='$study_in' name='study_in' class='form-control'>
		<option selected>$study_in</option>
		<option>១</option>
		<option>២</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputState'>ឆមាសទី</label>
		<select id='inputState' value='$semester' name='semester' class='form-control'>
		<option selected>$semester</option>
		<option>១</option>
		<option>២</option>
		</select>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>ជំនាន់ទី</label>
		<select id='inputState' value='$gen_stu' name='gen_stu' class='form-control'>
		<option selected>$gen_stu</option>
		<option>១២</option>
		<option>១៣</option>
		<option>១៥</option>
		<option>១៦</option>
		<option>១៧</option>
		<option>១៨</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputState'>ពេលសិក្សា</label>
		<select id='inputState' value='$t_study' name='t_study' class='form-control'>
		<option selected>$t_study</option>
		<option>ចន្ទ-សុក្រ</option>
		<option>សៅរ៍-អាទិត្យ</option>
		</select>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>វេណសិក្សា</label>
		<select id='inputState' value='$ven_study' name='ven_study' class='form-control'>
		<option selected>$ven_study</option>
		<option>ព្រឹក</option>
		<option>រសៀល</option>
		<option>យប់</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputState'>ប្រភេទសិក្សា</label>
		<select id='inputState' value='$type_study' name='type_study' class='form-control'>
		<option selected>$type_study</option>
		<option>អាហារូបករណ៍រដ្ឋ</option>
		<option>ទូទៅ</option>
		<option>តំបន់ដាច់ស្រយាល</option>
		<option>អាទិភាពនារី</option>
		<option>អាទិភាពក្រីក្រ</option>
		<option>អាហារូបករណ៍ថ្នាក់ដឹកនាំ</option>
		</select>
		</div>
		</div>


		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ថ្នាក់ដឹកនាំឈ្មោះ</label>
		<input type='text' class='form-control' value='$leader_name' name='leader_name' placeholder='Enter leader name'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ចំនួន% អាហារូបករណ៍</label>
		<input type='text' class='form-control' value='$num_scholarship' name='num_scholarship' placeholder='Enter percent scholarship'>
		</div>
		</div>

		<!-- Study history -->

		<h4 class='text-primary'>ប្រវត្តិការសិក្សា</h4>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>បឋមសិក្សា</label>
		<input type='text' class='form-control' value='$primary_school' name='primary_school' placeholder='Enter primary school'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ឆ្នាំចូល-ឆ្នាំចេញ</label>
		<input type='text' class='form-control' value='$primary_in_out' name='primary_in_out' placeholder='Enter year in & year out'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ថ្នាក់ទី</label>
		<input type='text' class='form-control' value='$primary_grade' name='primary_grade' placeholder='Enter grade'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតសញ្ញាបត្រ</label>
		<input type='text' class='form-control' value='$primary_degree' name='primary_degree' placeholder='Enter degree'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>អនុវិទ្យាល័យ</label>
		<input type='text' class='form-control' value='$secondary_school' name='secondary_school' placeholder='Enter secondary school'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ឆ្នាំចូល-ឆ្នាំចេញ</label>
		<input type='text' class='form-control' value='$secondary_in_out' name='secondary_in_out' placeholder='Enter year in & year out'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ថ្នាក់ទី</label>
		<input type='text' class='form-control' value='$secondary_grade' name='secondary_grade' placeholder='Enter grade'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតសញ្ញាបត្រ</label>
		<input type='text' class='form-control' value='$secondary_degree' name='secondary_degree' placeholder='Enter degree'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>វិទ្យាល័យ</label>
		<input type='text' class='form-control' value='$high_school' name='high_school' placeholder='Enter high school'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ឆ្នាំចូល-ឆ្នាំចេញ</label>
		<input type='text' class='form-control' value='$high_in_out' name='high_in_out' placeholder='Enter year in & year out'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ថ្នាក់ទី</label>
		<input type='text' class='form-control' value='$high_grade' name='high_grade' placeholder='Enter grade'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតសញ្ញាបត្រ</label>
		<input type='text' class='form-control' value='$high_degree' name='high_degree' placeholder='Enter degree'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>សាកលវិទ្យាល័យ</label>
		<input type='text' class='form-control' value='$university' name='university' placeholder='Enter university'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ឆ្នាំចូល-ឆ្នាំចេញ</label>
		<input type='text' class='form-control' value='$university_in_out' name='university_in_out' placeholder='Enter year in & year out'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ឆ្នាំទី</label>
		<input type='text' class='form-control' value='$u_year' name='u_year' placeholder='Enter year'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតសញ្ញាបត្រ</label>
		<input type='text' class='form-control' value='$u_degree' name='u_degree' placeholder='Enter university degree'>
		</div>
		</div>


		<!--Place of birth-->

		<h4 class='text-primary'>ទីកន្លែងកំណើត</h4>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ផ្ទះលេខ</label>
		<input type='text' class='form-control' value='$home_num' name='home_num' placeholder='Enter your home number'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ផ្លូវ</label>
		<input type='text' class='form-control' value='$street' name='street' placeholder='Enter street'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ភូមិ</label>
		<input type='text' class='form-control' value='$village' name='village' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ឃុំ</label>
		<input type='text' class='form-control' value='$commune' name='commune' placeholder='Enter commune'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ស្រុក</label>
		<input type='text' class='form-control' value='$district' name='village' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ខេត្ត</label>
		<input type='text' class='form-control' value='$province' name='province' placeholder='Enter province'>
		</div>
		</div>

		<!--Live current-->

		<h4 class='text-primary'>ទីលំនៅបច្ចុប្បន្ន</h4>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ផ្ទះលេខ</label>
		<input type='text' class='form-control' value='$lc_home_num' name='lc_home_num' placeholder='Enter your home number'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ផ្លូវ</label>
		<input type='text' class='form-control' value='$lc_street' name='lc_street' placeholder='Enter street'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ភូមិ</label>
		<input type='text' class='form-control' value='$lc_village' name='lc_village' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ឃុំ</label>
		<input type='text' class='form-control' value='$lc_commune' name='lc_commune' placeholder='Enter commune'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ស្រុក</label>
		<input type='text' class='form-control' value='$lc_district' name='lc_village' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ខេត្ត</label>
		<input type='text' class='form-control' value='$lc_province' name='lc_province' placeholder='Enter province'>
		</div>
		</div>

		<!--Infor parent-->

		<h4 class='text-primary'>ព័ត៌មានឪពុកម្តាយ</h4>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ឪពុកឈ្មោះ</label>
		<input type='text' class='form-control' value='$fa_name' name='fa_name' placeholder='Enter your home number'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>អក្សរឡាតាំង</label>
		<input type='text' class='form-control' value='$fa_latin_name' name='fa_latin_name' placeholder='Enter street'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ស្ថានភាព</label>
		<select id='inputState' value='$fa_status' name='fa_status' class='form-control'>
		<option selected>$fa_status</option>
		<option>ស្លាប់</option>
		<option>រស់</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតបណ្តុះបណ្តាល</label>
		<input type='text' class='form-control' value='$fa_training_level' name='fa_training_level' placeholder='Enter commune'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>មុខរបរ</label>
		<input type='text' class='form-control' value='$fa_occ' name='fa_occ' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>អង្គភាព</label>
		<input type='text' class='form-control' value='$fa_og' name='fa_og' placeholder='Enter district'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>អ៊ីម៉ែល</label>
		<input type='text' class='form-control' value='$fa_email' name='fa_email' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>លេខទូរស័ព្ទ</label>
		<input type='text' class='form-control' value='$fa_phone' name='fa_phone' placeholder='Enter district'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ហ្វេសប៊ុក</label>
		<input type='text' class='form-control' value='$fa_fb' name='fa_fb' placeholder='Enter district'>
		</div>
		</div>

		<!--mother-->

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ម្តាយឈ្មោះ</label>
		<input type='text' class='form-control' value='$mo_name' name='mo_name' placeholder='Enter your home number'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>អក្សរឡាតាំង</label>
		<input type='text' class='form-control' value='$mo_latin_name' name='mo_latin_name' placeholder='Enter street'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ស្ថានភាព</label>
		<select id='inputState' value='$mo_status' name='mo_status' class='form-control'>
		<option selected>$mo_status</option>
		<option>ស្លាប់</option>
		<option>រស់</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតបណ្តុះបណ្តាល</label>
		<input type='text' class='form-control' value='$mo_training_level' name='mo_training_level' placeholder='Enter commune'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>មុខរបរ</label>
		<input type='text' class='form-control' value='$mo_occ' name='mo_occ' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>អង្គភាព</label>
		<input type='text' class='form-control' value='$mo_og' name='mo_og' placeholder='Enter district'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>អ៊ីម៉ែល</label>
		<input type='text' class='form-control' value='$mo_email' name='mo_email' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>លេខទូរស័ព្ទ</label>
		<input type='text' class='form-control' value='$mo_phone' name='mo_phone' placeholder='Enter district'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ហ្វេសប៊ុក</label>
		<input type='text' class='form-control' value='$mo_fb' name='mo_fb' placeholder='Enter district'>
		</div>
		</div>

		<!--Information Sibling-->

		<h4 class='text-primary'>ព័ត៌មានបងប្អូនបង្កើត</h4>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>គោត្ត​ និងនាម</label>
		<input type='text' class='form-control' value='$sib_name' name='sib_name' placeholder='Enter your home number'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>ភេទ</label>
		<select id='inputState' value='$sib_sex' name='sib_sex' class='form-control'>
		<option selected>$sib_sex</option>
		<option>ប្រុស</option>
		<option>ស្រី</option>
		</select>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>ស្ថានភាព</label>
		<select id='inputState' value='$sib_status' name='sib_status' class='form-control'>
		<option selected>$sib_status</option>
		<option>ស្លាប់</option>
		<option>រស់</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>កម្រិតបណ្តុះបណ្តាល</label>
		<input type='text' class='form-control' value='$sib_training_level' name='sib_training_level' placeholder='Enter commune'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>មុខរបរ</label>
		<input type='text' class='form-control' value='$sib_occ' name='sib_occ' placeholder='Enter your village'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>អង្គភាព</label>
		<input type='text' class='form-control' value='$sib_og' name='sib_og' placeholder='Enter district'>
		</div>
		</div>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>លេខទូរស័ព្ទ</label>
		<input type='text' class='form-control' value='$sib_phone' name='sib_phone' placeholder='Enter district'>
		</div>
		</div>



		<!-- <div class='form-group'>
		<label for='family'>Family Member's</label>
			<textarea class='form-control' name='family' rows='3'></textarea>
		</div> -->

					
					<div class='form-group col-md-6'>
						<label>រូបថត</label>
						<input type='file' name='photo' value='$photo' class='form-control' >
						<img src = 'upload_images/$photo' style='width:50px; height:50px'>
					</div>

        	
        	 <input type='submit' name='submit' class='btn btn-info btn-large' value='កែប្រែ'>
        	
        	
        </form>
      </div>
      <div class='modal-footer'>
        <button type='button' class='btn btn-danger' data-dismiss='modal'>បិទ</button>
      </div>
    </div>
		
        
        
        
        
        
        
    
      </div>

    </div>

  </div>
</div>


	";



?>