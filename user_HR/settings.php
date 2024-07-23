<?php require_once('includes/session.php');
      require_once('includes/conn.php');

      if($_SESSION['permission']==2) {
        header("Location:../user1/dashboard.php");
    }
    else if($_SESSION['permission']==3){
        header("Location:../user2/dashboard.php");
    }
$sqlE =mysqli_query($mysqli,"SELECT * FROM users WHERE username='{$_SESSION['username']}'");
$eprow=mysqli_fetch_array($sqlE);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | SETTINGS</title>

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
                    <?php }?>

                    <li>
                        <a href="compose_mail.php">
                            <i class="fa-regular fa-paper-plane"></i>
                            Compose Mail                        
                        </a>
                    </li>
                    
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
                    
                    
                    <li class="active">
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
                                if($_SESSION['permission']==4){
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
                                                  
                            <?php
                            if(isset($mysqli,$_POST['submit'])){
                            $old_password1 =mysqli_real_escape_string($mysqli,$_POST['old_password']);
                            $password =mysqli_real_escape_string($mysqli,$_POST['password']);
                            $cpassword =mysqli_real_escape_string($mysqli,$_POST['cpassword']);
                                $old_password=($old_password1);
                                if($eprow['password']!=$old_password){
                                  ?>
                                <div class="alert alert-danger samuel animated shake" id="sams1">
                                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                                    <strong> Danger! </strong><?php echo'Sorry Enter Correct Old Password';?></div>
                                    <?php   
                                }else{
                                    if($password!=$cpassword){
                                     ?>
                                <div class="alert alert-danger samuel animated shake" id="sams1">
                                <a href="#" class="close" data-dismiss="alert">&times;</a>
                                <strong> Danger! </strong><?php echo'Sorry New Password And Confirm Password do not match please try again';?></div>

                                    <?php      
                                    }else{
                                      $password =($cpassword);  
                                $sqliU ="UPDATE users SET password='$password' WHERE username='{$_SESSION['username']}'";
                                $res = mysqli_query($mysqli,$sqliU);
                                if($res==1){
                                    ?>
                                <div class="alert alert-warning sammac animated shake" id="sams1">
                          <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully </strong><?php echo'You Have Updated your password successfully';?></div>

                                    <?php
                                }
                                }
                                }
                  
                            }
                if(isset($mysqli,$_POST['update'])){
                    $name = mysqli_real_escape_string($mysqli,$_POST['name']);
                    $employee_id = mysqli_real_escape_string($mysqli,$_POST['employee_id']);
                    $phone = mysqli_real_escape_string($mysqli,$_POST['phone']);
                    $email = mysqli_real_escape_string($mysqli,$_POST['email']);
                    $branch = mysqli_real_escape_string($mysqli,$_POST['branch']);
                    $department = mysqli_real_escape_string($mysqli,$_POST['department']);
                    
                    $sqlTaru = "UPDATE users SET name ='$name', employee_id ='$employee_id', phone ='$phone', email ='$email', branch = '$branch', department = '$department' WHERE username= '{$_SESSION['username']}'";
                    $resTaru = mysqli_query($mysqli,$sqlTaru);
                    if($resTaru==1){
                        ?>
                        <div class="alert alert-warning sammac animated shake" id="sams1">
                          <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully </strong><?php echo'You have updated your profile successfully';?></div>
                        <?php
                    }else{
                    ?>
                <div class="alert alert-warning samuel animated shake" id="sams1">
                          <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully </strong><?php echo'OOP something went wrong';?></div>
                <?php
                    }
                }
                            ?>
                <div class="line"></div>
<div class="row">
<div class="col-md-8">
    <div class="panel panel-default sammacmedia">
            <div class="panel-heading">UPDATE USER INFORMATION</div>
        <div class="panel-body">
            <form method="post" action="settings.php" >
        <div class="row form-group">
          <div class="col-lg-6">
            <label>Name</label>
              <input type="text" class="form-control" name="name" value="<?php echo $eprow['name'];?>" readonly>
            </div>  
             <div class="col-lg-6">
            <label>Employee ID</label>
              <input type="text" class="form-control" name="employee_id" value="<?php echo $eprow['employee_id'];?>" readonly>
            </div>  
        </div>
        <div class="row form-group">
          <div class="col-lg-6">
                <label>Branch</label>
                <select class="form-control" name="branch">
                    <option><?php echo $eprow['branch'];?></option>
                    <option>MUAR</option>
                    <option>KUALA LUMPUR(HQ)</option>    
                </select>
            </div>  
            <div class="col-lg-6">
                <label>Department</label>
                <div class="wrapper_scroll">
                <select class="form-control" name="department" data-live-search="true">
                        <option><?php echo $eprow['department'];?></option>
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
              <input type="email" class="form-control" name="email" value="<?php echo $eprow['email'];?>" required>
            </div>  
             <div class="col-lg-6">
            <label>Phone/Ext</label>
              <input type="text" class="form-control" name="phone" value="<?php echo $eprow['phone'];?>" required>
            </div>  
        </div>   
         <div class="row form-group">
          <div class="col-lg-3">
            <label>Gender</label>
             <input type="text" class="form-control"  value="<?php echo $eprow['gender'];?>" readonly>
            </div>  
              <div class="col-lg-3">
            <label>Access Level</label>
             <input type="text" class="form-control"  value="<?php echo $eprow['permission'];?>" readonly>
            </div>
              <div class="col-lg-6">
            <label>Member Since</label>
             <input type="text" class="form-control"  value="<?php echo $eprow['joined'];?>" readonly>
            </div>
        </div>

            <div class="row">
                <div class="col-md-12">
                  <button type="submit" name="update" class="btn btn-warning btn-block" onclick="return confirm('Update Your Info?');"><span class="fa fa-pencil-square-o"></span> Update</button>  
                </div>
            </div>
            </form>

            </div>
    </div>
    </div>
    <div class="col-md-4">
    <div class="panel panel-default sammacmedia">
            <div class="panel-heading">Change Password</div>
        <div class="panel-body">
            <form method="post" action="settings.php">
        <div class="row form-group">
          <div class="col-lg-12">
            <label>Old Password</label>
              <input type="password" class="form-control" name="old_password" required>
            </div>   
        </div>
           
                <div class="row form-group">
          <div class="col-lg-12">
            <label>New Password</label>
              <input type="password" class="form-control" name="password" required>
            </div>   
        </div>
                        <div class="row form-group">
          <div class="col-lg-12">
            <label>Confirm Password</label>
              <input type="password" class="form-control" name="cpassword" required>
            </div>   
        </div>

                <div class="row">
                <div class="col-md-12">
                  <button type="submit" name="submit" class="btn btn-danger btn-block" onclick="return confirm('Change Password?');"><span class="fa fa-lock"></span> Change</button>  
                </div>
                     
                </div>
            </form>

            </div>
                </div>
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
