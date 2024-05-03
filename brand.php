<?php

require_once 'template/templates.php';
require 'db.php'; // Kết nối với cơ sở dữ liệu

$sql = "SELECT * FROM products";
$result = $conn->query($sql);
while ($row = $result->fetch_assoc()) {
    $products[] = $row;
}
?>

<?=template_header('BagBag | ' . $_GET['productBrand'], 'main')?>

<div class="container">
    <div class="row product">
        <h1><span class='fw-bold'><?php echo $_GET['productBrand']?></span> products</h1>
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