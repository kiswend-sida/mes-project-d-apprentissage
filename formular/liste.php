<body>
<table>
    
<tr>
<th>Nom</th>
<th>Prénom</th>
<th>Date de naissance</th>
<th>MDP</th>
<th>Genre</th>
<th>Pseudo</th>
<th>E-mail</th>
<th>Tel</th>
<th>Action</th>
</tr>
<?php 
include 'connexion.php';
$req=mysqli_query($con,"SELECT*FROM user");
if(mysqli_num_rows($req)== 0){
$message= 'il n y pas encore de donnée' ;
echo $message;
}else{
    $message='Liste des données';
    echo $message;
    while ($row=mysqli_fetch_assoc($req)){?>
    

    <tr>
        <td><?=$row['nom']?></td>
        <td><?=$row['prenom']?></td>
        <td><?=$row['datedenaissance']?></td>
        <td><?=$row['motpasse']?></td>
        <td><?=$row['genre']?></td>
        <td><?=$row['pseudo']?></td>
        <td><?=$row['email']?></td>
        <td><?=$row['tel']?></td>
        <td><a href='delete.php?id=<?=$row['iduser']?>'>Supprimer</a></td>
        <td><a href='nouveau.php?id=<?=$row['iduser']?>'>Modifier</a></td>
    </tr>
    <br>
</table>
<?php }
}
?>
</body>