<?php
// Database connection
$servername = "localhost";
$username = "root"; // your MySQL username (change if needed)
$password = "";     // your MySQL password (change if needed)
$database = "vocoder_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Collect form data
$name = $_POST['name'];
$email = $_POST['email'];
$address = $_POST['address'];
$phone = $_POST['phone'];

// Collect selected products
$products = [];
for ($i = 1; $i <= 8; $i++) {
    if (isset($_POST['product' . $i])) {
        $products[] = $_POST['product' . $i];
    }
}
$productList = implode(", ", $products); // convert array to string

// Insert into database
$sql = "INSERT INTO customer_orders (name, email, address, phone, products)
        VALUES ('$name', '$email', '$address', '$phone', '$productList')";

if ($conn->query($sql) === TRUE) {
    echo "<h2 style='color:green; text-align:center;'>Order Successful!</h2>";
    echo "<p style='text-align:center;'>Your order will be delivered within 12 hours.</p>";
    echo "<div style='text-align:center; margin-top:20px;'>
            <a href='index.html' style='color:blue;'>Go Back</a>
          </div>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
