<?php
session_start();

include("../config/connect.php"); 
include("../config/function.php"); 

$categories = fetchCategories($conn);

$filteredProducts = getProducts($conn);
include("../inc/head.php");

include("../inc/header.php");

if (isset($_SESSION['vendorName'])) {
	echo '<h4 class="text-center my-3 fw-bolder display-8">Welcome, ';
	echo $_SESSION['vendorName'];
	echo '</h4>';
}
?>
<style>
	.image {
		height: 300px;
		object-fit: contain;
	}

	.product-home {
		display: none;
	}

	.product-section .row {
		display: flex;
		flex-wrap: nowrap;
		overflow-x: auto;
		-ms-overflow-style: none;
		scrollbar-width: none;
	}

	.product-section .row::-webkit-scrollbar {
		display: none;
	}
</style>

<div class="hero">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-lg-5">
				<div class="intro-excerpt">
					<h1>NEO MART..</span></h1><br>
					<p class="mb-4">Your Trusted E-Commerce Platform for Everyday Needs
						BricoDZ is a versatile online marketplace where you can explore and shop a wide variety of
						products across categories like electronics, automotive, home appliances, computing, and more.
						Whether you're looking for the latest gadgets or essential household items, BricoDZ offers a
						convenient, secure, and user-friendly shopping experience for all your daily needs.</p><br>
					<p><a href="shop.php" class="btn btn-secondary me-2">Shop Now</a><a href="about.php"
							class="btn btn-white-outline">Explore</a></p>
				</div>
			</div>
			<div class="col-lg-7">
				<div class="hero-img-wrap">
					<img src="../images/whiteshoes1.png" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Hero Section -->

<!-- Start Product Section -->
<div class="product-section">
	<div class="container">
		<div class="row">
			<!-- Start Column 1 -->
			<div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
				<h2 class="mb-4 section-title">find best quality</h2>
				<p class="mb-4">Our Website offer a wide range of product for different sectors such as household,
					electronics, appliances, cosmatic and more. </p>
				<p><a style="background-color: #0c0347;" href="shop.php" class="btn">Explore</a></p>
			</div>
			<!-- End Column 1 -->
			<!-- Start Column  -->
			<?php include("../inc/product_card.php") ?>
			<!-- End Column  -->
		</div>
	</div>
</div>
<!-- End Product Section -->

<!-- Start Why Choose Us Section -->
<?php include("../inc/why.php") ?>
<!-- End Why Choose Us Section -->

<!-- Start Testimonial Slider -->
<?//php include("../inc/comments.php")--> ?>
<!-- End Testimonial Slider -->

<!-- Start Footer Section -->
<?php include("../inc/footer.php") ?>
<!-- End Footer Section -->

<script>
	// Get the <li> element with the ID "contact"
	var contactLi = document.getElementById('home');

	// Add classes "nav-item" and "active" to the <li> element
	contactLi.classList.add('nav-item', 'active');
</script>