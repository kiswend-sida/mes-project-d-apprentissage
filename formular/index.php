<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire d'informations</title>
    <link rel="stylesheet" href="./index.css">
    <link rel="stylesheet" href="candi.css">
</head>
<body>
 <?php include  'connexion.php'; ?>
    <h>Formulaire d'informations</h>
    <div class="container1">
        <h1>Formulaire d'informations</h1>
        <form action='traitement.php' method="POST">
            <label for="nom">Nom:</label>
            <input type="text" id="nom" name="nom" required>
            <label for="prenom">Prénom(s):</label>
            <input type="text" id="prenom" name="prenom" required>

            <label for="dateNaissance">Date de naissance:</label>
            <input type="date" id="dateNaissance" name="naissance" required>

            <label for="genre">genre:</label>
            <select id="genre" name="genre" required>
                <option value=""></option>
                <option value="F">FEMME</option>
                <option value="H">HOMME</option>
                
            </select>
            <label for="pseudo">pseudo:</label>
            <input type="text" id="pseudo" name="pseudo" required>
            <label for="password">mot de passe:</label>
            <input type="password" id="password" name="motpasse" required>
          
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="telephone">Téléphone:</label>
            <input type="tel" id="telephone" name="numero" required>
            <input type="submit" value="Envoyer">
        </form>
    </div>
    <!-- footer section -->
  <!-- footer section -->
</body>
</html>
