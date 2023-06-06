  
<?php 
include 'db.php';


$query = mysqli_query($conn,"SELECT * FROM school_year where status='Yes' ");
$s = mysqli_fetch_assoc($query);
$school_year=$s['school_year'];
?>




 <ul class="nav navbar-nav side-nav">
 <li>
<a href="rms.php?page=home"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
</li>

<li>
    <a href="rms.php?page=personal_details"><i class="fa fa-users"></i> Personal Details</a>
</li>


<li>
    <a href="rms.php?page=notice_students"><i class="fa fa-users"></i> View Notice</a>
</li>

<li>
    <a href="..//grading/schoolsite/index.php"><i class="fa fa-users"></i> Visit School Site</a>
</li>
<li>
    <a href="..//grading/schoolsite/index.php"><i class="fa fa-users"></i> Register Course</a>
</li>
<li>
    <a href="..//grading/schoolsite/index.php"><i class="fa fa-users"></i> View Results</a>
</li>
  
</ul>
<script>
    $('.side-nav li a').each(function(){
        if((location.href).includes($(this).attr('href')) == true){
            $(this).closest('li').addClass("active")
            console.log($(this).closest('li').parent('ul').attr('id'))
            if($(this).closest('li').parent('ul').hasClass('collapse') == true){
                $('[data-target="#'+$(this).closest('li').parent('ul').attr('id')+'"]').click()
            }
        }
    })
</script>

                