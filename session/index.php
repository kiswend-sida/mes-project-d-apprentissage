<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    form{
        width: 50%;
        margin: auto;
    }
    h1{
        text-align: center;
    }
    a{
        margin-left: 45%;
    }
</style>
<body>
    <h1>connexion</h1>
    <form action="auth.php" method="POST">
    <label for="">Pseudo</label>
<input class="form-control form-control-lg" type="text" name="pseudo" aria-label=".form-control-lg example">
<label for="">Mot de passe</label>
<input class="form-control" type="password" name="motpasse"  aria-label="default input example">
<button class="btn btn-primary" type="submit">connexion</button>
</form>
<a href="inscription.php">Creer un compte</a>
</body>
</html>