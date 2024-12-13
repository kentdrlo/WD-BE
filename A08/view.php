<?php
include('connect.php');

if (isset($_GET['islandOfPersonalityID'])) {
  $islandOfPersonalityID = $_GET['islandOfPersonalityID'];
  $memoriesQuery = "SELECT * FROM islandcontents WHERE islandOfPersonalityID = '$islandOfPersonalityID'";
  $memoriesResult = executeQuery($memoriesQuery);
}


?>


<!DOCTYPE html>
<html>

<head>
  <title>W3.CSS Template</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
</head>
<style>
  body {
    background-image: linear-gradient(to bottom,rgb(208, 208, 208) 20% ,rgb(0, 0, 0) 70%);
  }
  
  .contentOne {
    width: 80%;
    margin-top: 20px;
    transition: width 0.3s ease;
  }

  @media (max-width: 768px) {
    .contentOne {
      width: 80%;
    }
  }

  @media (max-width: 480px) {
    .contentOne {
      width: 100%;
    }
  }

  @media (max-width: 357px) {
    .contentOne {
      width: 100%;
    }
  }

  .infoTwo {
    margin-top: 40px;
  }

  .infoThree {
    margin-top: 40px;
  }

  h2 {
    font-weight: bold;
  }

  p {
    margin-top: 50px;
    font-size: 19px;
    font-weight: bold;
    font-family: Arial, Helvetica, sans-serif;
    color: white;
  }

  img {
    border-radius: 30px;
  }
</style>

<body>
  <?php
  if (mysqli_num_rows($memoriesResult) > 0) {
    while ($memoriesRow = mysqli_fetch_assoc($memoriesResult)) {
      $image = $memoriesRow['image'];
      $content = $memoriesRow['content'];
      $color = $memoriesRow['color'];
      ?>

      <div class="w3-row w3-container" style="margin: 50px 0">
        <div class="w3-whole w3-container w3-center">
          <div class="d-flex justify-content-center text-center" style="flex-direction: column; align-items: center">
            <img src="images/contentImg/<?php echo $image ?>" class="contentOne" />
            <p>
              <?php echo $content ?>
            </p>
          </div>
        </div>
      </div>

      <?php
    }
  }
  ?>

</body>

</html>