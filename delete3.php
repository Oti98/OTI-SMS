<?php   
 include 'db.php';  
 if (isset($_GET['id'])) {  
      $id = $GET['student_delete'];  
      $query = "DELETE FROM `student_info` WHERE STUDENT_ID = '$id'";  
      $run = mysqli_query($conn,$query);  
      if ($run) {  
            header('location:/rms.php?page=Students');
      }else{  
           echo "Error: ".mysqli_error($conn);  
      }  
 }  
 ?> 