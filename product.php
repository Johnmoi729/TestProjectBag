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

    header('Location: ' . $_SERVER['PHP_SELF'] . '?page=product&productCode=' . $productCode);  
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

<?=template_header('BagBag | ' . $product['productName'], 'product')?>

<div class="container mt-3">
        <!-- Section 1: Product basic information -->
        <div class="row">
            <!-- Gallery carousel -->
            <div class="col-md-6 col-12 d-flex justify-content-center">
                <div id="productGallery" class="carousel slide rounded">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../imgs/<?=$product['productCategory']?>/<?=$product['productCode'] * 3?>.jpg" class="d-block w-100 h-100 img-fluid m-auto" alt="Camera" style="object-fit: contain;">
                        </div>
                        <div class="carousel-item">
                            <img src="../imgs/<?=$product['productCategory']?>/<?=$product['productCode'] * 3 - 1?>.jpg" class="d-block w-100 h-100 img-fluid m-auto" alt="Headphones" style="object-fit: contain;">
                        </div>
                        <div class="carousel-item">
                            <img src="../imgs/<?=$product['productCategory']?>/<?=$product['productCode'] * 3 - 2?>.jpg" class="d-block w-100 h-100 img-fluid m-auto" alt="Wallet" style="object-fit: contain;">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#productGallery" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#productGallery" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <!-- Product info -->
            <div class="col-md-6 col-12 d-flex flex-column justify-content-between">
                <div class="p-4">
                    <h2 class='mb-4'><?=$product['productName']?></h2>
                    <p class='original mb-2'>$<?=$product['buyPrice']?></p>     
                    <h3 class='mb-4 d-flex align-items-center'>$<?=round($product['buyPrice'] * (100 - $product['productDiscount']) / 100, 2)?> <span class="product-discount">-<?=$product['productDiscount']?>%</span></h3>
                    <p><?=$product['productIntroduction']?></p>
                </div>
                <div class="text-center mb-5">
                    <a href="" class="btn btn-primary my-2 p-2 product-btn">Add to Cart</a>
                    <a href="" class="btn btn-dark my-2 p-2 product-btn">Add to Favorite</a>
                </div>
            </div>            
        </div>
        <div class="section">
            <!-- Section 2: Description -->
            <div class="description">
                <h4>Description</h4>
                <p id="productDescription">Category: <?=$product['productCategory']?><br><?=$product['productDescription']?></p>
                <!-- <button onclick=downloadDescription()>Download Description</button> -->
            </div>
        </div>
        <div class="row section">
            <!-- Section 3: Feedbacks -->
            <div class="col-lg-6">
                <form method="post" class="">
                    <h4>Leave a feedback</h4>
                    <div class="form-group my-2">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group my-2">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group my-2">
                        <label for="feedback">Feedback:</label>
                        <textarea class="form-control" id="feedback" name="feedback" rows="4" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mt-3">Submit Feedback</button>
                </form>
                
                <div class=" mt-5">
                    <h4>Recent feedbacks</h4>
                    <?php
                    if (isset($_GET['productCode'])) {
                        $stmt = $conn->prepare('SELECT * FROM feedbacks WHERE feedbackForProductCode = ? ORDER BY reg_date DESC');
                        $stmt->bind_param('s', $_GET['productCode']);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        
                        echo '<div class="feedbacks">';
                        while ($feedback = $result->fetch_assoc()) {
                            echo '<div class="feedback-container">';
                            echo '<div class="feedback">';
                            echo '<div class="col-md-12">';
                            echo '<h5 class="feedback-user">' . htmlspecialchars($feedback['feedbackerName']) . '</h5>';
                            echo '<p class="feedback-content">' . htmlspecialchars($feedback['feedbackDescription']) . '</p>';
                            echo '</div>';
                            echo '</div>';
                            echo '</div>';
                        }
                        echo '</div>';
                        
                        $stmt->close();
                    }
                    ?>
                </div>
            </div>

            <div class="product-ads col">
                <span>Advertisement</span>
                <a href="index.php" class="product-ads-link">
                    <div class="product-ads-img"></div>
                </a>
            </div>
        </div>
    </div>
<?=template_footer()?>