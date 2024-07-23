<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>D&P Intranet Web System</title>
        <link rel="Stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&family=Koulen&family=Oleo+Script+Swash+Caps&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <script src="https://kit.fontawesome.com/c93f14d0e6.js" crossorigin="anonymous"></script>
    </head>


<body>


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
if(isset($_GET['read'])){
    $sql="UPDATE hr SET status = 0 where id='{$_GET['id']}' ";
    $result=$mysqli->query($sql);
    if($result)
    {
        {
            echo "
            <script>
            alert('Status changed');
                document.location.href = 'form_hr.php';
            </script>
        ";
            header('Refresh:0;form_hr.php');
        }
    }
}
?>



</body>
</html>
