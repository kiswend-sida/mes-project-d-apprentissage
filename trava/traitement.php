<?php
include 'connexion.php';
extract($_POST);
$image = false;
if(isset($_FILES['photo']['tmp_name']) && is_uploaded_file($_FILES["photo"]["tmp_name"])){
$imagePath = $_FILES["photo"]["tmp_name"];
$image = file_get_contents($imagePath);
        if ($image === false){
            echo "Error reading image file.";
        }

}else{
    echo "No file uploader or file upload failed.";
}
file_put_contents('images/'.$_FILES["photo"]["name"],$image);
$query = "INSERT INTO client (nom,prenom,pseudo,email,motdepasse,tel,photo)
VALUES (?,?,?,?,?,?,?)";
$stmt = $connexion->prepare($query);
$stmt->bind_param("sssssss" ,$nom, $prenom, $pseudo, $email,$motdepasse,$tel,$image);
if($stmt->execute()){
    header('Location:liste.php');
}else{
    echo "Erreur lors de l'insertion :" .$stmt->error;
}
$stmt->close();
$connexion->close();
header('Location:liste.php')
?>