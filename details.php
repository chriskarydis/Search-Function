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

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $stmt = $conn->prepare("SELECT * FROM objects WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $itemName = htmlspecialchars($row['name']);
        $imagePath = "images/" . $row['image'];
        $description = htmlspecialchars($row['description']);

        echo '<div class="details-container">';
        echo '<img src="' . $imagePath . '" alt="' . $itemName . '" class="item-image">';
        echo '<h2>' . $itemName . '</h2>';
        echo '<p>' . $description . '</p>';
        echo '<a href="redirect.php?name=' . urlencode($itemName) . '" class="shop-button">Μεταφορά στο κατάστημα</a>';
        echo '</div>';
    } else {
        echo '<p class="error">❌ Το αντικείμενο δεν βρέθηκε.</p>';
    }

    $stmt->close();
}

$conn->close();
?>

</div>
<a href="index.php" class="home-button-bottom">Home Page</a>
</body>
</html>
