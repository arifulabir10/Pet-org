<?php
  $cate = $_GET["category"];
  $ask = $_GET["ask_question"];
  $pho = $_GET["image"];
  
  require_once('db_connect.php');
  $connect = mysqli_connect(HOST,USER,PASS,DB)
       or die("Can not connect");

  mysqli_query($connect, "INSERT INTO `medicalquestion` (`ask_id`,`category`, `ask_a_vet`, `photo`) VALUES (NULL, '$cate', '$ask', ' $pho')")
    or die("Successfully sumbited. Wait for Doctor's respond");
  echo"category=$cate<br> ask_a_vet=$ask<br> photo=$pho";
  echo"<p>Waitting for Doctor's respond</p>";
  echo"<a href= 'newindex.html'> Medic Care </a>";
?>