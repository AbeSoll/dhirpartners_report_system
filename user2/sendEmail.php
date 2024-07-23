<?php
    use PHPMailer\PHPMailer\PHPMailer;

    if (isset($_POST['name']) && isset($_POST['email'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $subject = $_POST['subject'];
        $body = $_POST['body'];

        require_once "../admin/PHPMailer/PHPMailer.php";
        require_once "../admin/PHPMailer/SMTP.php";
        require_once "../admin/PHPMailer/Exception.php";

        $mail = new PHPMailer();

        //SMTP Settings
        $mail->isSMTP();
        $mail->Host = "smtp.gmail.com";
        $mail->SMTPAuth = true;
        $mail->Username = "dnpit800511@gmail.com"; //your email
        $mail->Password = 'ndllnlchkzionzue'; //your password 2-verification email
        $mail->Port = 465; //587
        $mail->SMTPSecure = "ssl"; //tls

        //Email Settings
        $mail->isHTML(true);
        $mail->setFrom($email, $name);
        
        $mail->addAddress('hadiustar19@gmail.com', 'Abdul Hadi');
        $mail->addAddress('akutechdnp@gmail.com', 'Hairul Nizam');
        $mail->addAddress('muhathir@dhirpartners.com.my', 'Muhathir Makhtar');
        $mail->addAddress('it.support@dhirpartners.com.my', 'IT Support');
        $mail->addAddress('athieer@gmail.com', 'Muhathir Makhtar');
        $mail->addAddress('nurelinadira@gmail.com', 'Nur Elinadira');
        $mail->addAddress('dnpjhri010@gmail.com', 'Muhammad Wafrihaziq');
        //$mail->addAddress('solehinahmad948@gmail.com', 'Ahmad Solehin'); //your email
        //$mail->addAddress('nryzall@gmail.com', 'Nur Izal');

        $mail->Subject = $subject;
        $mail->Body = $body;

        if ($mail->send()) {
            $status = "success";
            $response = "Email is sent!";
        } else {
            $status = "failed";
            $response = "Something is wrong: <br><br>" . $mail->ErrorInfo;
        }

        exit(json_encode(array("status" => $status, "response" => $response)));
    }
?>
