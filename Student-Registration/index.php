<?php
	include('add_infor_stu.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>Student Crud Operation</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>
		h4{
			font-family: Khmer Os Muol Light;
		}
		label{
			font-family: Khmer OS Battambang;
		}
		table{
			font-family: Khmer OS Battambang;
		}
		input,select,button{
			font-family: Khmer OS Battambang;
		}
	</style>
</head>
<body>

	<div class="container">
		<div class="text-center">
<a href="#" target="_blank"><img src="images/index.png" alt="" width="120px" ></a>
<h2 style="font-family: Khmer Os Muol Light;">សាកលវិទ្យាល័យជាតិមានជ័យ</h2>
</div>
<hr>


<!-- adding alert notification  -->
<?php
	if($added){
		echo "
		<div class='alert alert-success d-flex align-items-center' role='alert'>
		<div class=''text-center'>
			ទីន្នន័យត្រូវបានបញ្ចូលដោយជោគជ័យ!
		</div>
		</div>
		";
	}

?>





	<a href="logout.php" class="btn btn-success"><i class="fa fa-lock"></i> Logout</a>
	<button class="btn btn-success" type="button" data-toggle="modal" data-target="#myModal">
  	<i class="fa fa-plus"></i> បន្ថែមសិស្សថ្មី
  	</button>
  <a href="export.php" class="btn btn-success pull-right"><i class="fa fa-download"></i> Export Data</a>
  <hr>
		<table class="table table-bordered table-striped table-hover" id="myTable">
		<thead>
			<tr>
			   	<th class="text-center" scope="col">ល.រ</th>
				<th class="text-center" scope="col">រូបថត</th>
				<th class="text-center" scope="col">ឈ្មោះ</th>
				<th class="text-center" scope="col">ភេទ</th>
				<th class="text-center" scope="col">ជំនាញ</th>
				<th class="text-center" scope="col">ជំនាន់</th>
				<th class="text-center" scope="col">មហាវិទ្យាល័យ</th>
				<th class="text-center" scope="col">លេខទូរស័ព្ទ</th>
				<th class="text-center" scope="col">View</th>
				<th class="text-center" scope="col">Edit</th>
				<th class="text-center" scope="col">Delete</th>
			</tr>
		</thead>
			<?php

        	$get_data = "SELECT infor_student.id, infor_student.kh_name, infor_student.sex, infor_student.phone, infor_student.photo, infor_register.major, infor_register.gen_stu, infor_register.faculty 
			FROM infor_student JOIN infor_register ON infor_register.id = infor_student.id order by 1 desc";
        	$run_data = mysqli_query($con,$get_data);
			$i = 0;
        	while($row = mysqli_fetch_array($run_data))
        	{
				$sl = ++$i;
				$id = $row['id'];
				$kh_name = $row['kh_name'];
				$sex = $row['sex'];
				$stu_phone = $row['phone'];
        		$photo = $row['photo'];
				$major = $row['major'];
				$gen_stu = $row['gen_stu'];
				$faculty = $row['faculty'];
        		echo "

				<tr>
				<td class='text-center'>$sl</td>
				<td class='text-center'><img src = 'upload_images/$photo' style='width:40px; height:50px'></td>
				<td class='text-center'>$kh_name</td>
				<td class='text-center'>$sex</td>
				<td class='text-center'>$major</td>
				<td class='text-center'>$gen_stu</td>
				<td class='text-center'>$faculty</td>
				<td class='text-center'>$stu_phone</td>
			
				<td class='text-center'>
					<span>
					<a href='#' class='btn btn-success mr-3 profile' data-toggle='modal' data-target='#view$id' title='Prfile'><i class='fa fa-address-card-o' aria-hidden='true'></i></a>
					</span>
					
				</td>
				<td class='text-center'>
					<span>
					<a href='#' class='btn btn-warning mr-3 edituser' data-toggle='modal' data-target='#edit$id' title='Edit'><i class='fa fa-pencil-square-o fa-lg'></i></a>

					     
					    
					</span>
					
				</td>
				<td class='text-center'>
					<span>
					
						<a href='#' class='btn btn-danger deleteuser' title='Delete'>
						     <i class='fa fa-trash-o fa-lg' data-toggle='modal' data-target='#$id' style='' aria-hidden='true'></i>
						</a>
					</span>
					
				</td>
			</tr>


        		";
        	}

        	?>

			
			
		</table>
		<!-- <form method="post" action="export.php">
     <input type="submit" name="export" class="btn btn-success" value="Export Data" />
    </form> -->
	</div>


	<!---Add in modal---->

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
		<center><img src="images/index.png" width="100px" height="100px" alt=""></center>
    
      </div>
      <div class="modal-body">
	  <form method="POST" enctype="multipart/form-data">
			
			<!-- This is test for New Card Activate Form  -->
			<!-- This is Address with email id  -->
		
	<!-- add information student -->

<h4 class="text-primary">ព័ត៌មាននិស្សិត</h4>
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">លេខអត្តសញ្ញាណប័ណ្ណប្រជាជន.</label>
<input type="text" class="form-control" name="card_no" required placeholder="Enter your card number" maxlength="12">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">លេខទូរស័ព្ទ</label>
<input type="phone" class="form-control" name="phone" required placeholder="Enter 10-digit phone number" maxlength="10">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="firstname">គោត្តនាម​ និងនាម</label>
<input type="text" class="form-control" name="kh_name" required placeholder="Enter your khmer name">
</div>
<div class="form-group col-md-6">
<label for="lastname">អក្សរឡាតាំង</label>
<input type="text" class="form-control" name="latin_name" required placeholder="Enter your latin name">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">ភេទ</label>
<select id="inputState" name="sex" class="form-control">
  <option selected>ជ្រើសរើស</option>
  <option>ប្រុស</option>
  <option>ស្រី</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ថ្ងៃខែឆ្នាំកំណើត</label>
<input type="date" class="form-control" name="dob" required placeholder="Date of Birth">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="fathername">សញ្ជាតិ</label>
<input type="text" class="form-control" name="ethnicity" required placeholder="Enter your ethnicity">
</div>
<div class="form-group col-md-6">
<label for="mothername">ជនជាតិ</label>
<input type="text" class="form-control" name="nationality" required placeholder="Enter your nationality">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">ស្ថានភាពគ្រួសារ</label>
<select id="inputState" name="status" class="form-control">
  <option selected>ជ្រើសរើស</option>
  <option>នៅលីវ</option>
  <option>រៀបការ</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">មុខរបរ</label>
<input type="text" class="form-control" name="occupation" required placeholder="Enter your occuption">
</div>
</div>


<div class="form-row" style="color: skyblue;">
<div class="form-group col-md-6">
<label for="email">អ៊ីម៉ែល</label>
<input type="email" class="form-control" name="email" required placeholder="Enter your email">
</div>
<div class="form-group col-md-6">
<label for="aadharno">ហ្វេសប៊ុក</label>
<input type="text" class="form-control" name="facebook" maxlength="12" required placeholder="Enter your facebook name">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">លេខសញ្ញាបត្រមធ្យមសិក្សាទុតិយភូមិ</label>
<input type="text" class="form-control" name="bacii_num" required placeholder="Enter your bacii number" maxlength="20" required>
</div>
<div class="form-group col-md-6">
<label for="inputState">និទ្ទេសរួម</label>
<select id="inputState" name="bacii_grade" class="form-control">
  <option selected>ជ្រើសរើស</option>
  <option>A</option>
  <option>B</option>
  <option>C</option>
  <option>D</option>
  <option>E</option>
  <option>F</option>
</select>
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">សម័យប្រឡង</label>
<input type="date" class="form-control" name="bacii_session" required placeholder="Enter your bacii session">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">មណ្ឌលប្រឡង</label>
<input type="text" class="form-control" name="exam_center" required placeholder="Enter your exam center">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">អតីតសិស្សមកពីវិទ្យាល័យ</label>
<input type="text" class="form-control" name="from_school" required placeholder="Enter high school you from ">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ខេត្ត</label>
<input type="text" class="form-control" name="province_school" required placeholder="Enter province of your school">
</div>
</div>

<!-- add information register -->

<h4 class="text-primary">ព័ត៌មាននៃការចុះឈ្មោះចូលរៀន</h4>
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">កម្រិតនៃការសិក្សា</label>
<select id="inputState" name="level_degree" class="form-control">
  <option selected>ជ្រើសរើស</option>
  <option>បរិញ្ញាបត្រ</option>
  <option>បរិញ្ញាបត្ររង</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ជំនាញ</label>
<input type="text" class="form-control" name="major" required placeholder="Enter your major">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">មហាវិទ្យាល័យ</label>
<select id="inputState" name="faculty" class="form-control">
  <option selected>ជ្រើសរើស</option>
  <option>មហាវិទ្យាល័យវិទ្យាសាស្រ្ត និងបច្ចេកវិទ្យា</option>
  <option>មហាវិទ្យាល័យសិល្បៈមនុស្សសាស្ត្រ និងភាសា</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ខេត្ត</label>
<input type="text" class="form-control" name="i_province" required placeholder="Enter province of faculty">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">ឆ្នាំសិក្សា</label>
<select id="inputState" name="year_study" class="form-control">
  <option selected>ជ្រើសរើស</option>
  <option>២០២1-២០២២</option>
  <option>២០២២-២០២៣</option>
  <option>២០២៣-២០២៤</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតបណ្តុះបណ្តាល</label>
<input type="text" class="form-control" name="training_level" required placeholder="Enter your training level">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">ចូលរៀនលើកទី</label>
<select id="inputState" name="study_in" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>១</option>
  <option>២</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputState">ឆមាសទី</label>
<select id="inputState" name="semester" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>១</option>
  <option>២</option>
</select>
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">ជំនាន់ទី</label>
<select id="inputState" name="gen_stu" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>១២</option>
  <option>១៣</option>
  <option>១៥</option>
  <option>១៦</option>
  <option>១៧</option>
  <option>១៨</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputState">ពេលសិក្សា</label>
<select id="inputState" name="t_study" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>ចន្ទ-សុក្រ</option>
  <option>សៅរ៍-អាទិត្យ</option>
</select>
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState">វេណសិក្សា</label>
<select id="inputState" name="ven_study" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>ព្រឹក</option>
  <option>រសៀល</option>
  <option>យប់</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputState">ប្រភេទសិក្សា</label>
<select id="inputState" name="type_study" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>អាហារូបករណ៍រដ្ឋ</option>
  <option>ទូទៅ</option>
  <option>តំបន់ដាច់ស្រយាល</option>
  <option>អាទិភាពនារី</option>
  <option>អាទិភាពក្រីក្រ</option>
  <option>អាហារូបករណ៍ថ្នាក់ដឹកនាំ</option>
  <option>បង់ថ្លៃ</option>
</select>
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ថ្នាក់ដឹកនាំឈ្មោះ</label>
<input type="text" class="form-control" name="leader_name" required placeholder="Enter leader name of scholarship">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ចំនួន% អាហារូបករណ៍</label>
<select id="inputState" name="num_scholarship" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>៥០%</option>
  <option>៧០%</option>
  <option>១០០%</option>
</select>
</div>
</div>

<!-- Study history -->

<h4 class="text-primary">ប្រវត្តិការសិក្សា</h4>
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">បឋមសិក្សា</label>
<input type="text" class="form-control" name="primary_school" required placeholder="Enter your primary school">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ឆ្នាំចូល-ឆ្នាំចេញ</label>
<input type="text" class="form-control" name="primary_in_out" required placeholder="Enter year in - year out">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ថ្នាក់ទី</label>
<input type="text" class="form-control" name="primary_grade" required placeholder="Enter grade - grade">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតសញ្ញាបត្រ</label>
<input type="text" class="form-control" name="primary_degree" required placeholder="Enter degree of primary school">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">អនុវិទ្យាល័យ</label>
<input type="text" class="form-control" name="secondary_school" required placeholder="Enter your secondary school">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ឆ្នាំចូល-ឆ្នាំចេញ</label>
<input type="text" class="form-control" name="secondary_in_out" required placeholder="Enter year in - year out">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ថ្នាក់ទី</label>
<input type="text" class="form-control" name="secondary_grade" required placeholder="Enter grade - grade">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតសញ្ញាបត្រ</label>
<input type="text" class="form-control" name="secondary_degree" required placeholder="Enter degree of secondary school">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">វិទ្យាល័យ</label>
<input type="text" class="form-control" name="high_school" required placeholder="Enter your high school">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ឆ្នាំចូល-ឆ្នាំចេញ</label>
<input type="text" class="form-control" name="high_in_out" required placeholder="Enter year in - year out">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ថ្នាក់ទី</label>
<input type="text" class="form-control" name="high_grade" required placeholder="Enter grade - grade">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតសញ្ញាបត្រ</label>
<input type="text" class="form-control" name="high_degree" required placeholder="Enter degree of high school">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">សាកលវិទ្យាល័យ</label>
<input type="text" class="form-control" name="university" required placeholder="Enter your university">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ឆ្នាំចូល-ឆ្នាំចេញ</label>
<input type="text" class="form-control" name="university_in_out" required placeholder="Enter year in - year out">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ឆ្នាំទី</label>
<input type="text" class="form-control" name="u_year" required placeholder="Enter your study year">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតសញ្ញាបត្រ</label>
<input type="text" class="form-control" name="u_degree" required placeholder="Enter university degree">
</div>
</div>


<!--Place of birth-->

<h4 class="text-primary">ទីកន្លែងកំណើត</h4>
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ផ្ទះលេខ</label>
<input type="text" class="form-control" name="home_num" required placeholder="Enter your home number">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ផ្លូវ</label>
<input type="text" class="form-control" name="street" required placeholder="Enter your street">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ភូមិ</label>
<input type="text" class="form-control" name="village" required placeholder="Enter your village">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ឃុំ</label>
<input type="text" class="form-control" name="commune" required placeholder="Enter your commune">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ស្រុក</label>
<input type="text" class="form-control" name="district" required placeholder="Enter your village">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ខេត្ត</label>
<input type="text" class="form-control" name="province" required placeholder="Enter your province">
</div>
</div>

<!--Live current-->

<h4 class="text-primary">ទីលំនៅបច្ចុប្បន្ន</h4>
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ផ្ទះលេខ</label>
<input type="text" class="form-control" name="lc_home_num" required placeholder="Enter your home number">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ផ្លូវ</label>
<input type="text" class="form-control" name="lc_street" required placeholder="Enter your street">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ភូមិ</label>
<input type="text" class="form-control" name="lc_village" required placeholder="Enter your village">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ឃុំ</label>
<input type="text" class="form-control" name="lc_commune" required placeholder="Enter your commune">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ស្រុក</label>
<input type="text" class="form-control" name="lc_district" required placeholder="Enter your village">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ខេត្ត</label>
<input type="text" class="form-control" name="lc_province" required placeholder="Enter your province">
</div>
</div>

<!--Infor parent-->

<h4 class="text-primary">ព័ត៌មានឪពុកម្តាយ</h4>
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ឪពុកឈ្មោះ</label>
<input type="text" class="form-control" name="fa_name" required placeholder="Enter your father name">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">អក្សរឡាតាំង</label>
<input type="text" class="form-control" name="fa_latin_name" required placeholder="Enter your father latin name">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ស្ថានភាព</label>
<select id="inputState" name="fa_status" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>ស្លាប់</option>
  <option>រស់</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតបណ្តុះបណ្តាល</label>
<input type="text" class="form-control" name="fa_training_level" required placeholder="Enter father training level">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">មុខរបរ</label>
<input type="text" class="form-control" name="fa_occ" required placeholder="Enter father occupation">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">អង្គភាព</label>
<input type="text" class="form-control" name="fa_og" required placeholder="Enter father oganization work">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">អ៊ីម៉ែល</label>
<input type="text" class="form-control" name="fa_email" required placeholder="Enter father email">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">លេខទូរស័ព្ទ</label>
<input type="text" class="form-control" name="fa_phone" required placeholder="Enter father phone">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ហ្វេសប៊ុក</label>
<input type="text" class="form-control" name="fa_fb" required placeholder="Enter father facebook">
</div>
</div>

<!--mother-->

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ម្តាយឈ្មោះ</label>
<input type="text" class="form-control" name="mo_name" required placeholder="Enter your mother name">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">អក្សរឡាតាំង</label>
<input type="text" class="form-control" name="mo_latin_name" required placeholder="Entere mother latin name">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ស្ថានភាព</label>
<select id="inputState" name="mo_status" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>ស្លាប់</option>
  <option>រស់</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតបណ្តុះបណ្តាល</label>
<input type="text" class="form-control" name="mo_training_level" required placeholder="Enter mother training level">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">មុខរបរ</label>
<input type="text" class="form-control" name="mo_occ" required placeholder="Enter mother occupation">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">អង្គភាព</label>
<input type="text" class="form-control" name="mo_og" required placeholder="Enter mother oganization work">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">អ៊ីម៉ែល</label>
<input type="text" class="form-control" name="mo_email" required placeholder="Enter mother email">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">លេខទូរស័ព្ទ</label>
<input type="text" class="form-control" name="mo_phone" required placeholder="Enter mother phone">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ហ្វេសប៊ុក</label>
<input type="text" class="form-control" name="mo_fb" required placeholder="Enter mother facebook">
</div>
</div>

<!--Information Sibling-->

<h4 class="text-primary">ព័ត៌មានបងប្អូនបង្កើត</h4>
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">គោត្ត​ និងនាម</label>
<input type="text" class="form-control" name="sib_name" required placeholder="Enter your sibling name">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">ភេទ</label>
<select id="inputState" name="sib_sex" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>ប្រុស</option>
  <option>ស្រី</option>
</select>
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">ស្ថានភាព</label>
<select id="inputState" name="sib_status" class="form-control" required>
  <option selected>ជ្រើសរើស</option>
  <option>ស្លាប់</option>
  <option>រស់</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">កម្រិតបណ្តុះបណ្តាល</label>
<input type="text" class="form-control" name="sib_training_level" required placeholder="Enter sibling training level">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">មុខរបរ</label>
<input type="text" class="form-control" name="sib_occ" required placeholder="Enter sibling occupation">
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">អង្គភាព</label>
<input type="text" class="form-control" name="sib_og" required placeholder="Enter sibling oganization work">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputPassword4">លេខទូរស័ព្ទ</label>
<input type="text" class="form-control" name="sib_phone" required placeholder="Enter sibling phone">
</div>
</div>



<!-- <div class="form-group">
<label for="family">Family Member's</label>
    <textarea class="form-control" name="family" rows="3"></textarea>
</div> -->

			
        	<div class="form-group col-md-6">
        		<label>រូបថត</label>
        		<input type="file" name="photo" class="form-control" >
        	</div>

        	
        	 <input type="submit" name="submit" class="btn btn-info btn-large" value="រក្សាទុក">
        	
        	
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">បិទ</button>
      </div>
    </div>

  </div>
</div>


<!------DELETE modal---->




<!-- Modal -->
<?php

$get_data = "SELECT * FROM infor_student";
$run_data = mysqli_query($con,$get_data);

while($row = mysqli_fetch_array($run_data))
{
	$id = $row['id'];
	echo "

<div id='$id' class='modal fade' role='dialog'>
  <div class='modal-dialog'>

    <!-- Modal content-->
    <div class='modal-content'>
      <div class='modal-header'>
        <button type='button' class='close' data-dismiss='modal'>&times;</button>
        <h4 class='modal-title text-center'>តើអ្នកប្រាកដជាចង់លុបទិន្នន័យនេះមែនទេ?</h4>
      </div>
      <div class='modal-footer'>
	  <button type='button' class='btn btn-primary' data-dismiss='modal'>បិទ</button>
        <a href='delete.php?id=$id' class='btn btn-danger'>លុប</a>
      </div>
    </div>

  </div>
</div>


	";
	
}

?>


<!-- View modal  -->
<?php
	include('view_profile_modal.php');
?>




<?php
	include('get_data.php');
?>


<script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  <script>
    $(document).ready(function () {
      $('#myTable').DataTable();

    });
  </script>

</body>
</html>
