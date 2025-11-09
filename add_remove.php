<?php
require_once 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $table = $_POST['table'];
    $idColumn = $table === 'USER' ? 'UserID' : ($table === 'SUBSCRIPTION' ? 'SubscriptionID' : ($table === 'WATCHHISTORY' ? 'HistoryID' : ($table === 'PAYMENT' ? 'PaymentID' : ($table === 'CONTENT' ? 'ContentID' : ($table === 'MOVIE' ? 'ContentID' : ($table === 'SERIES' ? 'ContentID' : ($table === 'REVIEW' ? 'ReviewID' : ($table === 'EPISODE' ? 'EpisodeID' : ($table === 'GENRE' ? 'GenreID' : ($table === 'DIRECTOR' ? 'DirectorID' : 'ActorID'))))))))));

    if (isset($_POST['id'])) {
        // Remove operation
        $id = $_POST['id'];
        $stmt = $conn->prepare("DELETE FROM $table WHERE $idColumn = :id");
        $stmt->bindParam(':id', $id);
        if ($stmt->execute()) {
            echo "Entry removed successfully.";
        } else {
            echo "Error removing entry.";
        }
    } else {
        // Add operation
        $columns = implode(', ', array_keys($_POST));
        $values = ':' . implode(', :', array_keys($_POST));
        $stmt = $conn->prepare("INSERT INTO $table ($columns) VALUES ($values)");
        foreach ($_POST as $key => $value) {
            $stmt->bindValue(":$key", $value);
        }
        if ($stmt->execute()) {
            echo "Entry added successfully.";
        } else {
            echo "Error adding entry.";
        }
    }
}
?>