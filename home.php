<?php

require_once 'template/templates.php';
require 'db.php'; // Kết nối với cơ sở dữ liệu

$sql1 = "SELECT * FROM products WHERE productGender = 'Male' LIMIT 8";
$result1 = $conn->query($sql1);
while ($row1 = $result1->fetch_assoc()) {
    $products_men[] = $row1;
}

$sql2 = "SELECT * FROM products WHERE productGender = 'Female' LIMIT 8";
$result2 = $conn->query($sql2);
while ($row2 = $result2->fetch_assoc()) {
    $products_women[] = $row2;
}
?>

<?=template_header('Home', 'main')?>

<div class="jumbotron">
    <div class="container">
        <h1 class="display-4">Welcome to BagBag</h1>
        <p class="lead">Explore a wide range of high-quality bags for every occasion.</p>
        <p>From stylish backpacks to elegant handbags, we have the perfect accessory to complement your style.</p>
        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
    </div>
</div>

<div class="container">
    <div class="row product">
        <div class="menu-title">
            <h2 class="gender-title">For Men</h2>
            <a href="index.php?page=gender&productGender=Male" class="gender-link">See more ></a>
        </div>
    <?php foreach ($products_men as $product): ?>
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
                            echo "<span class='original'>$" . round($product['buyPrice'] * 1.13, 2) . "</span><br>";
                            echo "<span>$" . round($product['buyPrice'], 2) . "</span>";
                        }
                        ?>
                    <p class='text-center'><input type='submit' name='Save' value='Buy' class=' cc1'></p>
                    </p>
                </div>
            </div>
        </a>
    <?php endforeach; ?>
    </div>
    <div class="row product">
        <div class="menu-title">
            <h2 class="gender-title">For Women</h2>
            <a href="index.php?page=gender&productGender=Female" class="gender-link">See more ></a>
        </div>
    <?php foreach ($products_women as $product): ?>
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
                            echo "<span class='original'>$" . round($product['buyPrice'] * 1.13, 2) . "</span><br>";
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

