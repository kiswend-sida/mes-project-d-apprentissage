<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="for.css">
    <title>se connecter</title>
</head>
<body>
    <?php  include 'header.php'?>
<form class="my-form" action="login.php" method="post">
        <label for="prenom">Prénom :</label>
        <input type="text" id="prenom" name="prenom" required>

        <label for="email">E-mail :</label>
        <input type="email" id="email" name="email" required>

        <input type="submit" value="se connecter">
    </form>
</body>
</html>
