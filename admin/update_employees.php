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
      
$sqlE =mysqli_query($mysqli,"SELECT * FROM employees WHERE id='{$_GET['id']}' ");
$eprow=mysqli_fetch_array($sqlE);


$error=""; 
$message="too short";

$id="0";
$name="";
$employee_id="";
$phone="";
$email="";
$gender="";
$joined="";
$tmp="";
$branch="";
$department="";

if(isset($_POST['update'])) 
{ 
$name=$_POST['txtname'];
$employee_id=$_POST['txtemployee_id']; 
$phone=$_POST['txtphone']; 
$email=$_POST['txtemail']; 
$gender=$_POST['txtgender']; 
$joined=$_POST['txtjoined']; 
$tmp=$_POST['txttmp']; 
$branch=$_POST['txtbranch']; 
$department=$_POST['txtdepartment']; 

//compare textbox1 vs 2 
// 
// 
// 
// 

if(strlen($name)<1) 
{echo ("<SCRIPT LANGUAGE='JavaScript'> 
window.alert('$message') </SCRIPT>");

exit(); 
} 
{ 
if($_POST['txtid']=="0") 
{ 
//add new employees
$sql="insert into employees(name,employee_id,phone,email,gender,joined,tmp,branch,department) values ('$name','$employee_id','$surname','$phone','$email','$gender','$joined','$tmp','$branch','$department')";
$result = $mysqli->query($sql); 
} 
else 
{ 
//update exist staff
	$sql2="update employees set employee_id='$employee_id', name='$name', email='$email' , phone='$phone', gender='$gender', joined='$joined', tmp='$tmp', branch='$branch', department='$department' where id='{$_GET['id']}' ";
	
	$result2=$mysqli->query($sql2);
		if($result2)
		{
			header('Refresh:0; all_employees.php');
		}
} 
} 

if(isset($_GET['update']))
{
	$sql3="select * from employees where id='{$_GET['id']}' ";
	$result3=$mysqli->query($sql3);
	
	while($row = $result3->fetch_assoc()){
		$employee_id=$row['employee_id'];
		$name=$row['name'];
		$phone=$row['phone'];
        $email=$row['email'];
        $gender=$row['gender'];
        $joined=$row['joined'];
        $tmp=$row['tmp'];
        $branch=$row['branch'];
        $department=$row['department'];

		
		//echo "number of rows: "' .result3->num_rows;

         
	}

  

}

}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | UPDATE EMPLOYEES</title>

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
                    
                    <li class="active">
                        <a href="all_employees.php">
                            <i class="fa fa-users"></i>
                           All Employees
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
                                if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                            ?>
                                <li >
                                    <a href="v_issue.php">
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

                <?php
              
                    $select = mysqli_query($mysqli, "select * from employees where id='{$_GET['id']}'") or die('query failed');
                    if(mysqli_num_rows($select) > 0){
                        $fetch = mysqli_fetch_assoc($select);
                    }
                ?>


 
                <div class="line"></div>
                <div><a href="all_employees.php" class="btn btn-warning"><span class="fa fa-times"></span> Back</a><br><br></div>
<div class="row">
<div class="col-md-8">
    <div class="panel panel-default sammacmedia">
            <div class="panel-heading">Add New Employee</div>
        <div class="panel-body">


        <form method="post" action="" >
        <div class="row form-group">
            <div class="col-lg-6">
                <label>Name</label>
                <input type="text" class="form-control" name="txtname" size="25" value="<?php echo $fetch['name'];?>" readonly>
                <input type="hidden" name="txtid" value="<?php echo $name; ?>">
            </div>  

            <div class="col-lg-6">
                <label>Employee ID</label>
                <input type="text" class="form-control" name="txtemployee_id" size="25" value="<?php echo $fetch['employee_id'];?>" readonly>
                <input type="hidden" name="txtid" value="<?php echo $employee_id; ?>">
            </div>  
        </div>
        <div class="row form-group">
            <div class="col-lg-6">
                <label>Branch</label>
                <select class="form-control" name="txtbranch">
                    <option><?php echo $eprow['branch'];?></option>
                    <option>MUAR</option>
                    <option>KUALA LUMPUR(HQ)</option>    
                </select>
            </div>  

            <div class="col-lg-6">
                <label>Department</label>
                <div class="wrapper_scroll">
                <select class="form-control" name="txtdepartment" data-live-search="true">
                        <option><?php echo $eprow['department'];?></option>
                        <option value="MANAGEMENT/SLT">MANAGEMENT/SLT</option>
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
                <input type="email" class="form-control" name="txtemail" value="<?php echo $fetch['email'];?>" required>
                <input type="hidden" name="txtid" value="<?php echo $email; ?>">
            </div>  
            <div class="col-lg-6">
                <label>Phone/Ext</label>
                <input type="text" class="form-control" name="txtphone" size="25" value="<?php echo $fetch['phone'];?>" required>
                <input type="hidden" name="txtid" value="<?php echo $phone; ?>">
            </div>  
        </div>   
         <div class="row form-group">
          <div class="col-lg-3">
            <label>Gender</label>
             <input type="text" name="txtgender" class="form-control"  value="<?php echo $fetch['gender'];?>" readonly>
             <input type="hidden" name="txtid" value="<?php echo $gender; ?>">

            </div>  

              <div class="col-lg-3">
            <label>Joined</label>
             <input type="text" name="txtjoined" class="form-control"  value="<?php echo $fetch['joined'];?>" readonly>
             <input type="hidden" name="txtid" value="<?php echo $joined; ?>">

            </div>
              <div class="col-lg-6">
            <label>TMP</label>
             <input type="text" name="txttmp" class="form-control"  value="<?php echo $fetch['tmp'];?>" readonly>
             <input type="hidden" name="txtid" value="<?php echo $tmp; ?>">

            </div>
        </div>

                <div class="row">
                <div class="col-md-12">
                  <button type="submit" name="update" class="btn btn-warning btn-block" onclick="return confirm('Update Employee Info?');"><span class="fa fa-pencil"></span> Update</button>  
                </div>
                   
                </div>
            </form>

            </div>
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
            Ahmad Solehin & Nur Elinadira &copy;<?php echo date("Y ");?>Copyright. All Rights Reserved    
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