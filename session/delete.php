<?php 
include 'connexion.php';
$id= $_GET['id'];
$req=mysqli_query($con,"DELETE FROM client WHERE idclient=$id");




 ?>