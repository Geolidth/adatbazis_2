<!doctype html>
<html lang="hu">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gyümölcsök</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body class="bg-secondary text-white">
    <h1 class="text-center">Filmek</h1>
    <h2 class="text-center">Adat módosítás</h2>
    
    <?php
    $kapcsolat=mysqli_connect("127.0.0.1","root","")
        or die("Csatlakozási hiba!");
    mysqli_select_db($kapcsolat, "oscar"); 

    $id=$_REQUEST["azon"];
    $cim=$_REQUEST["cim"];
    $ev=$_REQUEST["ev"];
    $dij=$_REQUEST["dij"];
    $jelol=$_REQUEST["jelol"];

    $sql="select * from filmek where azon like '".$id."';";

    $adat=mysqli_query($kapcsolat, $sql);
    $film = mysqli_fetch_assoc($adat);
    //mysqli_close($kapcsolat);

   ?>
  
<div class="container">
  <form action="adatmodositas.php" method="get">

  <input value="<?php print($film['id']); ?>" type="hidden" class="form-control" id="id" name="id">    
  
  <div class="mb-3">
    <label for="nev" class="form-label">Film megnevezése: </label>
    <input value="<?php print($film['nev']); ?>" type="text" class="form-control" id="nev" name="nev">    
  </div>

  <div class="mb-3">
    <label for="ev" class="form-label">Készítés éve: </label>
    <input value="<?php print($film['ev']); ?>" type="text" class="form-control" id="ev" name="ev">    
  </div>
  
  <div class="mb-3">
    <label for="dij" class="form-label">Elnyert díjak száma: </label>
    <input value="<?php print($film['dij']); ?>" type="text" class="form-control" id="dij" name="dij">    
  </div>

  <div class="mb-3">
    <label for="jelol" class="form-label">Jelölések száma: </label>
    <input value="<?php print($film['jelol']); ?>" type="text" class="form-control" id="jelol" name="jelol">    
  </div>


  <button type="submit" class="btn btn-primary">Módosít</button>
</form>

 



</div> 


  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>