<?php

$mainCSS = <<< EOT
.product {
    margin: 10px;
    padding: 10px;
    text-align: center;
}
.product a {
    text-decoration: none;
}
.product h2 {
    font-size: 18px;
    color: #333;
}
.product .price {
    font-size: 16px;
    color: #666;
}
.product .price .original {
    text-decoration: line-through;
    opacity: 0.5;
}
.sold-out {
    color: red;
}
.product img {
    max-width: 100%; 
    height: auto;
    width: 100%; 
}

.heading{
    text-align: center;
    margin-top: 20px;
    text-decoration: underline;
}
.imw{
    width: 65%;
    position: relative;
}
.image {
    display: block;
    width: 100%;
    max-width: 250px;
    height: auto;
}
.text {
    color: white;
    font-size: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    text-align: center;
}
.cc1{
    width: 82%;
    background: #fff;
    color: #000;
    padding: 4px 8px;
    border: 1px solid #000;
    height: 40px;
    border-radius: 7px;
}
@media only screen and (max-width: 553px) {
    .card{
    margin-top: 25px;
    }
}
.card{
    border: 1px solid;
    padding: 10px;
    box-shadow: 5px 10px #888888;
    margin: 16px 0;
}
.productName {
    overflow: hidden;
    text-overflow: ellipsis; 
    white-space: nowrap;
}
EOT;

$productCSS = <<< EOT
#productGallery {
    height: 75vh; 
    width: 50vw; 
    overflow: hidden;
}
.carousel-item {
    height: 75vh;
}
.carousel-control-prev:hover {
    background: linear-gradient(to left, rgba(255, 255, 255, 0), rgba(128, 128, 128, 0.3));
}
.carousel-control-next:hover {
    background: linear-gradient(to right, rgba(255, 255, 255, 0), rgba(128, 128, 128, 0.3));
}
.original {
    text-decoration: line-through;
    opacity: 0.5;
}
.product-btn {
    width: 80%; 
    font-size: 20px;
}
.feedback-container {
    margin-top: 20px;
}
.section {
    width: 100%;
    margin-top: 40px;
}
.feedback {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px 16px;
    margin-bottom: 15px;
    background-color: #f9f9f9;
}
.feedback-user {
    font-weight: bold;
    color: #065fd4;
    font-size: 18px;
    margin-top: 4px;
}
.feedback-content {
    font-size: 15px;
    margin-bottom: 8px;
}
.ads {
    display: flex;
    justify-content: flex-end;
    height: 600px;
}
@media (max-width: 991.98px) {
    #productGallery {
        height: 50vh;
        width: 100%;
    }
    .carousel-item {
        height: 50vh
    }
    .ads {
        display: block;
        height: 320px;
        overflow: hidden;
    }
    .ads-img {
        width: 100%;
    }
}
EOT;

