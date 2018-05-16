<?php
session_start();
require "../src/helper/functions.php";
$db = base_connexion("ngbdd");

if(isset($_SESSION['id']) and !empty($_SESSION['id'])){

	if(isset($_GET['id']) and !empty($_GET['id']))
	{
		$getID=htmlspecialchars($_GET['id']);
		$news=$db->prepare("SELECT * FROM article WHERE id=?");
		$news->execute(array($getID));

		if($news->rowcount() ==1)
		{
			$news = $news->fetch();
			$titre= $news['titre'];
			$contenu= $news['contenu'];
			$articleID= $news['id'];
			$posterID = $news['posterID'];
			$date= $news['date_pub'];

			if(isset($_POST['cmtSubmit']))
			{
				if(isset($_POST['commentaire']) and !empty($_POST['commentaire']))
				{
					$commentaire=htmlspecialchars($_POST['commentaire']);
					$ID=htmlspecialchars($getID);
					$userID= htmlspecialchars($_SESSION['id']);

					$insert= $db->prepare("insert into commentaire (commentaire,articleID,userID,date_pub) values (?,?,?,now()) ");
					$insert->execute(array($commentaire,$ID,$userID));

					$msg="votre commentaire à bien été posté";
					$type="alert-success";

				}
				else{

					$msg="complétez le champ";
					$type= "alert-danger";}

			}//else{ rien a faire ;}

		}else{ header("location:pages/plus/erreur/404.php"); }

	}else{ header("location:pages/plus/erreur/500.php"); }

}else{

    $_SESSION['msg'] = "vous devez vous connecter !";
    $_SESSION['type'] = "alert-danger";
    header("location:pages/membres/login.php"); }
?>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" style="margin: 0;padding: 0;">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width" />
    <?php include "../includes/favicon.php";?>
    <?php include '../includes/all-meta.php'; ?>

	<title><?= $titre ?></title>

	<link rel="stylesheet" href="/assets/css/AdminLTE.min.css">
	<link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" >
	<link href="/assets/css/ng.css" rel="stylesheet" type="text/css" >

</head>
<body>
<?php include "../includespages/article/menu.php";?>
<?php include "../includes/flash.php";?>
<section class="ng-bloc-principal container">


<!-- article -->
<div class="ng-article">
	<div class="row" >
		<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
		    <div class="media">
		        <div class="media-body">
		        <legend><small><a href="pages/membres/profil.php?id=<?= $posterID ?>">Par <?= getUserPseudo($posterID) ?></a></small></legend>
		            <h1><small><?= $titre ?></small></h1>
		            <p class="text-left"><?= text($contenu);?></p>
		        </div>
		     </div>
		</div>

		<div class="ng-article-img">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<div class="row">
					<div class="card--date">
						<div class="card--date--day"><?= getDay($date) ?></div>
						<div class="card--date--month"><?= getMonth($date) ?></div>
					</div>

					<img src="pages/article/miniature/640-640/<?= getPostThumb($articleID)?>" />

				</div>
			</div>
		</div>
	</div>
</div>
<!-- pages/article -->
<!-- commentaire system-->
	<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
		<div class="row">
			<div class=" ng-panel panel panel-primary ng-panel-active ">
		        <div class="ng-panel panel-heading ng-margin-default" role="tab" >
		            <span class="glyphicon glyphicon-chevron-right"></span> MON AVIS
		        </div>

		        <ul class="list-group ng-margin-default">
		            <li class="list-group-item  ">
						<a class="btn btn-primary btn-xs ng-btn" href="/src/script/like.php?t=1&id=<?= $getID ?>" role="button"><span class="glyphicon glyphicon-thumbs-up"></span></a> <?= check_like_statut($articleID,$_SESSION['id']) ?>
						<span class="ng-badge badge"><?= KMF(getArticleInfo($articleID,"like")) ?></span>
					</li>
					<li class="list-group-item ">
						<a class="btn btn-primary btn-xs ng-btn" href="/src/script/like.php?t=2&id=<?= $getID ?>" role="button"><span class="glyphicon glyphicon-thumbs-down"></span></a> <?= check_dislike_statut($articleID,$_SESSION['id']) ?>
						<span class="ng-badge badge"><?= KMF(getArticleInfo($articleID,"dislike")) ?></span>
					</li>
					<li class="list-group-item ">
						 <a class="btn btn-primary btn-xs ng-btn" href="/src/script/like.php?t=3&id=<?= $getID ?>" role="button"><span class="glyphicon glyphicon-heart"></span></a> <?= check_love_statut($articleID,$_SESSION['id']) ?> <span class="ng-badge badge"><?= KMF(getArticleInfo($articleID,"love")) ?></span>
					</li>
				</ul>

					<div class="box box-primary ng-margin-default">
		            <div class="box-body">
			            <form method="post" action="">
							<textarea class="textarea-default" rows="3" name="commentaire" placeholder="Votre commentaire"></textarea>

							<div class="box-footer clearfix">
								<span class="pull-right">
									<button type="submit" class="btn btn-primary btn-sm ng-btn-border" name="cmtSubmit" >Commenter
									</button>

									<button type="reset" class="btn btn-default btn-sm ng-btn-border" name="cmtSubmit" >Annuler
									</button>
								</span>
							</div>
						</form>
					</div>
					</div>
		      </div>
		</div>
	</div>
