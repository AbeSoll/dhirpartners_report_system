<?php require_once('includes/session.php');
      require_once('includes/conn.php');

      if($_SESSION['permission']==3) {
        header("Location:../user2/dashboard.php");
      }
      else if($_SESSION['permission']==4){
        header("Location:../user_HR/dashboard.php");
      }
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | HR DEPT</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/awesome/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <script src="https://kit.fontawesome.com/75c3dd07ff.js" crossorigin="anonymous"></script>
    <style media="screen">
      embed{
        border: 2px solid black;
        margin-top: 30px;
      }
      .div1{
        margin-left: 35px;
      }
    </style>
  </head>
  <body>
  

  <div class="div1">

  <!--GET VIEW-->

<?php
require_once('includes/session.php');
require_once('includes/conn.php');

if(isset($_GET['view']))
{

  $sql="SELECT tmp from hr where id='{$_GET['id']}'";
  
  $query=mysqli_query($mysqli,$sql);

  while ($info=mysqli_fetch_array($query)) {
    ?>
      <embed type="application/pdf" src="../admin/assets/document/hr/<?php echo $info['tmp'] ; ?>" width="1200" height="700">
  
<?php
    }

}



?>

<?php require_once('includes/session.php');
      require_once('includes/conn.php');
$error=""; 
$message = "Too Short";  

$id="";
$title="";
$type="";
$tmp="";
$date="";
$status="";


if(isset($_POST['btnsave']))
{
    $id=$_POST['txtid']; 
    $title=$_POST['txttitle'];
    $type=$_POST['txttype']; 
    $tmp=$_POST['txttmp']; 
    $date=$_POST['txtldate'];
    $status=$_POST['txtstatus'];

    //compare textbox1 vs 2 

    if(strlen($employee_id)<4)
    {
        echo("<SCRIPT LANGUAGE='JavaScript'>
        window.alert('$message')</SCRIPT>");

        exit();
    }
}

//check id for delete
if(isset($_GET['view'])){
    $sql="UPDATE hr SET status = 0 where id='{$_GET['id']}' ";
    $result=$mysqli->query($sql);
}
?>



</div>


  </body>
</html>