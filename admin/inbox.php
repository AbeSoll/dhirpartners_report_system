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

                    <li class="active">
                        <a href="compose_mail.php">
                            <i class="fa-regular fa-paper-plane"></i>
                            Compose Mail                        
                        </a>
                    </li>

                    <?php }?>
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

                            $sql_get = mysqli_query($mysqli,"SELECT * FROM mail WHERE status=0 AND (`sendTo` = 'it' OR `sendTo` = 'all')");
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
                                if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                            ?>
                             <li >
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
                <a href="compose_mail.php" class="btnn btn-baik"><span class="fa-solid fa-pen-to-square"></span> Compose</a> 

                <a href="inbox.php" class="btnn btn-baik-active"><span class="fa-solid fa-inbox"></span> Inbox</a>

                </div><br>
		        <div class="panel panel-default sammacmedia">
                    <div class="panel-heading">INBOX MAIL</div>
                    <div class="panel-body">
                        <table class="table table-striped thead-dark table-bordered table-hover" id="example">
                            <thead>
                                <tr>
                                    <th style="text-align: center">No</th>
                                    <th style="text-align: center">Date</th>
                                    <th style="text-align: center">Sender</th>
                                    <th style="text-align: center">Subject</th>
                                  
                                    <th style="text-align: center"><center>Action</center></th> 
                                </tr>
                            </thead>
                    <?php
                                   $a=1;
                    $query=mysqli_query($mysqli,"SELECT * FROM `mail` WHERE `status` = 0 AND (`sendTo` = 'it' OR `sendTo` = 'all')");
                     while($row=mysqli_fetch_array($query))
                        {
                          
                          ?>
                          <tr>
                            <td  style="text-align: center"><?php echo $a;?></td> 
                            <td  style="text-align: center"><?php echo $row['date'];?></td>
                            <td style="text-align: center"><?php echo $row['name'];?></td>
                            <td><?php echo $row['subject'];?></td>
                           
                        </td>  


                            <td style="width:130px">
                            <center>

                           


                            <a href="view_mail.php?=1&id=<?php echo $row['id'];?>" data-toggle="modal" class="btn btn-warning"><span class="fa fa-eye"></span></a>
                            <!-- <a href="issue_read.php?read=1&id=<?php echo $row['id'];?>" data-toggle="modal" class="btnn btn-baik"  onclick="return confirm('Mark as read?');"><span class="	fa fa-check" name="submit"></span></a> -->
                          
                            <a href="inbox.php?edited=1&idx=<?php echo $row['id']; ?>" data-toggle="modal" class="btn btn-danger" onclick="return confirm('Delete Mail?');"><span class="fa fa-trash"></span></a> 

                            </center>
                              </td>
                          </tr>
                          <?php
                         require('userInfos.php');
                        ;
                            $a++;
                      }

                      if (isset($_GET['idx']) && is_numeric($_GET['idx']))
                      {
                          $id = $_GET['idx'];
                          if ($stmt = $mysqli->prepare("DELETE FROM mail WHERE id = ? LIMIT 1"))
                          {
                              $stmt->bind_param("i",$id);
                              $stmt->execute();
                              $stmt->close();
                               ?>
                    <div class="alert alert-success strover" id="sams1">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong> Successfully! </strong><?php echo'Record Successfully deleted please refresh this page';?></div>
               
                    <?php
                          }
                          else
                          {
                    ?>
                    <div class="alert alert-danger samuel" id="sams1">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong> Danger! </strong><?php echo'OOPS please try again something went wrong';?></div>
                    <?php
                          }
                          $mysqli->close();

                      }
                else

                {

                }
                       

          
                   
                      ?>
              
               
                </table>

            </div>
              
            
        </div>

        <div class="line"></div>
                <footer>
            <p class="text-center">
            Ahmad Solehin & Nur Elinadira &copy;<?php echo date("Y ");?>Copyright. Dhir & Partners Sdn Bhd    
            </p>
            </footer>
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
