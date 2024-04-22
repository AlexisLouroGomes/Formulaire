<?php
try {
    
    $pdo = new PDO('mysql:host=localhost;dbname=eleves', "root", "");

    
    $nom = $_POST["nom"];
    $prenom = $_POST["prenom"];
    $datenaissance = $_POST["datenaissance"];
    $sexe = $_POST["sexe"];
    $classe = $_POST["classe"];
    $email = $_POST["email"];
    $ville = $_POST["ville"];
    $telephone = $_POST["telephone"];

   
    $sql = "INSERT INTO eleve (nom, prenom, datenaissance, sexe, classe, email, ville, telephone) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt= $pdo->prepare($sql);

    
    $stmt->execute([$nom, $prenom, $datenaissance, $sexe, $classe, $email, $ville, $telephone]);

    
    if ($stmt->rowCount() > 0) {
        echo "Les données ont été insérées avec succès.";
       
        echo "<br><a href='form.html'>Retourner au formulaire</a>";
    } else {
        echo "Une erreur s'est produite lors de l'insertion des données.";
    }
} catch (PDOException $e) {
   
    echo "Une erreur s'est produite : " . $e->getMessage();
}
?>
