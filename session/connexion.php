<?php
$server="localhost";
$utilisateur="root";
$motdepasse="";
$database="formulaire";
$con = mysqli_connect($server,$utilisateur,$motdepasse,$database);
if (!$con)
{
    echo 'connexion echouée';
}
?>