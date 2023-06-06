<?php
	if($_SERVER['REQUEST_METHOD'] == 'POST'){


$message=$_POST['messsage'];
 
include 'db.php';

$search_query = mysqli_query($conn, "SELECT * FROM notice");
		$num_row = mysqli_num_rows($search_query);
		if($num_row >= 1){
			"<script>
			 
			</script>";
		}else{
			$sql = "INSERT INTO notice
			 (
			 NOTICE,
			  
			   )
		VALUES (
			 
			'$message',
			 
		)";
		mysqli_query($conn, "INSERT into history_log (transaction,user_id,date_added) 
		VALUES ('added $fn $ln as new student','$user',NOW() )");
		if (mysqli_query($conn, $sql)) {

			echo "<div class='erlert-success'><center><h4>" . "New Student Successfully Added." . "</h4></center></div>";

		} else {
		    "<script>
			alert('Failed to Submit.');
			</script>";
		}


		}
	
	}
mysqli_close($conn);

  ?>