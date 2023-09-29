<?php
session_start();
include 'connexion.php';
extract($_POST);
$req=mysqli_query($con,"INSERT INTO user (nom,prenom,datedenaissance,tel,genre,email,pseudo,motpasse)
VALUES('$nom','$prenom' ,'$naissance','$numero' ,'$genre','$email','$pseudo' ,'$motpasse')");
 header('Location:index.php');
?>