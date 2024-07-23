
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

      $sqlE =mysqli_query($mysqli,"SELECT * FROM cases WHERE id='{$_GET['id']}' ");
      $eprow=mysqli_fetch_array($sqlE);


$error=""; 
$message="too short";

$id="0";
$solve_name="";
$solve_name2="";
$solve_remarks="";


if(isset($_POST['update'])) 
{ 
$solve_name=$_POST['txtsolve_name'];
$solve_name2=$_POST['txtsolve_name2']; 
$solve_remarks=$_POST['txtsolve_remarks']; 
 

//compare textbox1 vs 2 
// 
// 
// 
// 

if(strlen($solve_name)<1) 
{echo ("<SCRIPT LANGUAGE='JavaScript'> 
window.alert('$message') </SCRIPT>");

exit(); 
} 
{ 
if($_POST['txtid']=="0") 
{ 
//add new employees
$sql="insert into cases(employee_id,date,issues,notes,case_num,branch,department) values ('$employee_id','$date','$issues','$notes','$case_num','$branch','$department')";
$result = $mysqli->query($sql); 
} 
else 
{ 
//update exist staff
	$sql2="update cases set solve_name2='$solve_name2', solve_name='$solve_name', solve_remarks='$solve_remarks' where id='{$_GET['id']}' ";
	
	$result2=$mysqli->query($sql2);
		if($result2)
		{
			header('Refresh:0; v_issue.php');
		}
} 
} 

if(isset($_GET['update']))
{
	$sql3="select * from cases where id='{$_GET['id']}' ";
	$result3=$mysqli->query($sql3);
	
	while($row = $result3->fetch_assoc()){
		$solve_name2=$row['solve_name2'];
		$solve_name=$row['solve_name'];
		$solve_remarks=$row['solve_remarks'];
   

		
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

        <title>D&P Intranet Web System | ADD EMPLOYEES</title>

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

                    <li class="active">
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

                <?php
              
              $select = mysqli_query($mysqli, "select * from cases where id='{$_GET['id']}'") or die('query failed');
              if(mysqli_num_rows($select) > 0){
                  $fetch = mysqli_fetch_assoc($select);
              }
          ?>

                <div class="line"></div>
                <div><a href="v_issue.php" class="btn btn-warning"><span class="fa fa-times"></span> Back</a><br><br></div>

                                  
		<div class="panel panel-default sammacmedia">
            <div class="panel-heading">Report Solved By</div>
        <div class="panel-body">
            <form method="post" action="" enctype="multipart/form-data">
        <div class="row form-group">
          <div class="col-lg-6">
            <label>Name 1</label>
            <select class="form-control" name="txtsolve_name" value="<?php echo $fetch['solve_name']; ?>">
            <option value="<?php echo $fetch['solve_name']; ?>"><?php echo $fetch['solve_name']; ?></option>
                    <option>MUHATHIR MAKHTAR (JHR190)</option>
                    <option>HAIRUL NIZAM MOHD (JHR018)</option>
                    <option>ABDUL HADI HASSAN (JHR253)</option>    
                    <option>NUR ELINADIRA (JHR273)</option>     
                </select>
            </div>  
             <div class="col-lg-6">
            <label>Name 2 <i>*if any</i></label>
            <select class="form-control" name="txtsolve_name2"  value="<?php echo $fetch['solve_name2']; ?>">
            <option value="<?php echo $fetch['solve_name2']; ?>"><?php echo $fetch['solve_name2']; ?></option>
                    <option>MUHATHIR MAKHTAR (JHR190)</option>
                    <option>HAIRUL NIZAM MOHD (JHR018)</option>
                    <option>ABDUL HADI HASSAN (JHR253)</option>    
                    <option>NUR ELINADIRA (JHR273)</option>      
                </select>
            </div>  
        </div>
  
            <div class="row form-group">
                <div class="col-lg-12">
                    <label>Remarks</label>
                    <input type="text" name="txtsolve_remarks" class="form-control"  value="<?php echo $fetch['solve_remarks'];?>" required>
                    <input type="hidden" name="txtid"  value="<?php echo $solve_remarks; ?>">

                </div>  
        
            </div>   

        <div class="row">
                <div class="col-md-6">
                  <button type="submit" name="update" class="btn btn-suc btn-block" onclick="return confirm('Solved the Report');"><span class="fa fa-plus"></span> Submit</button>  
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