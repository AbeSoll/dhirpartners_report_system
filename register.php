<?php require_once('includes/db.php');
      
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | ADD USERS</title>
        <!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="css/util.css">
	    <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <style>
	    form {
        background: rgba(162, 181, 205, 0.8);
        width: 940px;
        margin: 50px auto;
        max-width: 70%;
        border-radius: 10px;
        padding: 55px 30px;
	    }	
    </style>
    <body style="background-image: url('wallpaper8.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
        <div  class="container-login100" style="font-family: SourceSansPro-Regular;">
            
        <?php
                            if(isset($mysqli,$_POST['submit'])){
                            $name = mysqli_real_escape_string($mysqli,$_POST['name']);
                            $employee_id = mysqli_real_escape_string($mysqli,$_POST['employee_id']);
                            $email = mysqli_real_escape_string($mysqli,$_POST['email']);
                            $phon = mysqli_real_escape_string($mysqli,$_POST['phone']); 
                            $username = mysqli_real_escape_string($mysqli,$_POST['username']); 
                            $password = mysqli_real_escape_string($mysqli,$_POST['password']);
                            $cpassword = mysqli_real_escape_string($mysqli,$_POST['cpassword']);     
                            $permission = mysqli_real_escape_string($mysqli,$_POST['permission']);
                            $branch = mysqli_real_escape_string($mysqli,$_POST['branch']);
                            $department = mysqli_real_escape_string($mysqli,$_POST['department']); 
                            $gender = mysqli_real_escape_string($mysqli,$_POST['gender']);     
                            $joined = date(" d M Y ");  
                            $phone = ''.$phon;   
                           if($password != $cpassword){
                               echo 'error';
                           }
                            
                    else{      
                  
                $sql = "INSERT INTO users(name,employee_id,username,email,joined,type,permission,gender,branch,department,phone,password)VALUES('$name','$employee_id','$username','$email','$joined','user','$permission','$gender','$branch','$department','$phone','$password')";
                $results = mysqli_query($mysqli,$sql);
                        
                        
                        
                        if($results==1){
                        ?>
                        <div class="alert alert-success strover animated bounce" id="sams1">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully! </strong><?php echo'Thank you for creating account';?></div><br>
                        <?php

                          }else{
                                ?>
                         <div id="sams1" class="sufee-alert alert with-close alert-danger alert-dismissible fade show col-lg-12">
											<span class="badge badge-pill badge-danger">Error</span>
											OOPS something went wrong
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
						                </div>
                        <?php    
                          }      
                      }
                 }
            ?>
            <div>
                <form method="post" action="register.php">
                    <div>
                    <a href="index.php"><span class="fa fa-mail-reply fa-2x"></span></a>
                    <div style="font-size: 25px;" align="center">SIGN UP</div><br>
                    </div>
                    <div class="row form-group">
                        <div class="col-lg-6">
                            <label>Name</label>
                            <input type="text" class="form-control" name="name" required>
                        </div>  
                        <div class="col-lg-6">
                            <label>Employee ID (Example: JHR001)</label>
                            <input type="text" class="form-control" name="employee_id" required>
                        </div>  
                    </div>
                    <div class="row form-group">
                        <div class="col-lg-6">
                            <label>Branch</label>
                            <select class="form-control" name="branch">
                                <option value="">-------------SELECT BRANCH-------------</option>
                                <option>MUAR</option>
                                <option>KUALA LUMPUR(HQ)</option>    
                            </select>
                        </div>  
                        <div class="col-lg-6">
                            <label>Department</label>
                                <div class="wrapper_scroll">
                                <select class="form-control" name="department">
                                    <option value="">---------SELECT DEPARTMENT---------</option>
                                    <option value="MANAGEMENT/SLT">MANAGEMENT/SLT</option>

                                    <!--MUAR DEPARTMENT-->
                                    <option value="COURTS">COURTS</option>
                                    <option value="AEON WO">AEON WO</option> 
                                    <option value="TM">TM</option>
                                    <option value="DIGI">DIGI</option>
                                    <option value="P1/WIMAX">P1/WIMAX</option>
                                    <option value="CELCOM">CELCOM</option>
                                    <option value="CELCOM WO">CELCOM WO</option>
                                    <option value="CARSOME">CARSOME</option>
                                   

                                    <!--KL DEPARTMENT-->
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
                                    <option value="RHB">RHB BANK</option>
                                    <option value="UUM">UUM</option>
                                    <option value="ANGKASA">ANGKASA</option>
                                    <option value="BSNC">BSNC</option>
                                    <option value="KOPUTRA">KOPUTRA</option>
                                    <option value="MARA">MARA</option>
                                    <option value="BSN">BSN</option>


                                    <!--SO DEPARTMENT-->
                                    <option value="HUMAN RESOURCE">HUMAN RESOURCE</option>
                                    <option value="ADMIN">ADMIN</option>
                                    <option value="FINANCE">FINANCE</option>
                                    <option value="COMPLIANCE">COMPLIANCE</option>
                                    <option value="TRAINING">TRAINING</option>
                                    <option value="FACILITY ASSETS">FACILITY ASSETS</option>
                                    <option value="INFORMATION TECHNOLOGY">INFORMATION TECHNOLOGY</option>
                                    <option value="DIGITAL MARKETING">DIGITAL MARKETING</option>
                                    <option value="MANAGEMENT/SLT">MANAGEMENT/SLT</option>

                                </select>
                                </div>
                        </div>  
                    </div>
                    <div class="row form-group">
                        <div class="col-lg-6">
                            <label>Email</label>
                            <input type="email" class="form-control" name="email" required>
                        </div>  
                        <div class="col-lg-6">
                            <label>Phone/Ext</label>
                            <input type="text" class="form-control" name="phone" required>
                        </div>  
                    </div>   
                    <div class="row form-group">
                        <div class="col-lg-6">
                            <label>Access Level</label>
                            <input type="text" class="form-control" name="permission" value="3" readonly>
                        </div>  
                        <div class="col-lg-6">
                            <label>Gender</label>
                            <select class="form-control" name="gender">
                                <option value="">-------------SELECT GENDER-------------</option>
                                <option>FEMALE</option>
                                <option>MALE</option>      
                            </select>
                        </div>  
                    </div>
                    <div class="row form-group">
                        <div class="col-lg-6">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username">
                        </div>  
                        <div class="col-lg-3">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password">
                        </div> 
                            <div class="col-lg-3">
                            <label>Confirm Password</label>
                            <input type="password" class="form-control" name="cpassword">
                        </div> 
                    </div>
                    <div class="row">
                        <div class="col-md-6" align="center">
                            <button type="submit" name="submit" class="login100-form-btn"><span class="fa fa-plus"></span> Submit</button>  
                        </div>
                        <div class="col-md-6" align="center">
                            <button type="reset" class="login100-form-btn"><span class="fa fa-times"></span> Cancel</button>  
                        </div>
                    </div>
                    
                </form>
            </div>

        


        <div id="dropDownSelect1"></div>
	
    <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
        <script src="js/main.js"></script>
        <!-- jQuery CDN -->
         <script src="assets/js/jquery-1.10.2.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="assets/js/bootstrap.min.js"></script>

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
    </script>
    </body>
</html>
