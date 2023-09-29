<?php
 include 'connexion.php';
session_start();
if(!isset($_SESSION["connexion"]) || $_SESSION["connexion"]!==true){
    header('Location:index.php');
}

$user=$_SESSION['id'];
$select=mysqli_query($con,"SELECT * FROM user WHERE iduser=$user");
$recuper=mysqli_fetch_assoc($select);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Bienvenue <?php echo $recuper["prenom"]; ?> </h1>
    <p>Sur votre page d'acceuil</p>
    <a href="page.php">Visiter la page suivante</a> <br>
    <a href="deconnexion.php">Deconnexion</a>
</body>
</html>






