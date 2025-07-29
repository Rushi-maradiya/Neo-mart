<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

include("../config/connect.php");
include("../config/function.php");

// Initialize selected category
$selectedCategory = "";

// Fetch categories from the database
$categories = fetchCategories($conn);

// Process adding items to the cart
if (isset($_POST['add_to_cart'])) {
    $product_id = $_POST['product_id'];
    $selected_quantity = $_POST['selected_quantity'];
    addToCart($conn, $product_id, $selected_quantity);
}

// Category filtering
if (isset($_GET['category']) && $_GET['category'] !== '') {
    $selectedCategory = $_GET['category'];
    $filteredProducts = filterProductsByCategory($conn, $selectedCategory);
} else {
    $filteredProducts = getProducts($conn); // Show all products
    $selectedCategory = ''; // Ensure dropdown shows All Categories
}

include("../inc/head.php");
include("../inc/header.php");
?>

<!-- Filter Categories -->
<div class="container">
    <br>
    <div class="row justify-content-between align-items-end">
        <form action="" method="get" class="w-100 d-flex">
            <div class="form-floating flex-grow-1 me-2 mb-0">
                <select class="form-select w-100" id="category" name="category">
                    <option value="">All Categories</option>
                    <?php foreach ($categories as $category) {
                        $selected = ($category == $selectedCategory) ? 'selected' : '';
                        echo '<option value="' . htmlspecialchars($category) . '" ' . $selected . '>' . htmlspecialchars($category) . '</option>';
                    } ?>
                </select>
                <label for="category">Select Category</label>
            </div>
            <button type="submit" class="btn btn-primary">Apply</button>
        </form>
    </div>
</div>

<!-- Display Products -->
<div class="untree_co-section product-section before-footer-section">
    <div class="container">
        <div class="row">
            <?php include("../inc/product_card.php"); ?>
        </div>
    </div>
</div>

<?php include("../inc/footer.php"); ?>

<script>
    document.getElementById('shop')?.classList.add('nav-item', 'active');
</script>
