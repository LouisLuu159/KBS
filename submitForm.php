<?php 

   $TrongSo = array('GanXuong' => 5, 'CoLuc' => 6, 'TruongLucCo' => 6, 'PhanXaThap' => 4, 'TeoCo' => 3, 
                     'TuDongTuy' => 3, 'RoiLoanCT' => 4, 'CamGiac' => 4, 'Mat' => 3, 'DauDau' => 5, 'Sot' => 3);
   $TongTrongSo = 0;
   foreach($TrongSo as $key => $val) {
     $TongTrongSo += $val;
      // echo "Trong so - $key : $val<br>";
    }

    echo "Tong Trong So: $TongTrongSo" . "<br>";
  if(isset($_POST)){
    $GanXuong = $_POST['GanXuong'];
    $GanXuongBT = $_POST['ViTriBatThuongGX'];
    $CoLuc = $_POST['CoLuc'];
    $TruongLucCo = $_POST['TruongLucCo'];
    $TeoCo = $_POST['TeoCo'];
    $TuDongTuy = $_POST['TuDongTuy'];
    $Barbinski = $_POST['Barbinski'];
    $Hoffmann = $_POST['Hoffmann'];
    $RoiLoanCT = $_POST['RoiLoanCoTron'];
    $RoiLoanCG = $_POST['RoiLoanCamGiac'];
    $CamGiacNong = $_POST['CamGiacNong'];
    $CamGiacSau = $_POST['CamGiacSau'];
    $CamGiacDau = $_POST['CamGiacDau'];
    $CamGiacBT = $_POST['ViTriBatThuongCG'];
    $Daudau = $_POST['DauDau'];
    $Sot = $_POST['Sot'];
    $Mat = $_POST['Mat'];

    foreach($_POST as $key => $val) {
      echo "$key : $val<br>";
    }

    include("connection.php"); 
    $stmt = $conn->prepare("select `case`.*, `camgiac`.`RoiLoan` AS RoiLoanCG, `camgiac`.`CamGiacNong`, `camgiac`.`CamGiacSau`, `camgiac`.ViTri AS CamGiacBT, `camgiac`.`CamGiacDau` 
                           from `case`
                           LEFT JOIN `camgiac` ON `case`.CG = `camgiac`.ID; ");
    $stmt->execute();
    $result = $stmt->fetchAll();

    $output = array("FinalSimilarityVal" => 0, "Benh" => "");
    echo $stmt->rowCount() . " Cases: <br>";
    foreach($result as $row){
      echo "ID: " . $row['ID'] .", Benh: " .$row['Benh']. "<br>";
      echo "+ Expresssion : (" ;

      $SimilarityVal = 0;
      
      $d_GanXuong = 0;
      if($GanXuong == $row['GanXuong']){
        if($GanXuongBT == $row['GX_BT']) $d_GanXuong = 1;
        else $d_GanXuong = 0.9;
      }
      $SimilarityVal += $d_GanXuong * $TrongSo['GanXuong'] / $TongTrongSo;
      echo $d_GanXuong . "*" . $TrongSo['GanXuong'] . " + ";

      $d_CoLuc = 0;
      if($CoLuc == $row['CoLuc']) $d_CoLuc = 1;
      $SimilarityVal += $d_CoLuc * $TrongSo['CoLuc'] / $TongTrongSo;
      echo $d_CoLuc . "*" . $TrongSo['CoLuc']  . " + ";
        
      $d_TruongLucCo = 0;
      if($TruongLucCo == $row['TLC']) $d_TruongLucCo = 1;
      $SimilarityVal += $d_TruongLucCo * $TrongSo['TruongLucCo'] / $TongTrongSo;
      echo $d_TruongLucCo . "*" . $TrongSo['TruongLucCo']  . " + ";
        

      $d_Thap = 1;
      if($Barbinski != $row['Barbinski']) $d_Thap -= 0.5;
      if($Hoffmann != $row['HoffMan'])  $d_Thap -= 0.5;
      $SimilarityVal += round($d_Thap, 2) * $TrongSo['PhanXaThap'] / $TongTrongSo;  
      echo round($d_Thap, 2) . "*" . $TrongSo['PhanXaThap']  . " + ";

      $d_TeoCo = 0;
      if($TeoCo == $row['TeoCo']) $d_TeoCo = 1;
      $SimilarityVal += $d_TeoCo * $TrongSo['TeoCo'] / $TongTrongSo;
      echo $d_TeoCo . "*" . $TrongSo['TeoCo']  . " + ";
      
      $d_TuDongTuy = 0;
      if($TuDongTuy == $row['PXTDT']) $d_TuDongTuy = 1;
      $SimilarityVal += $d_TuDongTuy * $TrongSo['TuDongTuy'] / $TongTrongSo; 
      echo $d_TuDongTuy . "*" . $TrongSo['TuDongTuy'] . " + ";

      $d_RoiLoanCT = 0;
      if($RoiLoanCT == $row['RLCT']) $RoiLoanCT = 1;
      $SimilarityVal +=  $d_RoiLoanCT * $TrongSo['RoiLoanCT'] / $TongTrongSo; 
      echo $d_RoiLoanCT . "*" . $TrongSo['RoiLoanCT'] . " + ";
       
      $d_CamGiac = 1;
      if($RoiLoanCG != $row['RoiLoanCG']) $d_CamGiac -= 0.2;
      if($CamGiacNong != $row['CamGiacNong']) $d_CamGiac -= 0.2;
      if($CamGiacSau != $row['CamGiacSau']) $d_CamGiac -= 0.2;
      if($CamGiacBT != $row['CamGiacBT']) $d_CamGiac -= 0.2;
      if($CamGiacDau != $row['CamGiacDau']) $d_CamGiac -= 0.2;
      $SimilarityVal += round($d_CamGiac,2) * $TrongSo['CamGiac'] / $TongTrongSo; 
      echo round($d_CamGiac,2) . "*" . $TrongSo['CamGiac'] . " + ";

      $d_Daudau = 0;
      if($Daudau == $row['DD']) $d_Daudau = 1;
      $SimilarityVal += $d_Daudau * $TrongSo['DauDau'] / $TongTrongSo; 
      echo $d_Daudau . "*" . $TrongSo['DauDau'] . " + ";
      
      $d_Sot = 0;
      if($Sot == $row['Sot']) $d_Sot = 0;
      $SimilarityVal += $d_Sot * $TrongSo['Sot'] / $TongTrongSo; 
      echo $d_Sot . "*" . $TrongSo['Sot'] . " + ";
      
      $d_Mat = 0;
      if($Mat == $row['Mat']) $d_Mat = 1;
      $SimilarityVal += $d_Mat * $TrongSo['Mat'] / $TongTrongSo; 
      echo $d_Mat . "*" . $TrongSo['Mat'] ;
      
      echo ") / " . $TongTrongSo;  
      if($SimilarityVal > $output['FinalSimilarityVal']){
        $output['FinalSimilarityVal'] = $SimilarityVal;
        $output['Benh'] = $row['Benh'];
      }

      echo " => Similarity Value : $SimilarityVal <br><br>";
    }
    echo " <strong> Diagnosis: " . $output['Benh'] . "(Similarity Value: " . $output['FinalSimilarityVal'] . ") </strong>"; 
  }
  
 ?>