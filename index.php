<!doctype html>
<html lang="hu">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Filmek</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body class="bg-secondary text-white" >
    <h1 class="text-center">Filmek</h1>
    
  
<div class="container">
  <form action="adatfelvitel.php" method="get">

  <div class="mb-2">
    <label for="azon" class="form-label">A film azonosítója: </label>
    <input type="text" class="form-control" id="azon" name="azon">    
  </div>

  <div class="mb-2">
    <label for="cim" class="form-label">Film megnevezése: </label>
    <input type="text" class="form-control" id="cim" name="cim">    
  </div>
  
  <div class="mb-2">
    <label for="ev" class="form-label">Készítés éve: </label>
    <input type="text" class="form-control" id="ev" name="ev">    
  </div>

  <div class="mb-2">
    <label for="dij" class="form-label">Elnyert díjak száma: </label>
    <input type="text" class="form-control" id="dij" name="dij">    
  </div>

  <div class="mb-2">
    <label for="jelol" class="form-label">Jelölések száma: </label>
    <input type="text" class="form-control" id="jelol" name="jelol">    
  </div>

  <button type="submit" class="btn btn-primary">Új felvétele</button>
</form>

 

<?php
    $kapcsolat=mysqli_connect("127.0.0.1","root","")
        or die("Csatlakozási hiba!");
    mysqli_select_db($kapcsolat, "oscar"); 

    $sql="select * from filmek order by cim;";
    $gyumolcsok=mysqli_query($kapcsolat, $sql);

    mysqli_close($kapcsolat);

    while($sor=mysqli_fetch_assoc($gyumolcsok)){
?>
  <div class="row my-4">
      <div class="col-5 fw-bold"><?php print($sor["cim"]); ?></div>
      <div class="col-1"><?php print($sor["ev"]); ?></div>
      <div class="col-1"><?php print($sor["dij"]); ?></div>
      <div class="col-1"><?php print($sor["jelol"]); ?></div>
      <div class="col-2">
        <a href="delete.php?id=<?php echo $sor['azon'] ?>" class="btn btn-danger">Törlés</a>
      </div>
      <div class="col-2">     
        <a href="modosit.php?id=<?php echo $sor['azon'] ?>" class="btn btn-warning">Módosítás</a>
      </div>
  </div>
<?php
    }
?>

</div> 


  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>