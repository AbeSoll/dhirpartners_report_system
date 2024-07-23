<?php require_once('includes/session.php');
      require_once('includes/conn.php');

     
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | REPORT</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/awesome/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">

        <!-- Our Custom CSS Select dropdown -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
        
        <script src="https://kit.fontawesome.com/75c3dd07ff.js" crossorigin="anonymous"></script>
        <style>

            .register{
                min-height:100vh;
                width:100%;
                padding:10px;
                background:#023047;
            }

            .invest-text{
                text-align: justify;
                color: black;
                font-size: 1.4rem;
                display: -webkit-box;
                -webkit-line-clamp: 10;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
                margin: 20px 0px;
            }
            .btn-baik {
                color: #fff;
                background-color: #1b5eb8;
            }
            .btnn {
                display: inline-block;
                padding: 6px 12px;
                margin-bottom: 0;
                font-size: 14px;
                font-weight: 400;
                line-height: 1.42857143;
                text-align: center;
                white-space: nowrap;
                vertical-align: middle;
                -ms-touch-action: manipulation;
                touch-action: manipulation;
                cursor: pointer;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                background-image: none;
                border: 1px solid transparent;
                border-radius: 4px;
            }

            .form-container{

            }
        </style>
    </head>
    <body>


    <section class="register">
        <!-- div class="wrapper" -->
           

            <!-- Page Content Holder -->
            
            <div id="content">
          
                
                    <div class="container-fluid">

                      

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right  makotasamuel">
                             <?php
                                if($_SESSION['permission']==1 or $_SESSION['permission']==4){
                            ?>

                               

                              
                            <?php }?>
                                
                            </ul>
                        </div>
                    </div>
                </nav>

             

                            <?php
                            if(isset($mysqli,$_POST['submit'])){
                            $employee_id = mysqli_real_escape_string($mysqli,$_POST['employee_id']);
                            $name = mysqli_real_escape_string($mysqli,$_POST['name']);
                            $car = mysqli_real_escape_string($mysqli,$_POST['car']);
                            $department = mysqli_real_escape_string($mysqli,$_POST['department']);
                            $phone = mysqli_real_escape_string($mysqli,$_POST['phone']);
                            $destination = mysqli_real_escape_string($mysqli,$_POST['destination']);
                            $reason = mysqli_real_escape_string($mysqli,$_POST['reason']);
                            $start_date = mysqli_real_escape_string($mysqli,$_POST['start_date']);
                            $return_date = mysqli_real_escape_string($mysqli,$_POST['return_date']);







                            $as = rand(1000,9999);     
                            $case_num = date("YmdHis").'.'.$as;
      
                  
                            $sql = "INSERT INTO carBooking(employee_id,name,car,department,phone,destination,reason,start_date,return_date)VALUES('$employee_id','$name','$car','$department','$phone','$destination','$reason','$start_date','$return_date')";
                            $results = mysqli_query($mysqli,$sql);

                        if($results==1){
                              ?>
                        <div class="alert alert-success strover animated bounce" id="sams1">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully! </strong><?php echo'Car booking has successfully added';?></div>
                        <?php

                          }else{
                                ?>
                        <div class="alert alert-danger samuel animated shake" id="sams1">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Danger! </strong><?php echo'OOPS something went wrong';?></div>
            
                        <?php    
                          }      
                
            }
                
                ?>
               
		<div class="panel panel-default sammacmedia">
            <div class="panel-heading">COMPANY CAR BOOKING</div>
        <div class="panel-body">
            <form method="post" action="carBooking.php">
        <div class="row form-group">
          <div class="col-lg-6">
            <label>Select Employee Number</label>
             <?php
                       
                    $query1 = "SELECT * FROM `employees`";
                    $result1 = mysqli_query($mysqli, $query1);
                    ?>
                    <div class="wrapper_scroll">
                    <select class="form-control" name="employee_id" data-live-search="true">
                    <option value="">-----------------------SELECT EMPLOYEE ID-----------------------</option>
                    <?php while($row1 = mysqli_fetch_array($result1)):;?>
                        <option><?php echo $row1['employee_id'];?></option>
                        <?php endwhile;?>
                       
                       </select>
                    </div>
            </div>  

            <div class="col-lg-6">
            <label>Select Employee Name</label>
             <?php
                       
                    $query1 = "SELECT * FROM `employees`";
                    $result1 = mysqli_query($mysqli, $query1);
                    ?>
                    <div class="wrapper_scroll">
                    <select class="form-control" name="name" data-live-search="true">
                    <option value="">-----------------------SELECT EMPLOYEE NAME-----------------------</option>
                    <?php while($row1 = mysqli_fetch_array($result1)):;?>
                        <option><?php echo $row1['name'];?></option>
                        <?php endwhile;?>
                       
                       </select>
                    </div>
            </div>  

          
           </div>

           

            <div class="row form-group">
                <div class="col-lg-6">
                    <label>Phone</label>
                    <input type="text" class="form-control" name="phone" required>
                </div>

            <div class="col-lg-6">
            <label>Department</label>
                <div class="wrapper_scroll">
                <select class="form-control" name="department" data-live-search="true">
                        <option value="">-----------------------SELECT DEPARTMENT-----------------------</option>
                        <option value="MANAGEMENT/SLT">MANAGEMENT/SLT</option>
                        <option value="COURTS" >COURTS</option>
                        <option value="AEON WO">AEON WO</option> 
                        <option value="TM">TM</option>
                        <option value="DIGI">DIGI</option>
                        <option value="ZAKAT">ZAKAT</option>
                        <option value="BMMB">BMMB</option>
                        <option value="AEON NPL">AEON NPL</option>
                        <option value="COOP BANK">COOP BANK</option>
                        <option value="CMS">CMS</option>
                        <option value="AIQON AEON">AIQON AEON</option>
                        <option value="AIQON AMBANK">AIQON AMBANK</option>
                        <option value="AIQON IKHLAS">AIQON IKHLAS</option>
                        <option value="AIQON ANGKASA">AIQON ANGKASA</option>
                        <option value="COLLECTIUS">COLLECTIUS</option>
                        <option value="COOP PERTAMA">COOP PERTAMA</option>
                        <option value="SINGER NPL">SINGER NPL</option>
                        <option value="SINGER EAST">SINGER EAST</option>
                        <option value="P1/WIMAX">P1/WIMAX</option>
                        <option value="HUMAN RESOURCE">HUMAN RESOURCE</option>
                        <option value="ADMIN">ADMIN</option>
                        <option value="FINANCE">FINANCE</option>
                        <option value="COMPLIANCE">COMPLIANCE</option>
                        <option value="TRAINING">TRAINING</option>
                        <option value="FACILITY ASSETS">FACILITY ASSETS</option>
                        <option value="INFORMATION TECHNOLOGY">INFORMATION TECHNOLOGY</option>
                        <option value="DIGITAL MARKETING">DIGITAL MARKETING</option>
                    </select>
                </div>
            </div>
            </div>
            
            
            <div class="row form-group">
                <div class="col-lg-6">
            <label>CAR</label>
                <div class="wrapper_scroll">
                <select class="form-control" name="car">
                    <option value="">-------------------------SELECT CAR-------------------------</option>
                    <option>AXIA</option>
                    <option>STAREX</option>    
                </select>
                </div>
            </div>

                <div class="col-lg-6">
                    <label>Destination</label>
                    <input type="text" class="form-control" name="destination" required>
                </div>  
             
           </div>

           <div class="row form-group">
                <div class="col-lg-12">
                    <label>Reason</label>
                    <!--<textarea class="form-control" id="editor" name="message"></textarea>-->
                    <textarea class="form-control" rows="4" id="comment" name="reason"></textarea>

                </div>
             
           </div>

           <div class="row form-group">
                <div class="col-lg-6">
                    <label>Start Date</label>
                    <input type="date" class="form-control" name="start_date" required>
                </div>  

                <div class="col-lg-6">
                    <label>Return Date</label>
                    <input type="date" class="form-control" name="return_date" required>
                </div>  
             
           </div>
           
                
                <div class="row">
                <div class="col-md-6">
                  <button type="submit" name="submit" class="btn btn-suc btn-block" onclick="return confirm('Book the company car?');"><span class="fa fa-plus"></span> Submit</button>  
                </div>
                     <div class="col-md-6">
                  <button type="reset" class="btn btn-dan btn-block"><span class="fa fa-times"></span> Cancel</button>  
                </div>
                </div>
            </form>

            </div>
                </div>
                
            
        </div>

        </section>
        <!-- search dropdown-->
        

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"></script>
        

        <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
        <script src="assets/js/script_saya.js">

        <!-- jQuery CDN -->
         <script src="assets/js/jquery-1.10.2.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="assets/js/bootstrap.min.js"></script>
         <script src="vendors/ckeditor/sammacmedia.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
             $('sams').on('click', function(){
                 $('makota').addClass('animated tada');
             });
         </script>
         <script type="text/javascript">

        $(document).ready(function () {
 
            window.setTimeout(function() {
        $("#sams1").fadeTo(1000, 0).slideUp(1000, function(){
        $(this).remove(); 
        });
            }, 5000);
 
        });
              ClassicEditor
                .create( document.querySelector( '#editor' ) )
                .then( editor => {
                console.log( editor );
		} )
                .catch( error => {
                console.error( error );
		} );
        </script>
        
    </body>
</html>
