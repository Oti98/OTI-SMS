<?php 
include 'db.php';
$id = $_GET['id'];

$sql = "DELETE FROM student_info WHERE STUDENT_ID='$id'";

if (mysqli_query($conn, $sql)) {
	header("location:".$_SERVER['HTTP_REFERER']);
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);

 ?>