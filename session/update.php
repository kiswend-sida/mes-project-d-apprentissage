<?php 
include 'connexion.php';
$id= $_GET['id'];
$req=mysqli_query($connexion, "SELECT* FROM client WHERE idclient=$id");
$row=mysqli_fetch_assoc($req);
if(isset($_POST['button'])){
    $verif=extract($_POST);
    if(isset($verif)){
        $id2=$id;
        $rep=mysqli_query($connexion,"UPDATE client  
        SET nom='$nom',prenom='$prenom',pseudo='$pseudo',
        email='$email',motdepasse='$motdepasse',tel='$tel'
       WHERE iduser=$id2");
       if($rep){
        header('location:liste.php');

       }else{
        $message='utilisateur non Modifié';
       }
    }else{
        $message='veuillez remplir les données';
    }
}
?>
<div>
    <h2>Modifier l'utilisateur : <?=$row['nom']?> </h2>
    <p>
        <?php
        if(isset($message)){
            echo $message;
        }
        ?>
    </p>
    <form action="" method="POST">
<label>Nom</label>
<input type="text" name="nom" value="<?=$row['nom']?>">
<label>prenom</label>
<input type="text" name="prenom" value="<?=$row['prenom']?>">
<label>pseudo</label>
<input type="text" name="pseudo" value="<?=$row['pseudo']?>">
<label>email</label>
<input type="email" name="email" value="<?=$row['email']?>">
<label>mot de passe</label>
<input type="password" name="motdepasse" value="<?=$row['motdepasse']?>">
<label>telephone</label>
<input type="tel" name="tel" value="<?=$row['tel']?>">
<input type="submit" value="Modifier" name="button">
    </form>
</div>