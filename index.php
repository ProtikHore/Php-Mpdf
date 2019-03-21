<?php 


require_once("vendor/autoload.php");
$location = __DIR__ .'/download/'; // for save in specific location
//require_once __DIR__ . '/vendor/autoload.php'; 

//require_once __DIR__ . '/vendor/autoload.php';
include "db.php";
include "header.php";
include "body.php";
include "body2.php";
include "footer.php";
$default_value = 15;

$res = mysqli_query($con, "select * from sb_page_list limit 5");
if (!$res)
    die("query error : ".mysqli_error($con));
//$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A5-P']);
$mpdf= new \Mpdf\Mpdf(['mode' => 'utf-8','format' => 'A5','margin_left' => 0,'margin_right' => 0,'margin_top' => 0,'margin_bottom' =>0,'margin_header' => 0,'margin_footer' => 0, 'orientation' => 'P']);
$mpdf->SetDisplayMode('fullpage');
$mpdf->list_indent_first_level = 0; // 1 or 0 - whether to indent the first level of a list
// LOAD a stylesheet
$stylesheet = file_get_contents('mpdfstyletables.css');

$x = 45;
$y = 35;
$mpdf->SetWatermarkImage('aiub_logo.jpg', 0.2, 'D', array($x, $y));
$mpdf->showWatermarkImage = true;
//$mpdf->watermarkImageAlpha = 0.5;

$mpdf->WriteHTML($stylesheet,1); // The parameter 1 tells that this is css/style only and no body/html/text
//$mpdf->SetHTMLHeader();
//$mpdf->SetHeader($my_var);
//$mpdf->SetFooter('First section footer');


//$html = '<center><h4 align = "left">Name: ..............................</h4></center>';
$mpdf->WriteHTML($my_var);
$mpdf->WriteHTML($my_body);

$html = '

<center>
<table style = "margin-left:100px; border: 1px solid blue; border-collapse: collapse;">
<tr>
<th style = "border: 1px solid red;">SL No</th><th style = "border: 1px solid red;">Description</th><th style = "border: 1px solid red;">Amount</th>
</tr>
';

$i = 0;
while($row = mysqli_fetch_array($res)){
	$i++;
$html .= '<tr><td style = "color: #00CED1; font-size:8px; border-right: 1px solid red; text-align: center;">'.$row['page_id'].'</td><td style="  width:140px; font-size:8px; border-right: 1px solid red; text-align: left;">' . $row['name']. '</td><td style=" width:140px; font-size:8px; border-right: 1px solid red; text-align: right;">'. $row['url']. '</td>';
}

$final_val=$default_value-$i;
for($j=0;$j<$final_val;$j++)
{
	$html .= '<tr><td style = "color: #00CED1; font-size:8px; border-right: 1px solid red;">&nbsp;</td><td style="  width:140px; font-size:8px; border-right: 1px solid red;">&nbsp;</td><td style=" width:140px; font-size:8px; border-right: 1px solid red;">&nbsp;</td>';
}


$html .= '</tr><tr><td style = "font-size:8px; border: 1px solid red; text-align: center;"></td><td style = "font-size:8px; border: 1px solid red; text-align: left;">Total:</td><td style = "font-size:8px; border: 1px solid red; text-align: right;">$0</td></tr>
</table></center>
';

$mpdf->WriteHTML($html,2); 
$mpdf->WriteHTML($my_body2);
$mpdf->WriteHTML($my_footer);
$mpdf->Output('mpdf.pdf','I');
//$mpdf->Output($location . 'test.pdf', \Mpdf\Output\Destination::FILE); // save in specific location
exit;
?>