<?php
session_start();
if(!isset($_SESSION["connexion"]) || $_SESSION["connexion"]!==true){
    header('Location:index.php');
}

$prenom=$_SESSION['prenom'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Bienvenue <?php echo $prenom; ?> </h1>
    <p>Au B-SCHOOL</p>
    <a href="deconnexion.php">Deconnexion</a>
</body>
</html>






