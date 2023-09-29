<?php
$server="localhost";
$user="root";
$password="";
$dataBase="liste";

$connexion=mysqli_connect($server,$user,$password,$dataBase);
if(mysqli_connect_errno()){
    echo "probleme de connexion a mysql" .mysqli_connect_errno();
}else{
    echo "connexion a la base de donnee reussi";

    
}

?>