function template_header($title, $page) {
global $mainCSS, $productCSS;
$css = $page == 'main' ? $mainCSS : $productCSS;
$html = <<< EOT
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <title>$title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .content_template {
            min-height: 40vh;
        }
        .gender-title {
            text-align: left;
            margin-top: 32px;
            font-size: 28px!important;
        }

        /* Header CSS */
        .navbar-brand {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            font-weight: bold;
            font-size: 24px;
        }

        /* Footer CSS */
        .footer {
            background-color: #F8F9FA;
            padding: 40px 0;
            margin-top: 40px;
        }
        .footer-col {
            margin-bottom: 30px;
        }
        .footer-col h4 {
            font-size: 18px;
            margin-bottom: 20px;
            font-weight: bold;
            color: #031249;
        }
        .footer-col ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .footer-col ul li:not(:last-child) {
            margin-bottom: 10px;
        }
        .footer-col ul li a {
            color: #6c757d;
            text-decoration: none;
            transition: color 0.3s;
        }
        .footer-col ul li a:hover {
            color: #031249;
        }
        .social-links a {
            display: inline-block;
            margin-right: 20px;
            color: #6c757d;
            border: 0;
        }
        .copyright {
            font-size: 12px;
            text-align: center;
            margin-top: 20px;
            opacity: 0.7
        }

        /* Content CSS */
        $css
    </style>
    
</head>
<body>
    <!-- Navbar content -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light px-3">
        <div class="container-fluid ">
            <a class="navbar-brand" href="index.php">BagBag</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Categories
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
                            <li><a class="dropdown-item" href="index.php?page=category&productCategory=Backpack">Backpacks</a></li>
                            <li><a class="dropdown-item" href="index.php?page=category&productCategory=Handbag">Handbags</a></li>
                            <li><a class="dropdown-item" href="index.php?page=category&productCategory=Crossbody">Crossbody Bags</a></li>
                            <li><a class="dropdown-item" href="index.php?page=category&productCategory=Shoulder">Shoulder Bags</a></li>
                            <li><a class="dropdown-item" href="index.php?page=category&productCategory=Purse">Purses</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Brands
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                            <li><a class="dropdown-item" href="index.php?page=brand&productBrand=AdventureGear">AdventureGear</a></li>
                            <li><a class="dropdown-item" href="index.php?page=brand&productBrand=UrbanTrek">UrbanTrek</a></li>
                            <li><a class="dropdown-item" href="index.php?page=brand&productBrand=Nomad">Nomad</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink3" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Collections
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink3">
                            <li><a class="dropdown-item" href="index.php?page=gender&productGender=Male">Men's Collection</a></li>
                            <li><a class="dropdown-item" href="index.php?page=gender&productGender=Female">Women's Collection</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="d-flex justify-content-end">
                <button class="btn btn-outline-light text-dark my-2 my-sm-0 me-2">
                    <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-outline-light text-dark my-2 my-sm-0 me-2">
                    <i class="fas fa-user"></i>
                </button>
                <button class="btn btn-outline-light text-dark my-2 my-sm-0">
                    <i class="fas fa-shopping-cart"></i>
                </button>
            </div>
        </div>
    </nav>
<div class="content_template">
EOT;
echo $html;
}

function template_footer() {
$html = <<< EOT
</div>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3 footer-col">
                <h4>NEWSLETTER SUBSCRIPTION</h4>
                <p>Stay updated with our latest news and offers by subscribing to our newsletter.</p>
                <form>
                    <div class="input-group">
                        <input type="email" class="form-control" placeholder="Your email here">
                        <button class="btn btn-primary" type="submit">→</button>
                    </div>
                </form>
            </div>

            <div class="col-md-3 footer-col">
                <h4>EXPLORE BAGBAG</h4>
                <ul>
                    <li><a href="index.php?page=category&productCategory=Backpack">Backpacks</a></li>
                    <li><a href="index.php?page=category&productCategory=Handbag">Handbags</a></li>
                    <li><a href="index.php?page=category&productCategory=Crossbody">Crossbody Bags</a></li>
                    <li><a href="index.php?page=category&productCategory=Shoulder">Shoulder Bags</a></li>
                    <li><a href="index.php?page=category&productCategory=Purse">Purses</a></li>
                </ul>
            </div>

            <div class="col-md-3 footer-col">
                <h4>ABOUT BAGBAG</h4>
                <ul>
                    <li><a href="#">Our Mission</a></li>
                    <li><a href="#">Our Value</a></li>
                    <li><a href="#">Our Team</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-col">
                <h4>Address</h4>
                <ul>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d204340.34776898715!2d105.41198893929862!3d21.012077787605445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab4cd376479b%3A0xbc2e0bb9db373ed2!2zOGEgVMO0biBUaOG6pXQgVGh1eeG6v3QsIE3hu7kgxJDDrG5oLCBD4bqndSBHaeG6pXksIEjDoCBO4buZaSAxMDAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1712785336820!5m2!1svi!2s" width="300" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </ul>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-tiktok"></i></a>
                </div>
            </div>
        </div>
        <div class="row">
            <span class="copyright">© 2024 BagBag by FPT Aptech. All rights reserved.</span>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
EOT;
echo $html;
}
?>