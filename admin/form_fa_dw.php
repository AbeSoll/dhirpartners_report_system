<?php
 require_once('includes/session.php');
 require_once('includes/conn.php');

if(!empty($_GET['tmp'])){
    $fileName  = basename($_GET['tmp']);
    $filePath  = "assets/document/facility/".$fileName;
    
    if(!empty($fileName) && file_exists($filePath)){
        //define header
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Disposition: attachment; filename=$fileName");
        header("Content-Type: application/zip");
        header("Content-Transfer-Encoding: binary");
        
        //read file 
        readfile($filePath);
        exit;
    }
    else{
        echo "file not exist";
    }
}

