<?php

require_once 'template/templates.php';
require 'db.php'; // Kết nối với cơ sở dữ liệu

$products = [];

$stmt = $conn->prepare("SELECT * FROM products WHERE productGender = ?");
$stmt->bind_param('s', $_GET['productGender']);
$stmt->execute();
$result = $stmt->get_result();
while ($row = $result->fetch_assoc()) {
    $products[] = $row;
}
$stmt->close();

?>

<?=template_header('Home', 'main')?>

<div class="container">
    <div class="row product">
    <h1><?php echo $_GET['productGender'] == 'Male' ? "Men's Collection" : "Women's Collection"?></h1>
    <?php foreach ($products as $product): ?>
        <a class='col-6 col-md-4 col-lg-3' href='index.php?page=product&productCode=<?=$product['productCode']?>'>
            <div class='card'>
                <div class='ccc'>
                    <p class='text-center'><img src="./imgs/<?=$product['productCategory']?>/<?=$product['productCode'] * 3?>.jpg"></p>
                </div>
                <div class='card-body'>
                    <h2 class="productName"><?=$product['productName']?></h2>
                    <p class='price'>
                        <?php 
                        if (!$product['productAvailability']) {
                            echo "<span class='sold-out'>Hết hàng</span>";
                        } else {
                            echo "<span class='original'>$" . htmlspecialchars($product['buyPrice']) . "</span><br>";
                            echo "<span>$" . htmlspecialchars($product['buyPrice']) . "</span>";
                        }
                        ?>
                    <p class='text-center'><input type='submit' name='Save' value='Buy' class=' cc1'></p>
                    </p>
                </div>
            </div>
        </a>
    <?php endforeach; ?>
    </div>
</div>

<?=template_footer()?>