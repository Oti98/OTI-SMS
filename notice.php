<h3 class="page-header" style="text-align:center;"><img src="noticelogo.png"> <br> OTI COLLEGE OF EDUCATION</h3>
	 
             
                    <div class="col-md-12" >
                       
                    <div class="panel panel-default"  >
                     <div class="panel-heading" style="background-color: #ff6600;">
                     <center>  <h2 class="panel-title" style="color:white;">NOTICE</h2> </center>
                     </div> 
            
                     <div class="panel-body"> 

                     <form  method="post">
               <table id="students" class="table table-bordered table-condensed">
                  
                 <tbody>

                 <?php
                 include 'db.php';
                 if(isset($_POST ["submitBtn"]) &&
                 $_POST ["submitBtn"] !=""){
                 $NOTICE=$_POST["NOTICE"];
              
                 

                 $sql=  mysqli_query($conn, " INSERT INTO `notice`(`NOTICE_ID`, `NOTICE`) VALUES ('[value-1]','$NOTICE') ");

                
                 { echo "<div class='erlert-success'><center><h4>" . "Notice Submitted Successfully." . "</h4></center></div>";
                 }}
               {
                 ?>
                    <tr>
                    <td> <textarea name="NOTICE" id="NOTICE" value="NOTICE" style="width:1335px; height:300px"></textarea>  </td> 
                    </tr>

                   
                   <?php
                 }
                  mysqli_close($conn);
                   ?>
                   <td><input name="submitBtn" type="submit" id="submitBtn" value="submit" style="float:right;" class="btn btn-info">
                    </td> 
                 </tbody>
                 
               </table>
                </form>
              
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
             
             
              