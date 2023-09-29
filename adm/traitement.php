<?php
 include 'header.php';

include 'connexion.php';
extract($_POST);
$req=mysqli_query($con,"INSERT INTO eleve (prenom,email)
VALUES('$prenom' ,'$email')");



?>
