<?php
include('connect.php');

if (isset($_GET['islandOfPersonalityID'])) {
  $islandOfPersonalityID = $_GET['islandOfPersonalityID'];
  $memoriesQuery = "SELECT * FROM islandcontents WHERE islandOfPersonalityID = '$islandOfPersonalityID'";
  $memoriesResult = executeQuery($memoriesQuery);
  $row = mysqli_fetch_assoc($memoriesResult);
}

$query = "SELECT * FROM islandsofpersonality ";
$result = executeQuery($query);

?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Islands</title>
  <link rel="icon" type="image/png" href="images/personalityImg/icon0.png">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
  <link rel="stylesheet" href="style.css" />
</head>
<style>
  body {
    background-image: linear-gradient(to bottom, #f5ed85 30%, #af9ae4)
  }

  button {
    width: 210px;
    height: 40px;
    margin-bottom: 30px;
    border-radius: 20px;
    border: none;
    font-size: 20px;
    font-family: sans-serif;
    font-weight: bold;
    box-shadow: 0 10px 20px -10px rgb(108, 106, 102);
    margin-top: 10px;
    background-color: #fcf7f1;
  }

  button:hover {
    background-color: rgb(220, 220, 220);
  }

  h2 {
    font-size: 40px;
    font-family: sans-serif;
    font-weight: bold;
  }

  p.shortDesc {
    font-weight: bold;
  }

</style>

<body>
  <div class="w3-display-container" style="margin-bottom: 50px">
    <img src="images/personalityImg/islandImage.png" style="width: 100%" />
  </div>

  <?php
  if (mysqli_num_rows($result) > 0) {
    while ($memoriesRow = mysqli_fetch_assoc($result)) {
      $name = $memoriesRow['name'];
      $shortDescription = $memoriesRow['shortDescription'];
      $longDescription = $memoriesRow['longDescription'];
      $color = $memoriesRow['color'];
      $image = $memoriesRow['image'];
      $status = $memoriesRow['status'];
      $islandOfPersonalityID = $memoriesRow['islandOfPersonalityID'];

      ?>
      <div class="w3-row w3-center w3-container" style="margin: 0; padding: 0; display:flex; justify-content: center;">
        <div class="w3-half w3-container">
          <div class="w3-center">
            <img src="images/personalityImg/<?php echo $image ?>" style="width: 100%; height: auto; object-fit: cover;" />
            <h2><?php echo $name ?></h2>
            <p class="shortDesc"><?php echo $shortDescription ?></p>
            <p><?php echo $longDescription ?></p>

            <a href="view.php?islandOfPersonalityID=<?php echo $islandOfPersonalityID; ?>">
              <button type="button" class="btn btn-dark">Go to Island</button>
            </a>
            
          </div>
        </div>
      </div>

      <?php
    }
  }
  ?>

</body>

</html>