
<?php
include 'connexion.php';
if(isset($_POST['prenom']) AND isset($_POST['email']))
{
    $prenom=$_POST['prenom'];
    $email=$_POST['email'];
    extract($_POST);
    $requette=mysqli_query($con,"SELECT * FROM eleve WHERE prenom='$prenom' AND email='$email'");
    $user=mysqli_fetch_assoc($requette);
    
    if(mysqli_num_rows($requette)>0){
    session_start();
    $_SESSION['connexion'] = true;
    $_SESSION['prenom'] = $prenom;
    header("location:accueil.php");

    }else{
        header("location:pagelogin.php");
    }
}
?>

