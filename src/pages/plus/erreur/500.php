<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width" />
    <?php require "../../includes/favicon.php";?>
    <title>Erreur 500</title>
    <link rel="stylesheet" href="../../assets/css/AdminLTE.min.css">
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link href="../../assets/css/ng.css" rel="stylesheet" type="text/css" >

</head>
<body class="chatboxx">
    <?php require '../../includes/menu.php'; ?>
        <section class="content-header jumbotron">
            <h1>Erreur 500</h1>
        </section>

        <section class="content">
            <div class="error-page">
                <h1 class="headline text-red"><span class="glyphicon glyphicon-exclamation-sign"></span></h1>
                <div class="error-content">
                    <h3>Ooups! une erreur s'est produite lors du traitement</h3>
                    <p>
                      Il peut s'agir d'une erreur interne du serveur, si cela se reproduit veuillez nous le signaler <a href="\plus\problemes.php">ici</a> ou vous pouvez revenir à <a href="/index.php">l'accueil</a>
                    </p>
                </div>
            </div>
        </section>

    <!--importation des script -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
        window.jQuery || document.write('<script src="/assets/js/js+/jquery.min.js"><\/script>')
        </script>
        <script src="/assets/js/bootstrap.min.js"></script>
    <!-- /importation des script -->

</body>
</html>
