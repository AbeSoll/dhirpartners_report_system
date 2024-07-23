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

      $sqlE =mysqli_query($mysqli,"SELECT * FROM mail WHERE id='{$_GET['id']}' ");
      $eprow=mysqli_fetch_array($sqlE);

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

                <?php
              
                    $select = mysqli_query($mysqli, "select * from mail where id='{$_GET['id']}'") or die('query failed');
                    if(mysqli_num_rows($select) > 0){
                        $fetch = mysqli_fetch_assoc($select);
                    }
                 ?>

                <div class="line"></div>


                           
                <div>
                    <a href="inbox.php" class="btn btn-warning"><span class="fa fa-reply"></span> Back</a>

                    <a href="compose_mail.php" class="btnn btn-baik"><span class="fa-solid fa-pen-to-square"></span> Compose</a> 

                    <a href="inbox.php" class="btnn btn-baik-active"><span class="fa-solid fa-inbox"></span> Inbox</a>

                </div>
                
                <br>
		            <div class="panel panel-default sammacmedia">
                        <div class="panel-heading">VIEW MAIL</div>

                            

                         


                        
                            <div class="panel-body">

                        <div class="col-md-6">
                            <label>Mail From</label> 
                            <input name="name" type="text" class="form-control" value="<?php echo $fetch['name'];?>" readonly>  
                        </div>

                        
                        <div class="col-md-6">
                            <label>Subject</label> 
                            <input name="subject" type="text" class="form-control" value="<?php echo $fetch['subject'];?>" readonly>    
                        </div>

                        <div class="col-md-12">
                            <label>Message</label> 
                            <!--<input name="message" type="text" class="form-control" value="<?php echo $fetch['message'];?>" readonly>   -->
                            <textarea class="form-control" rows="8" id="comment" name="message" readonly><?php echo htmlentities($fetch['message']); ?></textarea>
 
                        </div>

                        <!-- Textarea without sizing class -->
                        <!--<div class="form-outline mb-4">
                            <textarea class="form-control" id="textAreaExample6" rows="3"></textarea>
                            <label class="form-label" for="textAreaExample6">100% width of the parent</label>
                        </div>-->

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
                       


                        <div class="col-md-12">
                            <label>Attachment</label> 
                            <br>

                            <?php 

                                $image_width = 550;
                                $image_height = 550;
                                //$image_border = '1px solid black';

                                echo '<img src="assets/image/attachment/'.$fetch['attachment'].'" >';                                
                                
                                //echo "<img src='../uploads/".$result->evidence."' />";

                                //echo '<img src="uploaded_img/'.$fetch['image'].'">';
							?>
                        </div>

                        <div class="col-md-12">
                            <label>PDF Attachment</label>
                            <br>
                            <?php
                                $pdfPath = 'assets/pdf/attachment/' . $fetch['pdf'];
                                if (file_exists($pdfPath)) {
                                    ?>
                                    <a href="<?php echo $pdfPath; ?>" target="_blank"><span class="fa-regular fa-file-pdf fa-2xl" style="color: #d11515;"></a>
                                    <?php
                                } else {
                                    echo "PDF file not found.";
                                }
                            ?>
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
        
        
    </body>
</html>
