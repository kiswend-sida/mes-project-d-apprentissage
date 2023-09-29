<?php 
include 'connexion.php';
$id= $_GET['id'];
$req=mysqli_query($con, "SELECT* FROM user WHERE iduser=$id");
$row=mysqli_fetch_assoc($req);
if(isset($_POST['button'])){
    $verif=extract($_POST);
    if(isset($verif)){
        $id2=$id;
        $rep=mysqli_query($con,"UPDATE user  
        SET nom='$nom',prenom='$prenom',datedenaissance='$naissance',tel='$tel',
        genre='$genre', email='$email',pseudo='$pseudo',motpasse='$motpasse'
       WHERE iduser=$id2");
       if($rep){
        header('location:index.php');

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
<label>Date de naissance</label>
<input type="date" name="naissance" value="<?=$row['datedenaissance']?>">
<label>genre</label>
<input type="text" name="genre" value="<?=$row['genre']?>">
<label>pseudo</label>
<input type="text" name="pseudo" value="<?=$row['pseudo']?>">
<label>mot de passe</label>
<input type="password" name="motpasse" value="<?=$row['motpasse']?>">
<label>email</label>
<input type="email" name="email" value="<?=$row['email']?>">
<label>telephone</label>
<input type="tel" name="tel" value="<?=$row['tel']?>">
<input type="submit" value="Modifier" name="button">
    </form>
</div>