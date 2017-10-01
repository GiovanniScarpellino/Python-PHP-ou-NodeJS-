<?php


if (isset($_GET["idBouee"]) && isset($_GET["latitude"]) && isset($_GET["longitude"]) && isset($_GET["temperatureEau"])
    && isset($_GET["temperatureAir"])
    && isset($_GET["salinite"])
    && isset($_GET["vitesseVent"])
    && isset($_GET["dimension"])
    && isset($_GET["pressionAtmospherique"])){
    //Debut
    $bdd = mysqli_connect("localhost", "root", "");

    $idBouee = $_GET["idBouee"];
    $latitude = $_GET["latitude"];
    $longitude = $_GET["longitude"];
    $temperatureEau = $_GET["temperatureEau"];
    $temperatureAir = $_GET["temperatureAir"];
    $salinite = $_GET["salinite"];
    $vitesseVent = $_GET["vitesseVent"];
    $dimension = $_GET["dimension"];
    $pressionAtmospherique = $_GET["pressionAtmospherique"];

    $sql = "UPDATE `bouee` SET
            `latitude`='$latitude',
            `longitude`='$longitude',
            `temperatureEau`='$temperatureEau',
            `temperatureAir`='$temperatureAir',
            `salinite`='$salinite',
            `vitesseVent`='$vitesseVent',
            `dimension`='$dimension',
            `pressionAtmospherique`='$pressionAtmospherique'
             WHERE `idBouee`='$idBouee'";
    $result = $bdd->exec($sql);
}

?>