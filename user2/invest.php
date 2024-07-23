<?php require_once('includes/session.php');
      require_once('includes/conn.php');

      if($_SESSION['permission']==2) {
        header("Location:../user1/dashboard.php");
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

                    <li>
                        <a href="compose_mail.php">
                            <i class="fa-regular fa-paper-plane"></i>
                            Compose Mail                        
                        </a>
                    </li>

                    <li class="active">
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

                            
                            $sql_get = mysqli_query($mysqli,"SELECT * FROM mail WHERE status=0 AND (`sendTo` = 'all')");
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
                            $employee_id = mysqli_real_escape_string($mysqli,$_POST['employee_id']);
                            $issues = mysqli_real_escape_string($mysqli,$_POST['issues']);
                            $notes = mysqli_real_escape_string($mysqli,$_POST['notes']);
                            $branch = mysqli_real_escape_string($mysqli,$_POST['branch']);
                            $department = mysqli_real_escape_string($mysqli,$_POST['department']);
                            $as = rand(1000,9999);     
                            $case_num = date("YmdHis").'.'.$as;
      
                  
                            $sql = "INSERT INTO cases(employee_id,issues,case_num,notes,branch,department)VALUES('$employee_id','$issues','$case_num','$notes','$branch','$department')";
                            $results = mysqli_query($mysqli,$sql);

                        if($results==1){
                              ?>
                        <div class="alert alert-success strover animated bounce" id="sams1">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong> Successfully! </strong><?php echo'Case has successfully added';?></div>
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
                    <p class="invest-text">Note to all users:<br>   
                    1. All users can report all issues that related to IT and Facility Assets (Computer Hardware & Software, Printer, Aircond, VOIP and etc).<br>
                    2. Select your employee number and the issue from the option given.<br>
                    3. Give your details of the issue on the text box below.<br> 
                    4. Please send email to IT Department if your report related to IT Department, same as for Facility Asset Departmet after submit your report. 
                </p> 
                <a href="email_it.php" class="btnn btn-baik"><span class="fa fa-send"></span> Send Email to IT Dept</a>
                 || <a href="email_fa.php" class="btnn btn-baik"><span class="fa fa-send"></span> Send Email to FA Dept</a>
                </div><br>
		<div class="panel panel-default sammacmedia">
            <div class="panel-heading">REPORT THE ISSUES</div>
        <div class="panel-body">
            <form method="post" action="invest.php">
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
            <label>Issues & Problem</label>
                <div class="wrapper_scroll">
                    <select class="form-control" name="issues" data-live-search="true" required>
                        <option value="" disabled selected>--------------------------SELECT ISSUES--------------------------</option>
                        <option>Hardware Issue</option>
                        <option>Software Issue (PD)</option>
                        <option>Software Issue (DDMS)</option>   
                        <option>Software Issue (OS/WINDOWS FAULTY)</option>   
                        <option>Microsoft Office Issue</option>  
                        <option>Printer Issue</option>  
                        <option>Network Issue</option>   
                        <option>Setup New PC</option>
                        <option>DNPBACKUP Error</option>    
                        <option>SMS Issue</option>       
                        <option>Facility Assets Issue</option>
                    </select>
                </div>
            </div>
           </div>
            <div class="row form-group">
            <div class="col-lg-6">
            <label>Branch</label>
                <div class="wrapper_scroll">
                <select class="form-control" name="branch">
                    <option value="">-------------------------SELECT BRANCH-------------------------</option>
                    <option>MUAR</option>
                    <option>KUALA LUMPUR(HQ)</option>    
                </select>
                </div>
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
                                    <option value="MANAGEMENT/SLT">MANAGEMENT/SLT</option>

                    </select>
                </div>
            </div>
            </div>
                <div class="row form-group">
            <div class="col-lg-12">
            <label>Details of issue</label>
              <textarea class="form-control" id="editor" name="notes"></textarea>
            </div>  
             
           </div>
                
                <div class="row">
                <div class="col-md-6">
                    <button type="submit" name="submit" class="btn btn-suc btn-block" onclick="return validateSelection() && confirm('Add Report?');"><span class="fa fa-plus"></span> Submit</button>  
                </div>

                <script>
                    function validateSelection() {
                        var selectBox = document.getElementById("select-issues");
                        var selectedValue = selectBox.value;
                        if (selectedValue === "") {
                            alert("Please select an issue.");
                            return false;
                        }
                        return true;
                    }
                </script>

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
    </body>
</html>
