<?php 
include("connection.php"); 
$stmt = $conn->prepare("select `case`.*, `camgiac`.`RoiLoan` AS RoiLoanCG, `camgiac`.`CamGiacNong`, `camgiac`.`CamGiacSau`, `camgiac`.ViTri AS CamGiacBT, `camgiac`.`CamGiacDau` 
                        from `case`, `camgiac` where `case`.CG = `camgiac`.ID; ");
$stmt->execute();
$result = $stmt->fetchAll();

$OutputDiagnosis = 0;
$OutputSimilarityVal = 0;
echo "Case: <br>";

foreach($result as $row){
  foreach($row as $key => $val) {
    if(gettype($key) == "string"){
      echo "$key : $val, ";
    }
  }
  echo "<br>";
}

?>