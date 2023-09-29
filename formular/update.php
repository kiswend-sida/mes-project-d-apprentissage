<?php 
include 'connexion.php';
$id= $_GET['id'];
$req=mysqli_query($con,"SELECT* FROM  user WHERE iduser='$id'");
$req=mysqli_fetch_assoc($req);
if(isset($_POST['button'])){
    $rep=extract($_POST);
    if(isset($rep)){
        $id2= $id;
        echo $id;
        $reponse=mysqli_query($con,"UPDATE user
        SET nom='$nom',prenom='$prenom',datedenaissance='$naissance' where iduser='$id'");
        if(!$reponse){
            $message= 'modification nonn effecter';
        }else{
            $message= 'Modifié';
            header('location:liste.php');
        }
    }
}

?>
<form action='#' method="post">
            <label for="nom">Nom:</label>
            <input type="text"  name="nom" id="">
            <label for="prenom">Prénom(s):</label>
            <input type="text"  name="prenom" id="">

            <label for="dateNaissance">Date de naissance:</label>
            <input type="date" name="naissance" id="">

            <label for="genre">genre:</label>
            <select id="genre" name="genre" id="">
                <option value=""></option>
                <option value="F">FEMME</option>
                <option value="H">HOMME</option>
                
            </select>
            <label for="pseudo">pseudo:</label>
            <input type="text"  name="pseudo" id="">
            <label for="password">mot de passe:</label>
            <input type="password"  name="motpasse" id="">
          
            <label for="email">Email:</label>
            <input type="email" name="email" id="">

            <label for="telephone">Téléphone:</label>
            <input type="tel"  name="numero" id>
            <input type="submit" value="Modifier" name="button">
        </form>


