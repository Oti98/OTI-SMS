
<?php
    include "db.php";
    if(isset($POST['student_delete']))
    {
        $id = $POST['id'];
        $querry = "DELETE from `student_info` where STUDENT_ID=$id";
        $querry_run = mysqli_query($conn,$querry);
        if ($querry_run);
    }
    
    exit;
?>