<?php require_once('includes/session.php');
      require_once('includes/conn.php');

      if($_SESSION['permission']==2) {
        header("Location:../user1/dashboard.php");
      }
      else if($_SESSION['permission']==3) {
        header("Location:../user2/dashboard.php");
      }
      else if($_SESSION['permission']==4){
        header("Location:../user_HR/dashboard.php");
      }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | ADD USERS</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/awesome/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">

        <!-- Our Custom CSS Select dropdown -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
        

        <script src="https://kit.fontawesome.com/75c3dd07ff.js" crossorigin="anonymous"></script>
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

                    

                    <li>
                        <a href="compose_mail.php">
                            <i class="fa-regular fa-paper-plane"></i>
                            Compose Mail                        
                        </a>
                    </li>

                    <?php }?>
                    <li>
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

                    



                    <li class="active">
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

                            $sql_get = mysqli_query($mysqli,"SELECT * FROM mail WHERE status=0 AND (`sendTo` = 'it' OR `sendTo` = 'all')");
                            $countMail = mysqli_num_rows($sql_get);

            ?>
                <div clas="col-md-12 sammacmedia">
                    <img src="assets/image/line.png" class="img-thumbnail">
                    </div>
         
                
                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header" id="sams">
                            
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right  makotasamuel">
                             <?php
                                if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                            ?>

                                <li>
                                    <a href="compose_mail.php">
                                    <i class="fa-regular fa-paper-plane" style="color: gold;"></i>
                                    <span class="notify" id="count" style="color: gold;"><?php echo $countMail; ?></span>
                                    </a>
                                </li>

                                <li >
                                    <a href="v_issueAll.php">
                                    <i class="fa fa-envelope animated tada" style="color: gold;"></i>
                                    <span class="notify" id="count" style="color: gold;"><?php echo $count; ?></span>
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
                        <strong> Successfully! </strong><?php echo'Thank you for creating account';?></div>
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
		<div class="panel panel-default sammacmedia">
            <div class="panel-heading">ADD USERS</div>
        <div class="panel-body">
            <form method="post" action="a_users.php">
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
                    <option value="">-------------------------SELECT BRANCH-------------------------</option>
                    <option>MUAR</option>
                    <option>KUALA LUMPUR(HQ)</option>    
                </select>
            </div>  
            <div class="col-lg-6">
                <label>Department</label>
                <div class="wrapper_scroll">
                <select class="form-control" name="department" data-live-search="true">
                        <option value="">-----------------------SELECT DEPARTMENT-----------------------</option>
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
              <select class="form-control" name="permission">
              <option>1</option> <!-- ADMINISTRATOR -->
              <option>2</option> <!-- FA/ COMPLIANCE/ TRAINING -->
              <option>3</option> <!-- MANAGERS AND ASSISTANT MANAGERS/ CRO OPERATION/ NON-OPERATION STAFF -->
              <option>4</option> <!-- HR -->
              <option>5</option> <!-- FINANCE -->
              </select>
            </div>  
             <div class="col-lg-6">
            <label>Gender</label>
             <select class="form-control" name="gender">
                <option value="">-------------------------SELECT GENDER-------------------------</option>
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
                <div class="col-md-6">
                  <button type="submit" name="submit" class="btn btn-suc btn-block" onclick="return confirm('Add New User?');"><span class="fa fa-plus"></span> Submit</button>  
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
