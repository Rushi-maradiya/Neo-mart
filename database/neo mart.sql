
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `orders` (
  `order_id` INT(11) NOT NULL AUTO_INCREMENT,
  `product_id` INT(11) NOT NULL,
  `vendor_id` INT(11) NOT NULL,
  `client_name` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `order_date` DATE NOT NULL,
  `quantity` INT UNSIGNED NOT NULL DEFAULT 0,
  `status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `orders` (`order_id`, `product_id`, `vendor_id`, `client_name`, `city`, `phone`, `order_date`, `quantity`, `status`) VALUES
(38, 43, 12, 'chiheb abiza', 'Bougaa', '0657842205', '2024-04-27', 3, 'shipped'),
(39, 43, 16, 'saadoudi idris', 'bab ezzouar', '0567230912', '2024-04-27', 1, 'cancelled'),
(40, 52, 16, 'chiheb abiza', 'Bougaa', '0657842205', '2024-04-29', 2, 'shipped'),
(41, 43, 12, 'saadoudi idris', 'bab ezzouar', '0567230912', '2024-04-27', 1, 'cancelled'),
(42, 43, 12, 'belkis hamza', 'bejaia', '0567230912', '2024-04-27', 1, 'pending');

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `status` varchar(256) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `quantity` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `product` (`product_id`, `vendor_id`, `product_name`, `description`, `price`, `image`, `status`, `create_date`, `update_date`, `quantity`, `category`) VALUES
(43, 12, 'Ceramic Vase', 'A beautifully crafted ceramic vase, perfect for home decor or as a gift. Its elegant design complements any interior.', 2500, 'uploads/1713549713.jpg', 'approved', '2024-04-18', '2024-04-18', 14, 'Home Decor'),
(44, 13, 'Decorative Wall Clock', 'A stylish wall clock with a modern design, ideal for living rooms, bedrooms, or offices. Features silent movement.', 2800, 'uploads/1713549836.jpg', 'pending', '2024-04-18', '2024-04-18', 5, 'Home Decor'),
(45, 13, 'Handmade Wooden Tray', 'Crafted from premium quality wood, this handmade tray is perfect for serving or as a decorative piece.', 2000, 'uploads/1713549891.jpg', 'approved', '2024-04-18', '2024-04-18', 3, 'Kitchen & Dining'),
(46, 13, 'Artisan Coffee Mug Set', 'Set of 4 handcrafted coffee mugs made with eco-friendly materials. Microwave and dishwasher safe.', 3000, 'uploads/1713549947.jpg', 'rejected', '2024-04-18', '2024-04-18', 2, 'Kitchen & Dining'),
(47, 13, 'Bamboo Plant Stand', 'Eco-friendly bamboo plant stand, suitable for indoor and outdoor use. Adds a natural touch to any space.', 2700, 'uploads/1713550003.jpg', 'approved', '2024-04-18', '2024-04-18', 7, 'Garden & Outdoors'),
(48, 13, 'Eco-Friendly Storage Baskets', 'Set of 3 eco-friendly storage baskets made from natural materials. Ideal for organizing any space.', 3200, 'uploads/1713550055.jpg', 'approved', '2024-04-18', '2024-04-18', 6, 'Storage Solutions'),
(49, 13, 'Minimalist Desk Lamp', 'Modern LED desk lamp with adjustable brightness. Sleek and minimalist design for any workspace.', 2600, 'uploads/1713550109.jpg', 'approved', '2024-04-18', '2024-04-18', 8, 'Office Supplies'),
(50, 13, 'Vintage Throw Pillow Covers', 'Set of 2 vintage-style throw pillow covers made from high-quality fabric. Adds charm to your living space.', 2400, 'uploads/1713550164.jpg', 'approved', '2024-04-18', '2024-04-18', 10, 'Home Decor'),
(51, 13, 'Hand-Painted Ceramic Plates', 'Set of 4 hand-painted ceramic plates. Unique designs and food-safe colors.', 3500, 'uploads/1713550222.jpg', 'approved', '2024-04-18', '2024-04-18', 9, 'Kitchen & Dining'),
(52, 16, 'Rustic Candle Holder Set', 'Add warmth to your home with this set of 3 rustic candle holders, ideal for tables and mantels.', 3100, 'uploads/1713550285.jpg', 'approved', '2024-04-18', '2024-04-18', 12, 'Home Decor');


CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_email` varchar(255) NOT NULL,
  `register_date` date NOT NULL,
  `vendor_status` varchar(100) NOT NULL,
  `vendor_password` varchar(256) NOT NULL,
  `points` int(255) UNSIGNED NOT NULL DEFAULT 0,
  `balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `vendor_email`, `register_date`, `vendor_status`, `vendor_password`, `points`, `balance`, `role`) VALUES
(15, 'rushi', 'r@gmail.com', '2024-04-15', 'active', '$2y$10$0738gp2xr9UGVj7fg0p/be2K1LC4Xb9yL5q1YaOC4d/3iq.QfF0Dy', 0, 0, 'admin'),
(12, 'vipul', 'vipul@gmail.com', '2024-04-06', 'active', '$2y$10$7vt9sz08wHnWu/HDLKS7g.WBol76XnfWFS64zvVk3op1eCyP68MBa', 5, 10, 'vendor'),
(16, 'savan', 'savan@gmail.com', '2024-04-16', 'active', '$2y$10$7vt9sz08wHnWu/HDLKS7g.WBol76XnfWFS64zvVk3op1eCyP68MBa', 10, 0, 'vendor');



ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);


ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;


ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;