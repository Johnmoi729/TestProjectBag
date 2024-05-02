<?php
require_once 'template/templates.php';
require 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['name'], $_POST['email'], $_POST['feedback'], $_GET['productCode'])) {
    // Insert feedback into the database
    $name = $_POST['name'];
    $email = $_POST['email'];
    $feedback = $_POST['feedback'];
    $productCode = $_GET['productCode'];

    $stmt = $conn->prepare('INSERT INTO feedbacks (feedbackerName, feedbackerEmail, feedbackDescription, feedbackForProductCode) VALUES (?, ?, ?, ?)');
    $stmt->bind_param('ssss', $name, $email, $feedback, $productCode);
    $stmt->execute();
    $stmt->close();

    header('Location: ' . $_SERVER['PHP_SELF'] . '?productCode=' . $productCode);  
    exit();
}

if (isset($_GET['productCode'])) {
    $stmt = $conn->prepare('SELECT * FROM products WHERE productCode = ?');
    $stmt->bind_param('s', $_GET['productCode']);
    $stmt->execute();
    $result = $stmt->get_result();
    $product = $result->fetch_assoc();
    $stmt->close();

    if (!$product) {
        exit('Product does not exist!');
    }
} else {
    exit('Product does not exist!');
}
?>

<?=template_header('Product Page', 'product')?>

<div class="container mt-5">
    <div class="row">
        
        <div class="col-md-6 col-12">
            
        </div>
        <div class="col-md-6 col-12">
            <h2><?=$product['productName']?></h2>
            <h3><?=$product['buyPrice']?></h3>
            <p><?=$product['productCategory']?></p>
            
        </div>
    </div>

    
    <div class="row">
        <div class="col-12">
            <h4>Description</h4>
            <p><?=$product['productDescription']?></p>
        </div>
    </div>

    <!-- Feedback Section -->
    <div class="row">
        <div class="col-12 section">
            <h4>Leave a Feedback</h4>
            <form method="post" class="col-lg-6">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="feedback">Feedback:</label>
                    <textarea class="form-control" id="feedback" name="feedback" rows="4" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Submit Feedback</button>
            </form>
            
            <?php
            if (isset($_GET['productCode'])) {
                $stmt = $conn->prepare('SELECT * FROM feedbacks WHERE feedbackForProductCode = ? ORDER BY reg_date DESC');
                $stmt->bind_param('s', $_GET['productCode']);
                $stmt->execute();
                $result = $stmt->get_result();
                
                echo '<div class="feedbacks">';
                while ($feedback = $result->fetch_assoc()) {
                    echo '<div class="feedback">';
                    echo '<h5>' . htmlspecialchars($feedback['feedbackerName']) . '</h5>';
                    echo '<p>' . htmlspecialchars($feedback['feedbackDescription']) . '</p>';
                    echo '</div>';
                }
                echo '</div>';
                
                $stmt->close();
            }
            ?>
        </div>
    </div>
</div>

<?=template_footer()?>
