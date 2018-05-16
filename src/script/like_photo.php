<?php
session_start();
require "..helper/functions.php";
$db = base_connexion("ngbdd");


if(isset($_GET['t'], $_GET['id']) and !empty($_GET['t']) and !empty($_GET['id'])) {
    $getID= (int) $_GET['id'];
    $getT= (int) $_GET['t'];
    $userID = $_SESSION['id'];
    $verif= $db->prepare("select id from galerie where id=? ");
    $verif->execute(array($getID));
    if($verif->rowcount() == 1) {
        if($_GET['t'] == 1) {
            $likeVERIF = $db ->prepare("select id from likes where photoID=? and userID=? ");
            $likeVERIF->execute(array($getID,$userID));

            $DEL = $db ->prepare("delete from dislikes where photoID=? and userID=? ");
            $DEL->execute(array($getID,$userID));

            $loveDEL = $db ->prepare("delete from love where photoID=? and userID=? ");
            $loveDEL->execute(array($getID,$userID));

            if($likeVERIF->rowcount()==1) {
                $likeDEL = $db ->prepare("delete from likes where photoID=? and userID=? ");
                $likeDEL->execute(array($getID,$userID));
            }
            else
            {
                $insert=$db->prepare("insert into likes (photoID,userID) values (?,?)");
                $insert->execute(array($getID,$userID));
            }
            header('location:'.$_SERVER['HTTP_REFERER']);


        }
        elseif($_GET['t'] == 2) {

            $dislikess = $db ->prepare("select id from dislikes where photoID=? and userID=? ");
            $dislikess->execute(array($getID,$userID));

            $likeDEL = $db ->prepare("delete from likes where photoID=? and userID=? ");
            $likeDEL->execute(array($getID,$userID));

            $loveDEL = $db ->prepare("delete from love where photoID=? and userID=? ");
            $loveDEL->execute(array($getID,$userID));

            if($dislikess->rowcount()==1) {
                $DEL = $db ->prepare("delete from dislikes where photoID=? and userID=? ");
                $DEL->execute(array($getID,$userID));
            }
            else
            {
                $insert=$db->prepare("insert into dislikes (photoID,userID) values (?,?)");
                $insert->execute(array($getID,$userID));
            }
            header('location:'.$_SERVER['HTTP_REFERER']);


        }
        elseif($_GET['t'] == 3) {

            $love = $db ->prepare("select id from love where photoID=? and userID=? ");
            $love->execute(array($getID,$userID));

            $likeDEL = $db ->prepare("delete from likes where photoID=? and userID=? ");
            $likeDEL->execute(array($getID,$userID));

            $dislikeDEL = $db ->prepare("delete from dislikes where photoID=? and userID=? ");
            $dislikeDEL->execute(array($getID,$userID));

            if($love->rowcount()==1) {
                $loveDEL = $db ->prepare("delete from love where photoID=? and userID=? ");
                $loveDEL->execute(array($getID,$userID));
            }
            else
            {
                $insert=$db->prepare("insert into love (photoID,userID) values (?,?)");
                $insert->execute(array($getID,$userID));
            }
            header('location:'.$_SERVER['HTTP_REFERER']);

        }
        else{  header('location:pages/plus/erreur/500.php');
        }
    }
    else{  header('location:pages/plus/erreur/500.php');
    }


}
else{  header('location:pages/plus/erreur/500.php');
}



?>
