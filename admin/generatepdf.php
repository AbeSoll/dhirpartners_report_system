<?php

// Include the main TCPDF library (search for installation path).
require_once('TCPDF-main/tcpdf.php');
require_once('includes/conn.php');

if(isset($_GET['pdf_report_generate']))
{
   // $date = $_GET['date'];
    //$name = $_GET['name'];

   // $select = "SELECT caaz"

}

/**
 * 
 */
class PDF extends TCPDF
{
   public function Header()
   {
    $imageFile = K_PATH_IMAGES. 'dnplogo.png';
    $this->Image($imageFile, 50, 10, 40, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);

    $this->Ln(5); 
    //font name, style, size
    $this->SetFont('helvetica','B','12');
    //189 is a total width of A4 page, height, border, line,
    //Cell($w, $h=10, $txt='', $border=0, $ln=0, $align='', $fill=0, $link='', $stretch=0, $ignore_min_height=false, $calign='T', $valign='M')
    $this->Cell(259,5,'DHIR AND PARTNERS SDN BHD',0,1,'C');
    $this->SetFont('helvetica','',8);
    $this->Ln(1); //space
    $this->Cell(259,3,'INFORMATION TECHNOLOGIES DEPARTMENT',0,1,'C');
    $this->SetFont('helvetica','',8);
    $this->Cell(259,3,'No 23-2, Jalan Mega, Jln Sakeh, Pusat Perdagangan Mega',0,1,'C');
    $this->Cell(259,3,'84000 Muar, Johor',0,1,'C');
    $this->Cell(259,3,'Phone: 06-950 1006',0,1,'C');
    $this->Cell(259,3,'Email: hr@dhirpartners.com.my',0,1,'C');
    $this->SetFont('helvetica','B',11);
    $this->Ln(2); //space
    $this->Cell(259,3,'SOLVED REPORTED ISSUES',0,1,'C');






   }

   public function Footer()
   {
    $this->SetY(-50); //position at 15mm from bottom

    //$this->writeHTML($html, true, false, true, false, '');

    $this->Ln(8);
    $this->SetFont('times','B',10);
    // MultiCell($w, $h, $txt, $border=0, $align='J', $fill=0, $ln=1, $x='', $y='', $reseth=true, $stretch=0, $ishtml=false, $autopadding=true, $maxh=0)
   // $this->MultiCell(189,15,'HOD Signed',0,'L',0,1,'','',true);
    $this->Ln(2);
    $this->Cell(20,1,'_____________________',0,0);
    $this->Cell(118,1,'',0,0);
    $this->Cell(51,1,'_____________________',0,1);
    $this->Cell(20,5,'HOD Signature',0,0);
    $this->Cell(118,5,'',0,0);
    $this->Cell(20,5,'General Manager Signature',0,0);
    $this->Ln(7);

    //set font
    $this->SetFont('helvetica','I',8);
    //page number

    date_default_timezone_set("Asia/Kuala_Lumpur");
    $today = date("F j, Y/ g:i A", time());

    $this->Cell(25,5,'Generation Date/Time: ' .$today,0,0,'L');
    $this->Cell(164,5,'Page ' .$this->getAliasNumPage(). ' of ' .$this->getAliasNbPages(), 0, false, 'R', 0, '', 0, false, 'T', 'M');
   }
}


// create new PDF document
                //portrait or landscape
$pdf = new PDF('l', 'mm', 'A4', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('DnP IT Department');
$pdf->SetTitle('Generated PDF');
$pdf->SetSubject('Generated PDF');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
$pdf->setFooterData(array(0,64,0), array(0,64,128));

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// set default font subsetting mode
$pdf->setFontSubsetting(true);

// Set font
// dejavusans is a UTF-8 Unicode font, if you only need to
// print standard ASCII chars, you can use core fonts like
// helvetica or times to reduce file size.
$pdf->SetFont('dejavusans', '', 14, '', true);



// Add a page
// This method has several options, check the source code documentation for more information.
$pdf->AddPage();

$pdf->Ln(18); //height

/**$pdf->SetFont('times','B',10);
$pdf->Cell(189,3,'Report as on :- ' .$date, 0, 1,'C');
$pdf->Ln(5);

$pdf->SetFont('times','B',10);
$pdf->Cell(130,5,'From: Mr. /Mrs :- ' .$name. ' ',0,0);*/

$pdf->Ln(3);
$pdf->SetFont('times','B',10);
$pdf->Cell(259,2,'The problem/issues reported has been solved by',0,1,'C');
$pdf->Ln(10);

$pdf->SetFillColor(224,235,255);
$pdf->Cell(20,5,'No',1,0,'C',0);
$pdf->Cell(50,5,'Details of Issues',1,0,'C',1);
$pdf->SetFont('times','',10);

/**$selectSolver = "SELECT 'solve_name;, 'solve_name2', 'date' FROM cases WHERE solve_name = '$name' AND 'date' = '$date'";

$querySolver = mysqli_query($conn, $selectSolver);

$i = 1; //no of page start
$max = 6; //when s1 no == 6 go to the next page

while ($solver = mysqli_fetch_array($querySolver))
{
    
}
**/
// Close and output PDF document
$pdf->Output('Generated Report.pdf', 'I');

?>