<?php include 'header.php'; ?>

<div class="redirect-container">
    <h2>Μεταφορά στο επιλεγμένο κατάστημα...</h2>
    <p>Παρακαλώ περιμένετε καθώς μεταφέρεστε στο κατάστημα για το προϊόν: <strong><?php echo htmlspecialchars($_GET['name']); ?></strong></p>
</div>

<meta http-equiv="refresh" content="3;url=https://example.com">

</div>
<a href="index.php" class="home-button-bottom">Home Page</a>
</body>
</html>
