<?php
$server="localhost";
$utilisateur="root";
$motdepasse="";
$database="exercice";
$con = mysqli_connect($server,$utilisateur,$motdepasse,$database);
if (!$con){
    echo 'inscription echoué';
}
else{
    echo 'inscription reussi';
}?>
<?php



// Affichez un bouton pour rediriger l'utilisateur
echo '<a href="pagelogin.php"><button>se connecter</button></a>';
?>