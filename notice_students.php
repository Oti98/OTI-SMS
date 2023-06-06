   
          <h2 class="page-header" style="text-align:center;"><img src="noticelogo.png"> <br> OTI COLLEGE OF EDUCATION</h2>
          <h4 style="text-align:center;">  Students Portal</h4>	 
 
 


       <div class="col-md-12">
          
       <div class="panel panel-default">
        <div class="panel-heading" style="background-color: #ff6600;">
        <center>  <h3 class="panel-title" style="color: WHITE;">NOTICE</h3> </center>

        </div> 
        <div class="panel-body"> 
  <table id="students" class="table table-bordered table-condensed">
     
    <tbody>
    <?php
    include 'db.php';
    $sql=  mysqli_query($conn, "SELECT * FROM notice");
    while($row = mysqli_fetch_assoc($sql)) {
      $sid = $row['NOTICE_ID'];
  
    ?>
      <tr>
        <td><?php echo $row['NOTICE'] ?></td>
       </tr>

      <?php
    }
     mysqli_close($conn);
      ?>
    </tbody>
  </table>
</div>
</div> 
</div>

       <div id="view-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog"> 
               <div class="modal-content modal-lg">  
             
                  <div class="modal-header"> 
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> 
                     <h4 class="modal-title">
                     <i class=""></i> PROFILE
                     </h4> 
                  </div> 
                       <div id="content">
                      
                     </div>
                  
                                 
              </div> 
            </div>
          </div>  



<script type="text/javascript">
        $(function() {
            $("#students").dataTable(
        { "aaSorting": [[ 2, "asc" ]] }
      );
        });
    </script>
