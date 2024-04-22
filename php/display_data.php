<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Données des élèves</title>
  <style>
    table, th, td {
      border: 1px solid black;
    }
  </style>
</head>
<body>

<h1>Données des élèves</h1>

<table>
    <tr>
      <th>id</th>
      <th>Nom</th>
      <th>Prénom</th>
      <th>Date de naissance</th>
      <th>Sexe</th>
      <th>Classe</th>
      <th>Ville</th>
      <th>Téléphone</th>
    </tr>
    
    <?php
    try {
        
        $pdo = new PDO('mysql:host=localhost;dbname=eleves', "root", "");

        
        $sql = "SELECT * FROM eleve";
        $stmt= $pdo->query($sql);

        
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['nom'] . "</td>";
            echo "<td>" . $row['prenom'] . "</td>";
            echo "<td>" . $row['datenaissance'] . "</td>";
            echo "<td>" . $row['sexe'] . "</td>";
            echo "<td>" . $row['classe'] . "</td>";
            echo "<td>" . $row['ville'] . "</td>";
            echo "<td>" . $row['telephone'] . "</td>";
            echo "</tr>";
        }
    } catch (PDOException $e) {
        // Affichage de l'erreur
        echo "Erreur : " . $e->getMessage();
    }
    ?>
</table>


<form action="form.html" method="get">
    <input type="submit" value="Retourner au formulaire">
</form>

</body>
</html>

