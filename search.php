<?php include 'header.php'; ?>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "objectDB";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Αποτυχία σύνδεσης στη βάση δεδομένων: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $search = trim($_POST['search']);

    $stmt = $conn->prepare("SELECT * FROM objects WHERE name LIKE ?");
    $searchTerm = "%" . $search . "%"; 
    $stmt->bind_param("s", $searchTerm);
    $stmt->execute();
    $result = $stmt->get_result();

    echo '<h2>Αποτελέσματα Αναζήτησης για "' . htmlspecialchars($search) . '"</h2>';
    echo '<div class="result-container">';
    
    if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $itemName = htmlspecialchars($row['name']);
        $imagePath = "images/" . htmlspecialchars($row['image']);

        echo '<div class="item-card">';
        echo '<img src="' . $imagePath . '" alt="' . $itemName . '" class="item-image">';
        echo '<p>' . $itemName . '</p>';
        echo '<a href="details.php?id=' . $row['id'] . '" class="details-button">Δείτε λεπτομέρειες</a>';
        echo '</div>';
    }
} else {
    echo '<p class="error">❌ Δεν βρέθηκαν αποτελέσματα για "' . htmlspecialchars($search) . '".</p>';
}


    echo '</div>';
    $stmt->close();
}

$conn->close();
?>

</div>
<a href="index.php" class="home-button-bottom">Home Page</a>
</body>
</html>
