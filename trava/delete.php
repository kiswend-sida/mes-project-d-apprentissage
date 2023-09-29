<?php 
include 'connexion.php';
$id= $_GET['id'];
$req=mysqli_query($connexion,"DELETE FROM client WHERE idclient=$id");


header("location:liste.php");
 ?>