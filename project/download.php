<?php  
include_once 'db.php';
require('fpdf/fpdf.php');

class PDF extends FPDF {  
  // Page header
  function Header() {

      // Add logo to page
      //$this->Image('gfg1.png',10,8,33);
        
      // Set font family to Arial bold 

      $this->SetFont('Arial','B',10);  
      // Header
      $this->Cell(0,0,'Future Cinemas',0,0,'C');
      $this->Ln(0.1);
      $this->SetFont('Arial','',5); 
      $this->Cell(0,0.2,'XYZ,Nepal',0,0,'C');
      $this->Ln(0.1);
      $this->Cell(0,0.2,'futurecinemas@gmail.com',0,0,'C');
      $this->Ln(0.1);
      $this->Cell(0,0.2,'+9771234567890',0,0,'C');
      $this->Ln(0.1);
      $this->SetFont('Arial','B',8); 
      $this->Cell(0,0.4,'Entrance Pass',0,0,'C');
      $this->Ln(0.5);
        
  }

  // Page footer
  function Footer() {
        
      // Position at 1.5 cm from bottom
      $this->SetY(-1);
        
      // Arial italic 8
      $this->SetFont('Arial','I',5);
        
      
      $this->Cell(0,0,'Enjoy your movie experience at Future Cinemas.',0,0,'C');
  }
}

// Instantiation of FPDF class
$pdf = new PDF('p','in', [4.1,2.9]);

// Define alias for number of pages
$pdf->AliasNbPages();
$pdf->AddPage();
$showOrderId=$_GET['ids'];
$showtime=$conn->query("select * from showorder where showOrderId='$showOrderId';");
$show=$showtime->fetch_object();
$theater = $show->theater;
$movieName=$show->movieName;
$date=$show->date;
$time=$show->timeslot;
$res=$conn->query("select * from hall where showOrderId='$showOrderId'");
          while ($row=$res->fetch_object()) {
            $pdf->SetFont('Times','B',7);
            $pdf->Cell(0, 0.2, 'Seat Info', 0, 0.01,'R');
            $pdf->Cell(0, 0.1, $row->seat, 0, 0.01,'R');
            $pdf->SetFont('Times','',7);
           $pdf->Cell(0, 0.2,'theater :' .$theater,0,0.01,'L');
            $pdf->Cell(0, 0.2, 'moviename :'.$movieName, 0, 0.01,'L');
          $pdf->Cell(0, 0.2, 'Date  time :'.$date.' '.$time, 0, 0.01,'L');

  $pdf->Ln(2);
          }
$pdf->Output();
