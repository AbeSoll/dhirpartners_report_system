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
                                if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
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
                            $department = mysqli_real_escape_string($mysqli,$_POST['department']);
                            $room = mysqli_real_escape_string($mysqli,$_POST['room']);
                            $date = mysqli_real_escape_string($mysqli,$_POST['date']);
                            $time = mysqli_real_escape_string($mysqli,$_POST['time']);
                            $phone = mysqli_real_escape_string($mysqli,$_POST['phone']);
                            $purpose = mysqli_real_escape_string($mysqli,$_POST['purpose']);
                           







                            $as = rand(1000,9999);     
                            $case_num = date("YmdHis").'.'.$as;
      
                  
                            $sql = "INSERT INTO meetingBooking(employee_id,name,department,room,date,time,phone,purpose)VALUES('$employee_id','$name','$department','$room','$date','$time','$phone','$purpose')";
                            $results = mysqli_query($mysqli,$sql);

                        if($results==1){
                              ?>
                        <div class="alert alert-success strover animated bounce" id="sams1">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully! </strong><?php echo'Meeting room booking has successfully added';?></div>
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
            <div class="panel-heading">BORANG PERMOHONAN PENGINAPAN PEKERJA</div>

            <div>
                        <p class="invest-text">SILA BACA KETERANGAN BERIKUT DENGAN TELITI SEBELUM MENGISI BORANG<br>   
                        1. KEUTAMAAN diberikan untuk pekerja yang tinggal lebih 10km dari tempat kerja.<br>
                        2. Sila pastikan maklumat untuk tandatangan dan cop ketua jabatan diisi sebelum menghantar permohonan.<br>
                        3. Sila lampirkan salinan Kad Pengenalan untuk rujukan pihak berkenaan.<br> 
                        4. Please send email to IT Department if your report related to IT Department, same as for Facility Asset Departmet after submit your report. 
                    </p> 
                  
                </div>
                
                <br>

        <div class="panel-body">
            <form method="post" action="homestayForm.php">
        <div class="row form-group">
                <div class="col-lg-6">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" required>
                </div>

                
                <div class="col-lg-6">
                    <label>Umur</label>
                    <input type="text" class="form-control" name="age" required>
                </div>
        </div>  

          

           

            <div class="row form-group">
                <div class="col-lg-6">
                    <label>Alamat Surat Menyurat</label>
                    <input type="text" class="form-control" name="address" required>
                </div>

                <div class="col-lg-6">
                        <label>No KP</label>
                        <input type="text" class="form-control" name="ic" required>
                </div>
            </div>
            
            
            <div class="row form-group">
                <div class="col-lg-6">
                        <label>Alamat Tetap</label>
                        <input type="text" class="form-control" name="address2" required>
                </div>
           

                <div class="col-lg-6">
                    <label>No Telefon</label>
                    <input type="text" class="form-control" name="phone" required>
                </div>  
             
           </div>

        

           <div class="row form-group">
                <div class="col-lg-12">
                    <label>Alasan</label>
                    <!--<textarea class="form-control" id="editor" name="message"></textarea>-->
                    <textarea class="form-control" rows="8" id="comment" name="alasan"></textarea>

                </div>
             
           </div>

             
           <div class="row form-group">
                <div class="col-lg-6">
                        <label>Nama Waris 1</label>
                        <input type="text" class="form-control" name="waris1" required>
                </div>
           

                <div class="col-lg-6">
                    <label>Nama waris 2</label>
                    <input type="text" class="form-control" name="waris2" required>
                </div>  
             
           </div>

           <div class="row form-group">
                <div class="col-lg-6">
                        <label>Hubungan</label>
                        <input type="text" class="form-control" name="hubungan1" required>
                </div>
           

                <div class="col-lg-6">
                    <label>Hubungan</label>
                    <input type="text" class="form-control" name="hubungan2" required>
                </div>  
             
           </div>


           <div class="row form-group">
                <div class="col-lg-6">
                        <label>Alamat</label>
                        <input type="text" class="form-control" name="alamat1" required>
                </div>
           

                <div class="col-lg-6">
                    <label>Alamat</label>
                    <input type="text" class="form-control" name="alamat2" required>
                </div>  
             
           </div>

           <div class="row form-group">
                <div class="col-lg-6">
                        <label>No Telefon</label>
                        <input type="text" class="form-control" name="phone1" required>
                </div>
           

                <div class="col-lg-6">
                    <label>No Telefon</label>
                    <input type="text" class="form-control" name="phone2" required>
                </div>  
             
           </div>
           
                
                <div class="row">
                <div class="col-md-6">
                  <button type="submit" name="submit" class="btn btn-suc btn-block" onclick="return confirm('Book selected meeting room?');"><span class="fa fa-plus"></span> Submit</button>  
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
