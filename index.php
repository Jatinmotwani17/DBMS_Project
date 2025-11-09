<?php
require_once 'connect.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Frontend</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Database Management</h1>

    <!-- Table Selection -->
    <div>
        <label for="tableSelect">Select Table:</label>
        <select id="tableSelect" onchange="loadTable()">
            <option value="USER">USER</option>
            <option value="SUBSCRIPTION">SUBSCRIPTION</option>
            <option value="WATCHHISTORY">WATCHHISTORY</option>
            <option value="PAYMENT">PAYMENT</option>
            <option value="CONTENT">CONTENT</option>
            <option value="MOVIE">MOVIE</option>
            <option value="SERIES">SERIES</option>
            <option value="REVIEW">REVIEW</option>
            <option value="EPISODE">EPISODE</option>
            <option value="GENRE">GENRE</option>
            <option value="DIRECTOR">DIRECTOR</option>
            <option value="ACTOR">ACTOR</option>
        </select>
    </div>

    <!-- Display Table -->
    <div id="tableContainer"></div>

    <!-- Add Form -->
    <h2>Add Entry</h2>
    <form id="addForm" onsubmit="addEntry(event)">
        <input type="hidden" id="selectedTable" name="table">
        <div id="formFields"></div>
        <button type="submit">Add</button>
    </form>

    <!-- Remove Form -->
    <h2>Remove Entry</h2>
    <form id="removeForm" onsubmit="removeEntry(event)">
        <label for="removeId">Enter ID to Remove:</label>
        <input type="number" id="removeId" name="id" required>
        <input type="hidden" id="removeTable" name="table">
        <button type="submit">Remove</button>
    </form>

    <script src="script.js"></script>
</body>
</html>