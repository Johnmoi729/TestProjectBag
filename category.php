<?php

require_once 'template/templates.php';
require 'db.php'; // Kết nối với cơ sở dữ liệu

$products = [];

$stmt = $conn->prepare("SELECT * FROM products WHERE productCategory = ?");
$stmt->bind_param('s', $_GET['productCategory']);
$stmt->execute();
$result = $stmt->get_result();
while ($row = $result->fetch_assoc()) {
    $products[] = $row;
}
$stmt->close();

$pagetitle = $_GET['productCategory'] . ($_GET['productCategory'] == 'Shoulder' || $_GET['productCategory'] == 'Crossbody' ? ' Bags' : 's');

?>

<?=template_header('BagBag | ' . $pagetitle, 'main')?>

<div class="container">
    <div class="row product">
    <h1><?php echo $pagetitle ?></h1>
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
                            if ($product['productDiscount'] > 0) {
                                echo "<span class='menu-discount'><span class='original'>$" . htmlspecialchars($product['buyPrice']) . "</span><span class='discount-percent'>-" . $product['productDiscount'] . "%</span></span>";
                                echo "<span>$" . round($product['buyPrice'] * (100 - $product['productDiscount']) / 100, 2) . "</span>";
                            } else {
                                echo "<span>$" . round($product['buyPrice'], 2) . "</span>";
                            }
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