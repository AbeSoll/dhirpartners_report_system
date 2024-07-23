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

            .btn-baik-active {
                color: #fff;
                background-color: #84B9FF;
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

            .checkbox-dropdown {
                width: 550px;
                border: 1px solid #aaa;
                padding: 6px;
                position: relative;
                margin: 0 auto;
                border-radius:4px;
                user-select: none;
            }

            /* Display CSS arrow to the right of the dropdown text */
            .checkbox-dropdown:after {
                content:'';
                height: 0;
                position: absolute;
                width: 0;
                border: 6px solid transparent;
                border-top-color: #000;
                top: 50%;
                right: 10px;
                margin-top: -3px;
            }

            /* Reverse the CSS arrow when the dropdown is active */
            .checkbox-dropdown.is-active:after {
                border-bottom-color: #000;
                border-top-color: #fff;
                margin-top: -9px;
            }

            .checkbox-dropdown-list {
                list-style: none;
                margin: 0;
                padding: 0;
                position: absolute;
                top: 100%; /* align the dropdown right below the dropdown text */
                border: inherit;
                border-top: none;
                left: -1px; /* align the dropdown to the left */
                right: -1px; /* align the dropdown to the right */
                opacity: 0; /* hide the dropdown */
            
                transition: opacity 0.4s ease-in-out;
                height: 100px;
                overflow: scroll;
                overflow-x: hidden;
                pointer-events: none; /* avoid mouse click events inside the dropdown */
            }
            .is-active .checkbox-dropdown-list {
                opacity: 1; /* display the dropdown */
                pointer-events: auto; /* make sure that the user still can select checkboxes */
            }

            .checkbox-dropdown-list li label {
                display: block;
                border-bottom: 1px solid silver;
                padding: 10px;
            
                transition: all 0.2s ease-out;
            }

            .checkbox-dropdown-list li label:hover {
                background-color: #555;
                color: white;
            }
        </style>
    </head>
    <body>



        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar" class="sammacmedia">
                <div class="sidebar-header">
                <img src="assets/image/dnplogo.png" style="width:50px;height:50px;">
                    <div class="text-aku1">
                        <h3>D&P Intranet Web System</h3>
                        <strong>DRS</strong>
                    </div>
                </div>

                <ul class="list-unstyled components">
                    <li>
                        <a href="dashboard.php">
                            <i class="fa fa-home"></i>
                           Dashboard
                        </a>
                    </li>
                    <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>
                    <li>
                        <a href="a_employees.php">
                            <i class="fa fa-user-plus"></i>
                            Add Employees
                        </a>
                      
                    </li>
                    
                    <li>
                        <a href="all_employees.php">
                            <i class="fa fa-users"></i>
                           All Employees
                        </a>
                    </li>

                  

                    <?php }?>

                    <li class="active">
                        <a href="compose_mail.php">
                            <i class="fa-regular fa-paper-plane"></i>
                            Compose Mail                        
                        </a>
                    </li>
                    
                    <li >
                        <a href="invest.php">
                            <i class="fa fa-link"></i>
                            Report Issues
                        </a>
                    </li>
                              <?php
                    if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                        
                    
                    ?>
     <li>
                        <a href="v_issueAll.php">
                            <i class="fa fa-table"></i>
                            View Issue All
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>

                    <li>
                        <a href="v_issue.php">
                            <i class="fa fa-table"></i>
                            View Issues Muar
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>

                    <li>
                        <a href="v_issueKL.php">
                            <i class="fa fa-table"></i>
                            View Issues KL
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>

                    <li>
                        <a href="v_issuePenang.php">
                            <i class="fa fa-table"></i>
                            View Issues Penang
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>


                    <li>
                        <a href="v_issue.php">
                            <i class="fa fa-table"></i>
                            View Issues
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>
                    <li>
                        <a href="a_users.php">
                            <i class="fa fa-user-plus"></i>
                            Add Users
                        </a>
                    </li>
                    <li >
                        <a href="v_users.php">
                            <i class="fa fa-id-card"></i>
                            View Users
                        </a>
                    </li>
                    <?php }?>
                    <li>
                        <a href="form_fa.php">
                            <i class="fa fa-folder-open-o"></i>
                            Facility Assets Dept
                        </a>
                    </li>
                    <li>
                        <a href="form_training.php">
                            <i class="fa fa-folder-open-o"></i>
                            Training Dept
                        </a>
                    </li>
                    <li> 
                        <a href="form_it.php">
                            <i class="fa fa-folder-open-o"></i>
                            IT Dept
                        </a>
                    </li>
                    <li>
                        <a href="form_compliance.php">
                            <i class="fa fa-folder-open-o"></i>
                            Compliance Dept
                        </a>
                    </li>
                    <li>
                        <a href="form_hr.php">
                            <i class="fa fa-folder-open-o"></i>
                            HR Dept
                        </a>
                    </li>

                    <li>
                        <a href="form_finance.php">
                            <i class="fa fa-folder-open-o"></i>
                            Finance Dept
                        </a>
                    </li>
                    
                    <li>
                        <a href="settings.php">
                            <i class="fa fa-cog"></i>
                            Settings
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            
            <div id="content">
            <?php
                            $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE status=0");
                            $count = mysqli_num_rows($sql_get);

                            $sql_get = mysqli_query($mysqli,"SELECT * FROM mail WHERE status=0 AND (`sendTo` = 'hr' OR `sendTo` = 'all')");
                            $countMail = mysqli_num_rows($sql_get);


            ?>
                <div clas="col-md-12">
                    <img src="assets/image/line.png" class="img-thumbnail">
                    </div>
         
                
                <nav class="navbar navbar-default sammacmedia">
                    <div class="container-fluid">

                        <div class="navbar-header" id="sams">
                            
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right  makotasamuel">
                             <?php
                                if($_SESSION['permission']==3){
                            ?>
                             <li >
                                    <a href="compose_mail.php">
                                    <i class="fa-regular fa-paper-plane" style="color: gold;"></i>
                                    <span class="notify" id="count" style="color: gold;"><?php echo $countMail; ?></span>
                                    </a>
                                </li>

                               
                            <?php }?>
                                <li><a href="#" style="color: #cfcfcf;"><?php require_once('includes/name.php');?></a></li>
                                <li ><a href="logout.php"><i class="fa fa-sign-out" style="color: red;"> Logout</i></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="line"></div>

                            <?php
                            if(isset($mysqli,$_POST['submit'])){
                            $name = mysqli_real_escape_string($mysqli,$_POST['name']);
                            $sendTo = mysqli_real_escape_string($mysqli,$_POST['sendTo']);
                            $subject = mysqli_real_escape_string($mysqli,$_POST['subject']);
                            //$attachment = mysqli_real_escape_string($mysqli,$_POST['attachment']);
                            $message = mysqli_real_escape_string($mysqli,$_POST['message']);

                            $attachment = $_FILES['attachment']['name'];
                            move_uploaded_file($_FILES['attachment']['tmp_name'], '../admin/assets/image/attachment/'.$attachment);
                        

                           
                            // PDF attachment
                            $file_name = '';
                            if(isset($_FILES['pdf']['name']))
                            {
                                // If the 'pdf' field has an attachment
                                $file_name = $_FILES['pdf']['name'];
                                $file_tmp = $_FILES['pdf']['tmp_name'];

                                // Move the uploaded PDF file into the 'pdf' folder
                                move_uploaded_file($file_tmp, '../admin/assets/pdf/attachment/' . $file_name);
                            }

                            $sql = "INSERT INTO mail(name, sendTo, subject, attachment, message, pdf) VALUES ('$name', '$sendTo', '$subject', '$attachment', '$message', '$file_name')";
                            $results = mysqli_query($mysqli, $sql);
                            

                        if($results==1){
                              ?>
                        <div class="alert alert-success strover animated bounce" id="sams1">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully! </strong><?php echo'Report has successfully added';?></div>
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
                <div>
                <a href="compose_mail.php" class="btnn btn-baik-active"><span class="fa-solid fa-pen-to-square"></span> Compose</a> 

                <a href="inbox.php" class="btnn btn-baik"><span class="fa-solid fa-inbox"></span> Inbox</a>

                </div><br>
		<div class="panel panel-default sammacmedia">
            <div class="panel-heading">COMPOSE MAIL</div>
        <div class="panel-body">
            <form method="post" action="compose_mail.php"  enctype="multipart/form-data">

        <div class="row form-group">
        <div class="col-lg-6">
                            <label>FROM</label>
                                <div class="wrapper_scroll">
                                <select class="form-control" name="name">
                                    <option value="">---------SELECT SENDER DEPARTMENT---------</option>
                                    <option value="MANAGEMENT/SLT">MANAGEMENT/SLT</option>
                                    <option value="ADMIN">ADMIN</option>
                                    <option value="FINANCE">FINANCE</option>
                                    <option value="COMPLIANCE">COMPLIANCE</option>
                                    <option value="TRAINING">TRAINING</option>
                                    <option value="DIGITAL MARKETING">DIGITAL MARKETING</option>
                                    <option value="DPACC">DPACC COMMITTEE</option>
                                    <option value="COURTS">COURTS</option>
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
                                    <option value="RHB">RHB BANK</option>
                                    <option value="CARSOME">CARSOME</option>
                                    <option value="CELCOM">CELCOM</option>
                                    <option value="UUM">UUM</option>
                                    <option value="ANGKASA">ANGKASA</option>
                                    <option value="BSNC">BSNC</option>
                                    <option value="KOPUTRA">KOPUTRA</option>
                                   
                                </select>
                                </div>
                        </div>  

            <div class="col-lg-6">
            <label>SEND TO</label>
                <div class="wrapper_scroll">
                <select class="form-control" name="sendTo" data-live-search="true">
                        <option value="">-----------------------SELECT RECEIVER-----------------------</option>
                        <option value="all">ALL</option>
                        <option value="hr">HUMAN RESOURCE</option>
                        <option value="fa">FACILITY ASSETS</option>
                        <option value="it">INFORMATION TECHNOLOGY</option>
                    </select>
                </div>
            </div>

    </div>
         
        <div class="row form-group">
            <div class="col-lg-6">
            <label>Subject</label>
            <input type="text" class="form-control" name="subject" required>

            </div>

         
            </div>

                <div class="row form-group">
            <div class="col-lg-12">
            <label>Message</label>
            <textarea class="form-control" rows="8" id="comment" name="message"></textarea>
            </div>  

            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
           
           
            <div class="col-lg-6">
                <label>Attachment <i>*image format only (png/ jpg/ jpeg)</i></label>
                <input type="file" id="file" class="form-control" name="attachment"  accept="image/*" onchange="validateImage('file')" >
            </div>

            <div class="col-lg-6">
                <label>PDF Attachment <i>*pdf</i></label>
                <input type="file" class="form-control" name="pdf"  accept=".pdf">


            </div>
     
     
             
           </div>
                
                <div class="row">
                <div class="col-md-6">
                  <button type="submit" name="submit" class="btn btn-suc btn-block" onclick="return confirm('Submit mail?');"><span class="fa fa-plus"></span> Submit</button>  
                </div>
                     <div class="col-md-6">
                  <button type="reset" class="btn btn-dan btn-block"><span class="fa fa-times"></span> Cancel</button>  
                </div>
                </div>
            </form>

            </div>
                </div>
                <div class="line"></div>
                <footer>
            <p class="text-center">
            Ahmad Solehin & Nur Elinadira &copy;<?php echo date("Y ");?>Copyright. Dhir & Partners Sdn Bhd    
            </p>
            </footer>
            </div>
            
        </div>
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

        <script>

        $(".checkbox-dropdown").click(function () {
            $(this).toggleClass("is-active");
        });

        $(".checkbox-dropdown ul").click(function(e) {
            e.stopPropagation();
        });


        </script>
        
    </body>
</html>