<!-- / fin comment et like systeme -->

<!-- affichage des 3 dernier commentaire -->
<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
	<div class="row">
		<div class="ng-panel panel panel-primary">
			<div class="ng-panel panel-heading ng-margin-default" role="tab" >
		            <span class="glyphicon glyphicon-chevron-right"></span>  COMMENTAIRE<?= $t = (getArticleInfo($articleID,"commentaire") > 1)? "S" : "" ?>
		            <span class="ng-badge badge"><?= KMF(getArticleInfo($articleID,"commentaire"))?></span>
		    	</div>
		<?php

			$commentaire= $db->prepare("SELECT * from commentaire where articleID=? order by date_pub desc limit 0,4");
			$commentaire->execute(array($articleID));
			$Nc = $commentaire->rowcount(); ?>


<?php if($Nc >= 1){

	while($c = $commentaire->fetch()){ ?>

		<ul class="list-group">

			<li class="list-group-item ng-border">
				<div class="media">
				 	<div class="media-left media-top">
				    		<a href="pages/membres/profil.php?id=<?= $c['userID']?>">
				      		<img class="media-object img img-circle" src="pages/membres/Avatar/40-40/<?= getUserProfil($c['userID'])?>" width="40" height="40">
				    		</a>
				  	</div>
				  	<div class="media-body">


					    <a href="pages/membres/profil.php?id=<?= $c['userID']?>">

					    <h5 class="media-heading"><?= getUserPseudo($c['userID'])?></h5></a>

					    <h6><?= nl2br(user_mention_verif($c ['commentaire'])) ?></h6>

					    <span class="pull-right">
					    <time><span class="glyphicon glyphicon-time"></span> <?= getRelativeTime($c['date_pub'])?></time></span>

				  	</div>
				</div>
			</li>
		<?php }?>
		<?php if(getArticleInfo($articleID,"commentaire") > 4){?>
			<li class="list-group-item ng-margin-default">
			<a href="pages/article/comment.php?id=<?= $_GET['id']?>"><center>Voir plus</center></a>
			</li>
		</ul>
		<?php }
}
else{?>

<ul class="list-group">
	<li class="list-group-item ng-border">
		<div class="media">
			<div class="media-left media-top">
				<img class="media-object img img-circle" src="pages/article/miniature/90-90/rien.jpg" width="40" height="40">
			</div>
			<div class="media-body">

				<h5 class="media-heading">aucun commentaire</h5>
				<h6>Soyez la première personne à reagir...</h6>
				<time><h6><span class="pull-right"><?= getTodayDate()?></span></h6></time>

			</div>
		</div>
	</li>
</ul>

<?php } ?>


		</div>
	</div>
</div>
<!-- / commentaire -->

<div class="ng-espace-fantom"></div>
</section>


<?php include '../includes/footer.php'; ?>

<!-- script -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
	window.jQuery || document.write('<script src="/assets/js/js+/jquery.min.js"><\/script>')
	</script>
	<script src="/assets/js/bootstrap.min.js"></script>
	<script src="/assets/js/ng-alert-V2.js"></script>
<!-- / script -->

</body>
</html>
