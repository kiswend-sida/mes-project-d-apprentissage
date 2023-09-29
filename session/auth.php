<?php
include 'connexion.php';
if(isset($_POST['pseudo']) AND isset($_POST['motpasse']))
{
    $peudo=$_POST['pseudo'];
    $motpasse=$_POST['motpasse'];
    extract($_POST);
    $requette=mysqli_query($con,"SELECT * FROM user WHERE pseudo='$pseudo' AND motpasse='$motpasse'");
    $user=mysqli_fetch_assoc($requette);
    
    if(mysqli_num_rows($requette)>0){
    session_start();
    $_SESSION['connexion'] = true;
    $_SESSION['id'] = $user['iduser'];
    header("location:accueil.php");

    }else{
        header("location:index.php");
    }
}
?>