
--
-- Structure de la table `clic_action_recorder`
--

DROP TABLE IF EXISTS `clic_action_recorder`;
CREATE TABLE `clic_action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `success` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_address_book`
--

DROP TABLE IF EXISTS `clic_address_book`;
CREATE TABLE `clic_address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_siret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_ape` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_tva_intracom` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_cf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_piva` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_suburb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_address_format`
--

DROP TABLE IF EXISTS `clic_address_format`;
CREATE TABLE `clic_address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_address_format`
--

INSERT INTO `clic_address_format` VALUES(1, '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country');
INSERT INTO `clic_address_format` VALUES(2, '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country');
INSERT INTO `clic_address_format` VALUES(3, '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country');
INSERT INTO `clic_address_format` VALUES(4, '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country');
INSERT INTO `clic_address_format` VALUES(5, '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');
INSERT INTO `clic_address_format` VALUES(6, '$firstname $lastname$cr$streets$cr$postcode $city$cr$statecomma$country', '$city / $country');

-- --------------------------------------------------------

--
-- Structure de la table `clic_administrators`
--

DROP TABLE IF EXISTS `clic_administrators`;
CREATE TABLE `clic_administrators` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_administrator_menu`
--

DROP TABLE IF EXISTS `clic_administrator_menu`;
CREATE TABLE `clic_administrator_menu` (
  `id` int(11) NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `access` tinyint(1) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2b_menu` tinyint(1) NOT NULL DEFAULT '0',
  `app_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_administrator_menu`
--

INSERT INTO `clic_administrator_menu` VALUES(1, '', 0, 0, 0, '', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(2, '', 0, 1, 1, '', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(3, '', 0, 2, 0, NULL, 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(4, '', 0, 3, 0, NULL, 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(5, '', 0, 4, 0, NULL, 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(6, '', 0, 5, 0, NULL, 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(7, '', 0, 6, 0, NULL, 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(8, '', 0, 7, 0, NULL, 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(11, 'index.php', 1, 0, 0, 'configuration_admin.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(12, '../', 1, 0, 0, 'configuration.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(13, '', 2, 0, 0, 'configuration.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(14, '', 2, 1, 0, 'configuration_admin.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(15, '', 2, 2, 0, 'configuration_b2c.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(16, '', 2, 3, 0, 'configuration_b2b.gif', 1, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(18, '', 2, 5, 0, 'referencement.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(19, '', 2, 6, 0, 'configuration_lieu_taxe.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(20, '', 2, 7, 0, 'configuration_localisation.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(21, '', 2, 8, 1, 'configuration_session.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(22, 'index.php?A&Configuration\\Settings&Settings&gID=1', 13, 0, 0, 'configuration.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(23, 'index.php?A&Configuration\\Settings&Settings&gID=25', 13, 1, 0, 'configuration_25.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(24, 'index.php?A&Configuration\\Settings&Settings&gID=2', 13, 2, 0, 'modules_payment.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(25, 'index.php?A&Configuration\\Settings&Settings&gID=34', 13, 3, 0, 'configuration_34.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(26, 'index.php?A&Configuration\\Settings&Settings&gID=3', 13, 4, 0, 'configuration_3', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(27, 'index.php?A&Configuration\\Settings&Settings&gID=7', 13, 5, 0, 'configuration_7.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(28, 'index.php?A&Configuration\\Settings&Settings&gID=9', 13, 6, 0, 'configuration_9.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(30, 'index.php?A&Configuration\\Settings&Settings&gID=12', 13, 8, 0, 'configuration_12.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(31, 'index.php?A&Configuration\\Settings&Settings&gID=13', 13, 9, 0, 'configuration_13.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(33, 'index.php?A&Configuration\\Modules&Modules&set=dashboard', 14, 1, 0, 'configuration_admin.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(34, 'index.php?A&Configuration\\Settings&Settings&gID=21', 14, 2, 0, 'configuration_3.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(35, 'index.php?A&Configuration\\Settings&Settings&gID=23', 14, 3, 0, 'configuration_4.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(39, 'index.php?A&Configuration\\Settings&Settings&gID=26', 14, 7, 0, 'order_status_invoice.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(42, 'index.php?A&Configuration\\Settings&Settings&gID=36', 14, 10, 1, 'configuration_36.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(44, 'index.php?A&Configuration\\Settings&Settings&gID=45', 14, 12, 1, 'configuration_45.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(45, 'index.php?A&Configuration\\Settings&Settings&gID=22', 15, 0, 0, 'configuration_17.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(46, 'index.php?A&Configuration\\Settings&Settings&gID=5', 15, 1, 0, 'configuration_5.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(47, 'index.php?A&Configuration\\Settings&Settings&gID=16', 15, 2, 0, 'configuration_16.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(48, 'index.php?A&Configuration\\Settings&Settings&gID=17', 16, 0, 0, 'configuration_17.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(49, 'index.php?A&Configuration\\Settings&Settings&gID=18', 16, 1, 0, 'configuration_18.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(50, 'index.php?A&Configuration\\Settings&Settings&gID=19', 16, 2, 0, 'configuration_19.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(51, 'index.php?A&Configuration\\Settings&Settings&gID=20', 16, 3, 0, 'configuration_20.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(54, 'index.php?A&Configuration\\Modules&Modules&set=shipping', 449, 2, 1, 'modules_shipping.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(55, 'index.php?A&Configuration\\Modules&Modules&set=order_total', 451, 0, 1, 'modules_order_total.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(59, 'index.php?A&Configuration\\Modules&Modules&set=header_tags', 18, 2, 0, 'referencement.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(69, 'index.php?A&Configuration\\Settings&Settings&gID=14', 21, 1, 0, 'configuration_14.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(70, 'index.php?A&Configuration\\Settings&Settings&gID=10', 21, 2, 0, 'configuration_10.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(71, 'index.php?A&Configuration\\Settings&Settings&gID=15', 21, 3, 0, 'configuration_15.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(75, 'index.php?A&Catalog\\ProductsAttributes&ProductsAttributes', 3, 7, 0, 'products_option.gif', 0, 'app_catalog_products_attributes', 1);
INSERT INTO `clic_administrator_menu` VALUES(98, '', 7, 0, 0, 'stats_products.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(103, '', 7, 1, 0, 'stats_financial.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(107, '', 7, 2, 0, 'wharehouse.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(116, '', 8, 0, 0, 'configuration_43.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(117, '', 8, 1, 0, 'configuration_session.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(118, '', 8, 2, 0, 'page_manager.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(119, '', 8, 3, 0, 'client.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(120, '', 8, 4, 0, 'order_process.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(121, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_info', 8, 5, 0, 'categorie_produit.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(122, '', 8, 6, 0, 'communication.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(123, '', 8, 7, 0, 'miscellaneous.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(124, '', 8, 8, 0, 'layout.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(125, 'index.php?A&Configuration\\Settings&Settings&gID=43', 116, 0, 0, 'configuration_43.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(126, 'index.php?A&Configuration\\Settings&Settings&gID=4', 116, 1, 0, 'configuration_4.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(127, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_new', 117, 0, 0, 'listing_products_new.gi', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(130, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_special', 117, 3, 0, 'specials.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(131, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_search', 117, 4, 0, 'icon_search.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(132, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_listing', 117, 5, 0, 'configuration_session.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(133, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_listing', 132, 0, 0, 'products_listing.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(134, 'index.php?A&Configuration\\Settings&Settings&gID=8', 132, 1, 0, 'configuration_8.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(135, 'index.php?A&Configuration\\Modules&Modules&set=modules_front_page', 118, 0, 0, 'page_manager.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(136, 'index.php?A&Configuration\\Modules&Modules&set=modules_index_categories', 118, 1, 0, 'categorie.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(137, 'index.php?A&Configuration\\Modules&Modules&set=modules_create_account', 119, 0, 0, 'client.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(138, 'index.php?A&Configuration\\Modules&Modules&set=modules_create_account_pro', 119, 1, 0, 'whos_online.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(139, 'index.php?A&Configuration\\Modules&Modules&set=modules_login', 119, 2, 0, 'client.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(140, 'index.php?A&Configuration\\Modules&Modules&set=modules_account_customers', 119, 3, 0, 'whos_online.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(141, 'index.php?A&Configuration\\Modules&Modules&set=modules_shopping_cart', 120, 0, 0, 'shopping_cart.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(142, 'index.php?A&Configuration\\Modules&Modules&set=modules_checkout_shipping', 120, 1, 0, 'modules_shipping.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(143, 'index.php?A&Configuration\\Modules&Modules&set=modules_checkout_payment', 120, 2, 0, 'modules_payment.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(144, 'index.php?A&Configuration\\Modules&Modules&set=modules_checkout_confirmation', 120, 3, 0, 'modules_checkout_confirmation.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(145, 'index.php?A&Configuration\\Modules&Modules&set=modules_checkout_success', 120, 4, 0, 'modules_checkout_sucess.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(146, 'index.php?A&Configuration\\Modules&Modules&set=modules_contact_us', 122, 0, 0, 'email.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(150, 'index.php?A&Configuration\\Modules&Modules&set=modules_tell_a_friend', 122, 2, 0, 'tellafriend.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(152, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_reviews', 122, 4, 0, 'reviews.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(153, 'index.php?A&Configuration\\Settings&Settings&gID=32', 122, 5, 0, 'reviews.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(154, 'index.php?A&Configuration\\Modules&Modules&set=modules_advanced_search', 123, 0, 0, 'advanced_search.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(155, 'index.php?A&Configuration\\Modules&Modules&set=modules_sitemap', 123, 1, 0, 'sitemap.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(156, 'index.php?A&Configuration\\Modules&Modules&set=modules_boxes', 124, 0, 0, 'blockmenu.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(157, 'index.php?A&Configuration\\Modules&Modules&set=modules_header', 124, 1, 0, 'header.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(158, 'index.php?A&Configuration\\Modules&Modules&set=modules_footer', 124, 2, 0, 'footer.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(163, '', 0, 8, 0, '', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(164, '', 163, 0, 1, 'backup.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(170, '', 163, 2, 1, 'editor_html.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(175, '', 163, 3, 1, 'configuration_36_over.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(178, '', 163, 20, 1, 'server_info.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(186, '', 2, 4, 1, 'modules_payment.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(449, '', 2, 4, 1, 'modules_shipping.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(451, '', 2, 4, 1, 'modules_order_total.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(452, 'index.php?A&Payment\\COD&Configure', 186, 4, 1, 'modules_payment.gif', 0, 'app_payment_cod', 1);
INSERT INTO `clic_administrator_menu` VALUES(461, 'index.php?A&OrderTotal\\TotalShipping&Configure', 451, 4, 1, 'modules_order_total.gif', 0, 'app_order_total_shipping', 1);
INSERT INTO `clic_administrator_menu` VALUES(463, 'index.php?A&OrderTotal\\Total&Configure&module=TO', 451, 6, 1, 'modules_order_total.gif', 0, 'app_order_total_total', 1);
INSERT INTO `clic_administrator_menu` VALUES(464, 'index.php?A&OrderTotal\\TotalTax&Configure&module=TX', 451, 5, 1, 'modules_order_total.gif', 0, 'app_order_total_tax', 1);
INSERT INTO `clic_administrator_menu` VALUES(465, 'index.php?A&OrderTotal\\SubTotal&Configure', 451, 1, 1, 'modules_order_total.gif', 0, 'app_order_total_subtotal', 1);
INSERT INTO `clic_administrator_menu` VALUES(504, '', 163, 11, 1, 'configuration_44.png', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(581, 'index.php?A&Communication\\Newsletter&Newsletter', 6, 6, 0, 'newsletters.gif', 0, 'app_communication_newsletter', 1);
INSERT INTO `clic_administrator_menu` VALUES(583, 'index.php?A&Customers\\Customers&Customers', 4, 1, 0, 'client.gif', 0, 'app_customers_customers', 1);
INSERT INTO `clic_administrator_menu` VALUES(586, 'index.php?A&Communication\\EMail&EMail', 6, 6, 0, 'email.gif', 0, 'app_communication_email', 1);
INSERT INTO `clic_administrator_menu` VALUES(587, 'index.php?A&Customers\\Reviews&Reviews', 4, 6, 0, 'reviews.gif', 0, 'app_customers_reviews', 1);
INSERT INTO `clic_administrator_menu` VALUES(589, 'index.php?A&Customers\\Groups&Groups', 4, 3, 0, 'group_client.gif', 0, 'app_customers_groups', 1);
INSERT INTO `clic_administrator_menu` VALUES(590, 'index.php?A&Catalog\\Archive&Archive', 3, 8, 0, 'archive.gif', 0, 'app_catalog_archive', 1);
INSERT INTO `clic_administrator_menu` VALUES(592, 'index.php?A&Orders\\Orders&Orders', 4, 0, 0, 'orders.gif', 0, 'app_orders_orders', 1);
INSERT INTO `clic_administrator_menu` VALUES(593, 'index.php?A&Customers\\Members&Members', 4, 4, 0, 'group_client.gif', 0, 'app_customers_members', 1);
INSERT INTO `clic_administrator_menu` VALUES(594, 'index.php?A&Marketing\\SEO&SEO', 5, 8, 0, 'referencement.gif', 0, 'app_marketing_seo', 1);
INSERT INTO `clic_administrator_menu` VALUES(595, 'index.php?A&Communication\\PageManager&PageManager', 6, 0, 0, 'page_manager.gif', 0, 'app_communication_page_manager', 1);
INSERT INTO `clic_administrator_menu` VALUES(596, 'index.php?A&Marketing\\BannerManager&BannerManager', 5, 6, 0, 'banner_manager.gif', 0, 'app_marketing_banner_manager', 1);
INSERT INTO `clic_administrator_menu` VALUES(598, 'index.php?A&Customers\\Customers&StatsCustomers', 103, 0, 0, 'stats_customers.gif', 0, 'app_report_stats_customers', 1);
INSERT INTO `clic_administrator_menu` VALUES(605, 'index.php?A&Catalog\\Products&StatsProductsLowStock', 107, 5, 0, 'stats_customers.gif', 0, 'app_report_stats_low_stock', 1);
INSERT INTO `clic_administrator_menu` VALUES(608, 'index.php?A&Catalog\\Products&StatsProductsPurchased', 98, 5, 0, 'stats_products_purchased.gif', 0, 'app_report_stats_products_purchased', 1);
INSERT INTO `clic_administrator_menu` VALUES(609, 'index.php?A&Catalog\\Products&StatsProductsViewed', 98, 5, 0, 'stats_products_viewed.gif', 0, 'app_report_stats_products_viewed', 1);
INSERT INTO `clic_administrator_menu` VALUES(616, 'index.php?A&Report\\StatsProductsNotification&StatsProductsNotification', 107, 5, 0, 'client.gif', 0, 'app_report_stats_products_notification', 1);
INSERT INTO `clic_administrator_menu` VALUES(617, 'index.php?A&Catalog\\Products&StatsProductsExpected', 107, 5, 0, 'products_expected.gif', 0, 'app_report_stats_products_expected', 1);
INSERT INTO `clic_administrator_menu` VALUES(626, 'index.php?A&Catalog\\Suppliers&Suppliers', 3, 7, 0, 'suppliers.gif', 0, 'app_catalog_suppliers', 1);
INSERT INTO `clic_administrator_menu` VALUES(627, 'index.php?A&Catalog\\Manufacturers&Manufacturers', 3, 6, 0, 'manufacturers.gif', 0, 'app_catalog_manufacturers', 1);
INSERT INTO `clic_administrator_menu` VALUES(632, 'index.php?A&Configuration\\TemplateEmail&TemplateEmail', 20, 3, 0, 'mail.gif', 0, 'app_configuration_template_email', 1);
INSERT INTO `clic_administrator_menu` VALUES(633, 'index.php?A&Tools\\WhosOnline&WhosOnline', 163, 30, 0, 'whos_online.gif', 0, 'app_tools_whos_online', 1);
INSERT INTO `clic_administrator_menu` VALUES(638, 'index.php?A&Tools\\AdministratorMenu&AdministratorMenu', 170, 1, 1, 'menu.png', 0, 'app_configuration_administrator_menu', 1);
INSERT INTO `clic_administrator_menu` VALUES(644, 'index.php?A&Tools\\Upgrade&Upgrade', 163, 1, 1, 'modules_modules_products_featured.gif', 0, 'app_tools_upgrade', 1);
INSERT INTO `clic_administrator_menu` VALUES(647, 'index.php?A&Configuration\\ProductsQuantityUnit&ProductsQuantityUnit', 13, 8, 0, 'products_unit.png', 0, 'app_configuration_products_quantity_unit', 1);
INSERT INTO `clic_administrator_menu` VALUES(650, 'index.php?A&Configuration\\OrdersStatusInvoice&OrdersStatusInvoice', 14, 7, 0, 'configuration_26.gif', 0, 'app_configuration_orders_status_invoice', 1);
INSERT INTO `clic_administrator_menu` VALUES(651, 'index.php?A&Configuration\\OrdersStatus&OrdersStatus', 14, 6, 0, 'order_status.gif', 0, 'app_configuration_orders_status', 1);
INSERT INTO `clic_administrator_menu` VALUES(652, 'index.php?A&Configuration\\Countries&Countries', 19, 1, 0, 'countries.gif', 0, 'app_configuration_countries', 1);
INSERT INTO `clic_administrator_menu` VALUES(653, 'index.php?A&Configuration\\TaxClass&TaxClass', 19, 2, 0, 'tax_classes.gif', 0, 'app_configuration_tax_class', 1);
INSERT INTO `clic_administrator_menu` VALUES(654, 'index.php?A&Configuration\\Zones&Zones', 19, 3, 0, 'zones.gif', 0, 'app_configuration_zones', 1);
INSERT INTO `clic_administrator_menu` VALUES(655, 'index.php?A&Configuration\\TaxRates&TaxRates', 19, 4, 0, 'tax_rates.gif', 0, 'app_configuration_tax_rates', 1);
INSERT INTO `clic_administrator_menu` VALUES(656, 'index.php?A&Configuration\\TaxGeoZones&TaxGeoZones', 19, 5, 0, 'geo_zones.gif', 0, 'app_configuration_tax_geo_zones', 1);
INSERT INTO `clic_administrator_menu` VALUES(657, 'index.php?A&Configuration\\Currency&Currency', 20, 1, 0, 'currencies.gif', 0, 'app_configuration_currency', 1);
INSERT INTO `clic_administrator_menu` VALUES(658, 'index.php?A&Tools\\DataBaseTables&DataBaseTables', 164, 3, 1, 'database_analyse.gif', 0, 'app_tools_data_base_tables', 1);
INSERT INTO `clic_administrator_menu` VALUES(659, 'index.php?A&Configuration\\Administrators&Administrators', 14, 0, 1, 'administrators.gif', 0, 'app_configuration_administrators', 1);
INSERT INTO `clic_administrator_menu` VALUES(663, 'index.php?A&Tools\\Backup&Backup', 164, 3, 1, 'backup.gif', 0, 'app_tools_backup', 1);
INSERT INTO `clic_administrator_menu` VALUES(664, 'index.php?A&Tools\\EditLogError&LogError', 178, 5, 1, 'log.png', 0, 'app_tools_edit_log_error', 1);
INSERT INTO `clic_administrator_menu` VALUES(665, 'index.php?A&Tools\\SecDirPermissions&SecDirPermissions', 178, 30, 1, 'file_manager.gif', 0, 'app_tools_sec_dir_permissions', 1);
INSERT INTO `clic_administrator_menu` VALUES(681, 'index.php?A&Catalog\\Products&Products', 3, 1, 0, 'priceupdate.gif', 0, 'app_catalog_products', 1);
INSERT INTO `clic_administrator_menu` VALUES(719, 'index.php?A&Tools\\SecurityCheck&SecurityCheck', 178, 1, 1, 'cybermarketing.gif', 0, 'app_tools_security_check', 1);
INSERT INTO `clic_administrator_menu` VALUES(725, 'index.php?A&Tools\\Apps&Apps', 727, 3, 0, 'apps.png', 0, 'app_tools_apps', 1);
INSERT INTO `clic_administrator_menu` VALUES(727, '', 163, 5, 1, 'modules.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(728, 'index.php?A&Tools\\ModulesHooks&ModulesHooks', 727, 2, 1, 'hooks.png', 0, 'app_tools_modules_hooks', 1);
INSERT INTO `clic_administrator_menu` VALUES(730, 'index.php?A&Configuration\\Modules&Modules&set=payment', 186, 0, 1, 'modules_payment.gif', 0, NULL, 1);
INSERT INTO `clic_administrator_menu` VALUES(732, 'index.php?A&Configuration\\Languages&Languages', 19, 1, 1, 'languages.gif', 0, 'app_configuration_languages', 1);
INSERT INTO `clic_administrator_menu` VALUES(736, 'index.php?A&Configuration\\Langues&Langues', 20, 1, 1, 'languages.gif', 0, 'app_configuration_langues', 1);
INSERT INTO `clic_administrator_menu` VALUES(737, 'index.php?A&Tools\\ActionsRecorder&ActionsRecorder', 178, 1, 1, 'cadenas.gif', 0, 'app_tools_actions_recorder', 1);
INSERT INTO `clic_administrator_menu` VALUES(738, 'index.php?A&Configuration\\Cache&Cache', 21, 1, 1, 'cache.gif', 0, 'app_configuration_cache', 1);
INSERT INTO `clic_administrator_menu` VALUES(739, 'index.php?A&Tools\\DefineLanguage&DefineLanguage', 170, 1, 1, 'define_language.gif', 0, 'app_tools_define_language', 1);
INSERT INTO `clic_administrator_menu` VALUES(742, 'index.php?A&Tools\\ServiceAPP&ServiceAPP', 727, 2, 1, 'service.png', 0, 'app_tools_modules_service', 1);
INSERT INTO `clic_administrator_menu` VALUES(755, 'index.php?A&Shipping\\Item&Configure&module=IT', 449, 4, 1, 'modules_shipping.gif', 0, 'app_shipping_item', NULL);
INSERT INTO `clic_administrator_menu` VALUES(756, 'index.php?A&Configuration\\Weight&Weight', 20, 4, 1, 'weight.png', 0, 'app_configuration_weight', NULL);
INSERT INTO `clic_administrator_menu` VALUES(758, 'index.php?A&Catalog\\Categories&Categories', 3, 0, 0, 'categorie.gif', 0, 'app_catalog_categories', NULL);
INSERT INTO `clic_administrator_menu` VALUES(766, 'index.php?A&Configuration\\Modules&Modules&set=order_total&list=new', 451, 0, 1, 'modules_order_total.gif', 0, '', NULL);
INSERT INTO `clic_administrator_menu` VALUES(767, 'index.php?A&Configuration\\Modules&Modules&set=payment&list=new', 186, 0, 1, 'modules_payment.gif', 0, '', NULL);
INSERT INTO `clic_administrator_menu` VALUES(768, 'index.php?A&Configuration\\Modules&Modules&set=shipping&list=new', 449, 0, 1, 'modules_shipping.gif', 0, '', NULL);
INSERT INTO `clic_administrator_menu` VALUES(769, '', 2, 4, 1, 'cadenas.gif', 0, '', 1);
INSERT INTO `clic_administrator_menu` VALUES(770, 'index.php?A&Configuration%5CModules&Modules&set=action_recorder&list=new', 769, 1, 1, 'cadenas.gif', 0, '', 1);
INSERT INTO `clic_administrator_menu` VALUES(771, 'index.php?A&Configuration%5CModules&Modules&set=action_recorder&module=ar_admin_login', 769, 2, 1, 'cadenas.gif', 0, '', 1);
INSERT INTO `clic_administrator_menu` VALUES(772, 'index.php?A&Marketing\\Favorites&Favorites', 5, 1, 0, 'products_favorites.png', 0, 'app_marketing_favorites', 1);
INSERT INTO `clic_administrator_menu` VALUES(773, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_favorites', 117, 1, 0, 'products_favorites.png', 0, 'app_marketing_favorites', 1);
INSERT INTO `clic_administrator_menu` VALUES(774, 'index.php?A&Marketing\\Featured&Featured', 5, 1, 0, 'products_featured.png', 0, 'app_marketing_featured', 1);
INSERT INTO `clic_administrator_menu` VALUES(775, 'index.php?A&Configuration\\Modules&Modules&set=modules_products_featured', 117, 1, 0, 'products_featured.png', 0, 'app_marketing_featured', 1);
INSERT INTO `clic_administrator_menu` VALUES(776, 'index.php?A&Configuration\\ProductsLength&ProductsLength', 20, 4, 1, 'products_length.png', 0, 'app_configuration_products_length', NULL);
INSERT INTO `clic_administrator_menu` VALUES(777, 'index.php?A&Marketing\\Specials&Specials', 5, 1, 0, 'specials.gif', 0, 'app_marketing_specials', 1);

-- --------------------------------------------------------

--
-- Structure de la table `clic_administrator_menu_description`
--

DROP TABLE IF EXISTS `clic_administrator_menu_description`;
CREATE TABLE `clic_administrator_menu_description` (
  `id` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_administrator_menu_description`
--

INSERT INTO `clic_administrator_menu_description` VALUES(0, '', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(0, '', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(138, 'Account subscriptions B2B', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(137, 'Account subscriptions B2C', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(1, 'Accueil', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(135, 'Accueil', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(769, 'Action recorder', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(770, 'Action recorder install', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(771, 'Action recorder modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(737, 'Actions recorder', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(737, 'Actions sur les connexions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(11, 'Administration', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(35, 'Administration images', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(33, 'Administration tableau de bord', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(638, 'Administrator menu', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(638, 'Administrator menu', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(659, 'Administrators', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(659, 'Administrators', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(154, 'Advanced search', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(658, 'Analyse BD', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(44, 'API / SSL certificates', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(725, 'Apps', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(725, 'Apps', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(768, 'Apps Expédition', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(766, 'Apps Order total', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(767, 'Apps Paiement', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(767, 'Apps Payment', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(768, 'Apps Shipping', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(766, 'Apps Total commande', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(590, 'Archive products', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(590, 'Archive products', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(75, 'Attributs produit', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(20, 'Autres', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(727, 'Autres modules', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(11, 'Back Office', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(164, 'Backup', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(663, 'Backup BD', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(663, 'Backup BD', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(596, 'Banner Manager', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(158, 'Bas de page du site', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(608, 'Best Products Purchased', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(12, 'Boutique', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(118, 'Boutique Index & catégories', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(156, 'Boxes droites & gauches', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(627, 'Brands', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(738, 'Cache control', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(24, 'Cartes de crédit', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(155, 'Cartographie', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(3, 'Catalog', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(3, 'Catalogue', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(136, 'Categories', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(136, 'Catégories', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(758, 'Categories', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(758, 'Catégories', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(44, 'Certificats SSL / API', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(653, 'Classes de Taxes', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(4, 'Clients', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(583, 'Clients', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(16, 'Clients B2B', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(15, 'Clients B2C', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(633, 'Clients en ligne', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(633, 'Clients en ligne', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(452, 'COD Payment', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(452, 'COD Payment', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(592, 'Commandes', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(587, 'Commentaires', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(6, 'Communication', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(6, 'Communication', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(122, 'Communication', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(122, 'Communication', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(69, 'Website Compression & optimisation', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(119, 'Compte clients', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(140, 'Compte clients', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(2, 'Configuration', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(2, 'Configuration', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(45, 'Configuration', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(45, 'Configuration', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(48, 'Configuration', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(48, 'Configuration', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(125, 'Configuration', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(125, 'Configuration', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(116, 'Configuration Design', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(22, 'Configuration générale', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(144, 'Confirmation', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(144, 'Confirmation', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(139, 'Connexion clients', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(146, 'Contact us', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(738, 'Contrôle du cache', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(652, 'Countries', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(772, 'Coups de coeur', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(138, 'Création compte B2B', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(137, 'Création de compte B2C', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(24, 'Credit Card', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(657, 'Currencies', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(589, 'Customer groups', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(598, 'Customer Orders-Total', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(598, 'Customer Orders-Total', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(4, 'Customers', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(583, 'Customers', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(119, 'Customers Account', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(140, 'Customers account', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(16, 'Customers B2B', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(15, 'Customers B2C', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(46, 'Customers details', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(49, 'Customers details', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(139, 'Customers login', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(33, 'Dashboard administration', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(658, 'Db analyse', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(739, 'DefineLanguage', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(121, 'Description produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(8, 'Design', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(8, 'Design', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(116, 'Design Configuration', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(46, 'Détails Clients', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(49, 'Détails clients', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(657, 'Devises', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(776, 'Dimension produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(123, 'Divers', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(31, 'Download', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(586, 'E-mail', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(586, 'E-mail', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(739, 'Editeur de langues', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(170, 'Editeurs', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(39, 'Edition commandes / factures', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(170, 'Editors', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(30, 'Emails', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(30, 'Emails', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(769, 'Enregistrements actions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(770, 'Enregistrements actions installation', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(157, 'Entête du site', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(150, 'Envoyer à  un ami', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(142, 'Expéditions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(27, 'Expéditions & Bons de commande', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(175, 'Exports / Imports', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(175, 'Exports / Imports', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(42, 'Exports Security', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(644, 'Extensions / Mise à jour', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(644, 'Extensions / Update', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(772, 'Favorites', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(774, 'Featured', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(103, 'Financial statistics', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(626, 'Fournisseurs', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(22, 'General configuration', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(126, 'Gestion des images', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(107, 'Gestion produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(596, 'Gestionnaire de bannières', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(595, 'Gestionnaire de page', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(589, 'Groupes Client', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(69, 'Gzip compression', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(1, 'Home', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(135, 'Home', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(35, 'Images de l\'administration', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(126, 'Images management', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(650, 'Invoices Status PDF', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(736, 'Langages', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(736, 'Languages', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(23, 'Laws & regulations', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(124, 'Layout', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(156, 'Left & right boxes', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(117, 'Listing produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(132, 'Listing Produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(19, 'Location & taxes', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(19, 'Location & taxes', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(664, 'Log Editor', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(664, 'Log Editor', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(70, 'Logging', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(70, 'Logging', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(23, 'Lois & Réglementations', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(13, 'Ma boutique', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(5, 'Marketing', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(5, 'Marketing', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(627, 'Marques', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(26, 'Maximum / minimum values', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(34, 'Maximum / minimum values', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(51, 'Maximum values', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(608, 'Meilleurs produits achetés', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(593, 'Members B2B', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(593, 'Membres B2B', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(59, 'Metas modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(47, 'Minimum values', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(50, 'Minimum values', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(123, 'Miscellaneous', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(451, 'Modules Commandes Total', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(152, 'Modules Commentaires', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(771, 'Modules enregistrements actions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(449, 'Modules Expéditions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(728, 'Modules Hooks', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(728, 'Modules Hooks', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(59, 'Modules metas', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(186, 'Modules Paiement', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(58, 'Modules réseaux sociaux', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(742, 'Modules Services', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(742, 'Modules Services', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(14, 'Mon administration', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(14, 'My backoffice', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(13, 'My store', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(127, 'News', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(581, 'Newsletter', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(581, 'Newsletter', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(146, 'Nous contacter', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(127, 'Nouveautés', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(120, 'Order process', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(145, 'Order success', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(451, 'Order Total Modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(592, 'Orders', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(39, 'Orders / invoices edition', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(651, 'Orders Status', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(134, 'Ordre affichage listing produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(730, 'Ordre de tri des paiements', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(54, 'Ordre de tri expéditions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(55, 'Ordre de tri total commandes', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(727, 'Other modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(20, 'Others', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(163, 'Outils', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(595, 'Page Manager', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(143, 'Paiement', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(141, 'Panier client', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(143, 'Payment', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(186, 'Payment Modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(730, 'Payment sort order', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(652, 'Pays', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(756, 'Poids', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(120, 'Processus de commande', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(75, 'Product attributs', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(681, 'Products', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(121, 'Products description', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(617, 'Products expected', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(617, 'Products expected', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(776, 'Products Length', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(117, 'Products listing', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(132, 'Products Listing', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(134, 'Products listing sort order', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(107, 'Products management', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(616, 'Products notification', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(616, 'Products notification', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(98, 'Products Statistics', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(605, 'Products Stock Level', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(605, 'Products Stock Level', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(609, 'Products viewed', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(681, 'Produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(774, 'Produits sélectionnés', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(609, 'Produits vus', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(130, 'Promotions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(777, 'Promotions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(7, 'Rapports', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(131, 'Recherche', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(154, 'Recherche avancées', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(7, 'Reports', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(587, 'Reviews', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(152, 'Reviews modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(164, 'Sauvegarde', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(131, 'Search', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(178, 'Sécurité', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(42, 'Sécurité exports', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(665, 'Sécurité répertoires', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(178, 'Securities', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(719, 'Security check', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(665, 'Security Directories', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(594, 'SEO', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(594, 'SEO', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(18, 'SEO / Réseaux Sociaux', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(18, 'SEO / Social networking', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(25, 'Seo Url', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(71, 'Sessions', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(71, 'Sessions', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(21, 'Sessions & cache', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(21, 'Sessions & Cache', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(142, 'Shipping', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(27, 'Shipping & Handling', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(449, 'Shipping Modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(54, 'Shipping sort order', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(141, 'Shopping Cart', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(158, 'Site footer', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(157, 'Site header', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(155, 'Sitemap', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(58, 'Social network modules', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(55, 'Sort Order total order', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(130, 'Specials', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(777, 'Specials', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(103, 'Statistiques financières', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(98, 'Statistiques produits', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(650, 'Statut des commandes PDF', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(651, 'Statuts commandes', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(28, 'Stock', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(28, 'Stock', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(12, 'Store', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(118, 'Store index & categories', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(465, 'SubTotal', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(465, 'SubTotal', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(145, 'Succès de commande', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(626, 'Suppliers', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(655, 'Taux de taxe', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(653, 'Tax Classes', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(656, 'Tax geo zones', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(655, 'Tax Rates', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(656, 'Taxes geo zones', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(31, 'Téléchargement', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(150, 'Tell a friend', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(124, 'Template', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(632, 'Template E-mail', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(632, 'Template E-mail', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(163, 'Tools', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(463, 'Total', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(463, 'Total', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(461, 'TotalShipping', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(461, 'TotalShipping', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(464, 'TotalTax', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(464, 'TotalTax', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(647, 'Units quantities status', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(647, 'Units quantities status', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(25, 'Url Seo', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(26, 'Valeur maximum / minimum', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(51, 'Valeurs maximum', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(34, 'Valeurs maximum / minimum', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(47, 'Valeurs minimum', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(50, 'Valeurs minimum', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(719, 'Vérification Sécurité', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(504, 'Web Service', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(504, 'Web Service', 2);
INSERT INTO `clic_administrator_menu_description` VALUES(756, 'Weight', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(654, 'Zones', 1);
INSERT INTO `clic_administrator_menu_description` VALUES(654, 'Zones', 2);

-- --------------------------------------------------------

--
-- Structure de la table `clic_banners`
--

DROP TABLE IF EXISTS `clic_banners`;
CREATE TABLE `clic_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banners_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banners_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banners_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banners_target` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_html_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `languages_id` int(11) NOT NULL DEFAULT '0',
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `banners_title_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_banners`
--

INSERT INTO `clic_banners` VALUES(1, 'Logo', '', 'logos/others/logo_clicshopping.webp', 'Default_multi_template_logo', '_self', '', 0, NULL, NULL, '2018-07-30 18:11:20', NULL, 1, 0, 99, 'Logo');

-- --------------------------------------------------------

--
-- Structure de la table `clic_banners_history`
--

DROP TABLE IF EXISTS `clic_banners_history`;
CREATE TABLE `clic_banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_categories`
--

DROP TABLE IF EXISTS `clic_categories`;
CREATE TABLE `clic_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `virtual_categories` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `customers_group_id` int(11) NOT NULL DEFAULT '99'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_categories_description`
--

DROP TABLE IF EXISTS `clic_categories_description`;
CREATE TABLE `clic_categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `categories_head_title_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_head_desc_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_head_keywords_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_configuration`
--

DROP TABLE IF EXISTS `clic_configuration`;
CREATE TABLE `clic_configuration` (
  `configuration_id` int(11) NOT NULL,
  `configuration_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_function` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_configuration`
--

INSERT INTO `clic_configuration` VALUES(1, 'What is your the store Name', 'STORE_NAME', '', 'Please specify the name of your store.<br /><br /><font color=\"#FF0000\"><b>Note :</b> This name will appear in the content of e-mails</font><br>', 1, 1, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(2, 'Who is the store manager ?', 'STORE_OWNER', '', 'Please specify the name of the manager.<br />', 1, 2, '2008-09-15 09:39:27', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(3, 'What is your e-mail address of the store ?', 'STORE_OWNER_EMAIL_ADDRESS', '', 'Please enter the email that will be used by the store when sending emails address.', 1, 3, '2007-06-02 15:40:42', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(4, '\'From\' field of an email sent', 'EMAIL_FROM', '', 'Field used in the headers of email.<br><br><font color=\"#FF0000\"><b>Note :</b>The e-mail address is built as follows my_department&lt;email@domain.com&gt;</font>', 1, 4, '2007-05-07 12:31:36', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(5, 'Country', 'STORE_COUNTRY', '73', 'The country of residence of the store.<br /><br /><font color=\"#FF0000\"><b>Note :</b> Do not forget also configure zones in the following option<br /></font>', 1, 6, '2008-12-05 19:10:24', '2006-04-09 16:13:47', 'clic_cfg_use_function_get_country_name', 'clic_cfg_set_countries_pull_down_menu');
INSERT INTO `clic_configuration` VALUES(6, 'What is your zone ?', 'STORE_ZONE', '265', 'Zone on the location of the store.<br /><br /><font color=\"#FF0000\"><b>Note :</b> To complete the menu, you can go to the menu \"Location / Taxes\"<br /></font>', 1, 7, '2008-12-05 19:10:33', '2006-04-09 16:13:47', 'clic_cfg_use_funtion_get_zone_name', 'clic_cfg_set_zones_list_pull_down_menu');
INSERT INTO `clic_configuration` VALUES(9, 'Automatic adjustment of currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Automatic change of monetary currency according to the language selected customer.<br /><br />', 1, 10, NULL, '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(10, 'Send a copy of orders on other e-mails addresses', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Send a copy of the order to the address specified.<br /><br /><font color=\"#FF0000\"><b>Note :</b> You can add more with comma separation (invoice&lt;email@domain.com&gt;)<br></font>', 1, 11, '2007-06-02 15:44:29', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(12, 'Do you want to display cart after adding a product', 'DISPLAY_CART', 'true', 'In value <b><i>true</i></b> the store display the contents of the basket after adding a product.<br><br>', 1, 14, NULL, '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(13, 'Allow visitors the recommendation of a product', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'false', 'In value  <b><i>true</i></b> visitors will find a link on the product page to enable it to recommend this product to a friend by sending an email.<br /><br />', 1, 15, NULL, '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(14, 'Default search function', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Please select the search operator that will be used by default.<br /><br /><i>(Value and = Word1 <b>and</b> the word2 - Value or = Word1 <b>or</b> the word2)</i><br />', 1, 17, NULL, '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'and\', \'or\'))');
INSERT INTO `clic_configuration` VALUES(15, 'Specify Name, address, country and such of the store', 'STORE_NAME_ADDRESS', 'Adresse\r\nZip Code - City\r\ntelephone', 'Name, address, country, phone of the store to be used in printing documents and online display.<br />', 1, 18, '2008-09-15 09:39:38', '2006-04-09 16:13:47', NULL, 'clic_cfg_set_textarea_field');
INSERT INTO `clic_configuration` VALUES(17, 'Specify Decimal tax', 'TAX_DECIMAL_PLACES', '2', 'Decimal slot the value of the amount of tax.<br />', 1, 20, '2006-05-31 01:17:46', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(18, 'Do you want to display Prices with taxes', 'DISPLAY_PRICE_WITH_TAX', 'true', 'in value <b><i>true</i></b> Price include all taxes is displayed in false, the price is excluding taxes.<br />', 1, 21, '2007-05-21 14:23:13', '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(19, 'Minimum number of characters for first name', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Minimum number of characters required for the firstname', 16, 1, '2006-10-23 22:49:44', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(20, 'Minimum number of characters for name', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Minimum number of characters required for the family name.', 16, 2, '2006-10-23 22:49:39', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(21, 'Minimum number of characters for date of birth', 'ENTRY_DOB_MIN_LENGTH', '10', 'Minimum number of characters required for the date of birth.', 16, 3, '2006-10-23 01:10:08', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(23, 'Minimum number of characters for address', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '4', 'Minimum number of characters required for the address.', 16, 5, '2006-10-23 01:10:20', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(24, 'Minimum number of characters for company', 'ENTRY_COMPANY_MIN_LENGTH', '0', 'Minimum number of characters required for the company name.', 16, 6, '2006-10-23 01:15:51', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(25, 'Minimum number of characters for zip code', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Minimum number of characters required for zip code.', 16, 7, '2006-10-23 01:10:48', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(26, 'Minimum number of characters for city', 'ENTRY_CITY_MIN_LENGTH', '3', 'Minimum number of characters required for the city.', 16, 8, '2006-10-23 01:10:58', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(27, 'Minimum number of characters for department or state', 'ENTRY_STATE_MIN_LENGTH', '3', 'Minimum number of characters required for the department or state.', 16, 9, '2006-10-23 01:11:12', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(28, 'Minimum number of characters for telephone', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Minimum number of characters required for the phone.', 16, 10, '2006-10-23 22:49:04', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(29, 'Minimum number of characters for password', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Minimum number of characters required for the user password.', 16, 11, '2006-10-23 00:37:27', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(30, 'Minimum number of characters for owner of the credit card', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum number of characters required for the name of the owner of the credit card.', 2, 12, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(31, 'Minimum number of characters for number of credit cards', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum number of characters required for the number of the credit card.', 2, 13, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(32, 'Please specify the minimum number of words that the client must insert in the comments', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum number of characters required for the product reviewed.<br><i> - 10 comments for a minimum of 10 characters</i><br>', 3, 9, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(35, 'Maximum number of characters for number of entries in the address book', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximum number of entries in the address book for a client.', 3, 1, '2006-10-14 15:45:07', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(36, 'Search Result', 'MAX_DISPLAY_SEARCH_RESULTS', '20', 'Quantity of items to display per page.', 3, 2, '2007-04-24 19:02:41', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(53, 'Page View Order History', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Maximum number of historic command to display the page.', 3, 18, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(54, 'Thumbnail or small image: please specify the width', 'SMALL_IMAGE_WIDTH', '130', 'Please specify the number of pixels for the width of the thumbnails or small images', 4, 1, '2007-05-19 16:34:40', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(55, 'Thumbnail or small image: Please specify height', 'SMALL_IMAGE_HEIGHT', '', 'Please specify the number of pixels for the height of the thumbnails or small images', 4, 2, '2007-05-19 16:34:35', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(56, 'Image header, Width', 'HEADING_IMAGE_WIDTH', '100', 'The number of pixels for the width of the image header.', 4, 3, '2007-05-19 16:34:44', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(57, 'Image header, Height', 'HEADING_IMAGE_HEIGHT', '', 'Number of pixels for the height of the header image.', 4, 4, '2007-05-19 16:34:49', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(58, 'Image subcategory, Width', 'SUBCATEGORY_IMAGE_WIDTH', '150', 'Number of pixels for the width of subcategory images.', 4, 5, '2007-05-19 16:34:53', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(59, 'Image subcategory, Height', 'SUBCATEGORY_IMAGE_HEIGHT', '', 'Number of pixels for the height images subcategory.', 4, 6, '2007-05-19 16:34:58', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(60, 'Auto calculation of the size of the images', 'CONFIG_CALCULATE_IMAGE_SIZE', 'false', 'Automatically calculate the image size.<br />', 4, 7, '2007-05-18 05:21:07', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(61, 'Do you want to enable broken image', 'IMAGE_REQUIRED', 'false', 'Display of broken images links (for development).<br />', 4, 8, '2007-05-19 03:31:22', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(62, 'civility <i>(Man & Woman)</i>', 'ACCOUNT_GENDER', 'true', 'Show two checkboxes on civility in the registration form customers.<br />', 5, 1, '2006-10-23 01:15:03', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(63, 'Date of birth', 'ACCOUNT_DOB', 'true', 'Display the date of birth in the registration form for customers.<br />', 5, 2, '2006-10-23 01:15:20', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(64, 'Company', 'ACCOUNT_COMPANY', 'false', 'View company field in the \"My Account\" and the registration form for customers.<br />', 5, 3, '2006-10-23 01:16:20', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(65, 'Additional address', 'ACCOUNT_SUBURB', 'true', 'Show address further in the registration form for customers.<br>', 5, 4, '2006-10-23 01:16:30', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(66, 'State and / or Department', 'ACCOUNT_STATE', 'true', 'Show the department field (state) in the registration form<br>', 5, 5, '2006-10-23 01:17:10', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(84, 'Default currency', 'DEFAULT_CURRENCY', 'EUR', 'Default currency.', 6, 0, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(85, 'Default language', 'DEFAULT_LANGUAGE', 'fr', 'Default language.', 6, 0, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(86, 'Default status for new order', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to him.', 6, 0, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(98, 'Country code store', 'SHIPPING_ORIGIN_COUNTRY', '73', 'Insert the code \"ISO 3166\" Country to calculate shipping costs.', 7, 1, '2016-10-12 17:50:09', '2006-04-09 16:13:48', 'clic_cfg_use_function_get_country_name', 'clic_cfg_set_countries_pull_down_menu');
INSERT INTO `clic_configuration` VALUES(99, 'Postcode store', 'SHIPPING_ORIGIN_ZIP', '93410', 'Enter the zip code of the store to calculate shipping.', 7, 2, '2016-10-12 17:50:00', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(100, 'Maximum weight for the shipping (in Kg)', 'SHIPPING_MAX_WEIGHT', '50', 'Carriers have a maximum weight limit per package. This limitation is common to all.', 7, 3, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(101, 'Tare packaging', 'SHIPPING_BOX_WEIGHT', '0', 'What is the average weight of packaging and packaging parcels small to medium size ?', 7, 4, '2008-09-13 14:57:27', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(102, 'Large packages - Percentage surcharge', 'SHIPPING_BOX_PADDING', '10', '10% surcharge, enter 10.', 7, 5, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(103, 'Do you want to display the product image? ?', 'PRODUCT_LIST_IMAGE', '1', 'In the list of items, do you want to display the product image? ?<br />Please specify a sort order<br /><br /><i>- 0 for no display<br />- 1 for example the first position</i><br />', 0, 1, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(104, 'Do you want to display the sort order for the brand ?', 'PRODUCT_LIST_MANUFACTURER', '0', 'In the products listing, do you want to display the sort order for the brand ?<br />Please specify the sort order<br /><br /><i>- 0 to hide the sort order<br />- 1 to display the sort order</i><br>', 8, 2, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(105, 'Do you want to display the sort order for product model ?', 'PRODUCT_LIST_MODEL', '0', 'In the products listing, do you want to display the sort order for product model ?<br />Please specify the sort order<br /><br /><i>- 0 to hide the sort order<br />- 1 to display the sort order</i><br />', 8, 3, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(106, 'Do you want to display the sort order for the product name ?', 'PRODUCT_LIST_NAME', '2', 'In the products listing, do you want to display the sort order for the product name ?<br />Please specify the sort order<br /><br /><i>- 0 to hide the sort order<br>- 1 to display the sort order</i><br />', 8, 4, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(107, 'Do you want to display the sort order for the product price ?', 'PRODUCT_LIST_PRICE', '3', 'In the products listing, do you want to display the sort order for the product price ?<br />Please specify the sort order<br /><br /><i>- 0 to hide the sort order<br />- 1 to display the sort order</i><br />', 8, 5, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(108, 'Do you want to display the sort order for product stock ?', 'PRODUCT_LIST_QUANTITY', '0', 'In the products listing, do you want to display the sort order for product stock ?<br />Please specify the sort order<br /><br /><i>- 0 to hide the sort order<br />- 1  to display the sort order</i><br />', 8, 6, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(109, 'Do you want to display the sort order for the product weight ?', 'PRODUCT_LIST_WEIGHT', '0', 'In the products listing, do you want to display the sort order for the product weight ?<br />Please specify the sort order<br /><br /><i>- 0 to hide the sort order<br />- 1  to display the sort order</i><br />', 8, 7, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(112, 'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '2', 'Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)?<br /><br /><i>- 1 en haut<br>- 2 pour le bas<br>- 3 pour le haut et le bas</i><br>', 3, 3, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(113, 'Stock Check', 'STOCK_CHECK', 'true', 'Check if the stock level is sufficient.<br />', 9, 1, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(114, 'Count of stock', 'STOCK_LIMITED', 'true', 'Count of stock items ordered.<br />', 9, 2, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(115, 'Authorization purchase out of stock', 'STOCK_ALLOW_CHECKOUT', 'false', 'Allows the customer to order even if an item is not in stock.<br />', 9, 3, '2008-09-14 18:46:31', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(116, 'Showing out of stock the products', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Displays the following note if the product is no longer in stock.', 9, 4, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(117, 'Stock level warning', 'STOCK_REORDER_LEVEL', '5', 'Level alert stock replenishment.', 9, 5, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(118, 'Storage runtime', 'STORE_PAGE_PARSE_TIME', 'false', 'Stores the execution time of a page.<br />', 10, 1, '2007-05-20 01:00:47', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(119, 'File location for the execution stores', 'STORE_PAGE_PARSE_TIME_LOG', '/home/www/site/shop/includes/Work/Log/admin.log', 'Path and file name of the runtime.', 10, 2, '2008-09-15 10:07:36', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(120, 'Date format executions', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'Date format executions.', 10, 3, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(121, 'Display runtime', 'DISPLAY_PAGE_PARSE_TIME', 'false', 'displays the execution time of a page (storage runtime must be enabled and the selected location in the file for the execution storage).<br />', 10, 4, '2007-06-03 16:58:14', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(125, 'Method of transmission of email', 'EMAIL_TRANSPORT', 'sendmail', 'Specifies whether the server uses a local connection to sendmail or SMTP connection via TCP / IP. For Windows Servers and MacOS, you should select SMTP.', 12, 1, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'sendmail\', \'gmail\', \'smtp\'))');
INSERT INTO `clic_configuration` VALUES(126, 'Newline header emails', 'EMAIL_LINEFEED', 'LF', 'Set the characters used to separate headers emails.', 12, 2, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'LF\', \'CRLF\'))');
INSERT INTO `clic_configuration` VALUES(127, 'Use MIME HTML for sending emails', 'EMAIL_USE_HTML', 'false', 'Send emails in html or plain text.<br />', 12, 3, '2008-09-15 22:57:14', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(128, 'Check the email address by the DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Check the email address through a DNS server.<br />', 12, 4, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(129, 'Activation emails', 'SEND_EMAILS', 'true', 'Allow sending emails.<br />', 12, 5, '2008-09-16 10:52:38', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(130, 'Allow downloading', 'DOWNLOAD_ENABLED', 'false', 'Validate the download function of the products.<br />', 13, 1, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(131, 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use redirection for download. Turn off non-UNIX systems.<br />', 13, 2, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(132, 'Timeouts downloads', 'DOWNLOAD_MAX_DAYS', '7', 'Number of days before expiration of download link.<br />(0 for no limit)', 13, 3, NULL, '2006-04-09 16:13:48', NULL, '');
INSERT INTO `clic_configuration` VALUES(133, 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Maximum number of downloads allowed.<br />(0 for none)', 13, 4, NULL, '2006-04-09 16:13:48', NULL, '');
INSERT INTO `clic_configuration` VALUES(134, 'Enable GZip compression', 'GZIP_COMPRESSION', 'true', 'Enable HTTP Compression GZip.<br />', 14, 1, '2006-09-23 01:42:33', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(135, 'Level Compression', 'GZIP_LEVEL', '5', 'Determine the level of compression between 0-9.<br />(0 = minimum, 9 = maximum)<br>Recommended : 5.', 14, 2, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(138, 'Check the session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'false', 'Confirm SSL_SESSION_ID on each page request secure HTTPS.<br />', 15, 3, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(139, 'Check the user', 'SESSION_CHECK_USER_AGENT', 'false', 'Confirm the client browser on each page request.<br />', 15, 4, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(140, 'Check the IP address', 'SESSION_CHECK_IP_ADDRESS', 'false', 'Confirm the IP address of the client on each page request.<br />', 15, 5, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(141, 'Prevent spider sessions', 'SESSION_BLOCK_SPIDERS', 'true', 'Prevent known spiders from starting a session.<br />', 15, 6, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(143, 'Please select the website template', 'SITE_THEMA', 'Default', 'Please select template.<br><br><font color=\"#FF0000\"><b>Note :</b>  To customize your template, you must change the default boostrap template and override by css<br /></font>', 43, 1, '2016-10-15 16:36:55', '2006-04-09 18:20:19', NULL, 'clic_cfg_set_all_template_directory_list_pull_down');
INSERT INTO `clic_configuration` VALUES(144, 'Hide the price for visitors', 'PRICES_LOGGED_IN', 'false', 'Hide the price unregistered visitors.<br />', 17, 3, '2006-04-26 19:36:44', '2001-11-17 11:22:55', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(145, 'Method on price (Discount or Surcharge)', 'B2B', 'false', 'Option <i><b>false</b></i> allows a discount on the price, <i><b>true</b></i> allows a price increase.', 17, 2, '2006-04-11 18:32:13', '2003-10-06 17:24:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(146, 'Approval of professional members', 'MEMBER', 'true', 'Option <i><b>true</b></i> allows a control to approve the creation of new professionals accounts <br /><br /><font color=\"FF0000\"><b>Note :</b> The approval takes place from the Clients menu -> Pending clients</font>', 17, 4, '2006-10-20 00:49:26', '2004-02-26 19:30:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(147, 'Get an e-mail to the registration of a new customer', 'EMAIL_CREAT_ACCOUNT_PRO', 'true', 'Get an email when registering a new customer Business.<br />', 17, 5, '2007-05-05 13:23:32', '2006-04-29 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(148, 'Display the civility <i>(man & woman)</i>', 'ACCOUNT_GENDER_PRO', 'true', 'Display two checkboxes on civility in the registration form.<br />', 18, 1, '2006-10-29 19:49:55', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(149, 'Display the Date of birth', 'ACCOUNT_DOB_PRO', 'true', 'Display the date of birth in the registration form.<br />', 18, 2, '2006-10-29 16:07:10', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(150, 'Display the Company', 'ACCOUNT_COMPANY_PRO', 'true', 'Display company field in the \"My Account\" and the registration form.<br />', 18, 3, '2006-10-29 19:49:34', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(151, 'Display an additional address', 'ACCOUNT_SUBURB_PRO', 'true', 'Display address further in the registration form.<br />', 18, 4, '2006-10-29 19:50:30', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(152, 'Display the state and / or Department', 'ACCOUNT_STATE_PRO', 'true', 'Display the department field (state) in the registration form<br />', 18, 5, '2006-10-29 19:50:57', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(153, 'Display the registration number of the company', 'ACCOUNT_SIRET_PRO', 'false', 'Display the registration number of the company in the registration form des clients <i>(eg for RCS France or Quebec NEQ)</i>.<br />', 18, 6, '2006-10-29 16:04:49', '2006-04-26 14:44:07', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(154, 'Display the nomenclature number of society', 'ACCOUNT_APE_PRO', 'false', 'Display the number of the nomenclature of the company in the registration form <i>(eg : 721Z for APE code in France)</i>.<br />', 18, 7, '2006-10-29 16:05:35', '2006-04-27 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(155, 'Display the VAT number (EU only)', 'ACCOUNT_TVA_INTRACOM_PRO', 'false', 'Display the VAT number in the registration form des clients.<br><br><font color=\"#FF0000\"><b> Note :</b> Valid only for Europe</font>', 18, 8, '2006-10-29 16:05:56', '2006-04-26 14:43:56', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(156, 'Default country to display the dropdown menu', 'ACCOUNT_COUNTRY_PRO', '73', 'Please select the country default to display in the drop-down menu on the registration form.<br />', 18, 9, '2007-03-18 21:43:58', '2006-04-29 00:00:00', 'clic_cfg_use_function_get_country_name', 'clic_cfg_set_countries_pull_down_menu');
INSERT INTO `clic_configuration` VALUES(157, 'Customer group to assign default to new business customers', 'ACCOUNT_GROUP_DEFAULT_PRO', '1', 'Please select customer group assigned by default to new customers.', 18, 10, '2008-08-30 11:55:02', '2006-10-16 00:00:00', 'clic_cfg_use_function_get_customers_group_name', 'clic_cfg_set_customers_group_list_pull_down');
INSERT INTO `clic_configuration` VALUES(158, 'Allow editing on the information society', 'ACCOUNT_MODIFY_PRO', 'true', 'Allow default customers to change <b> <i> Name, Siret number, APE code and VAT number Intracom</i></b> of this company.<br />', 18, 11, '2006-10-15 22:50:18', '2006-04-29 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(159, 'Allow editing of primary billing address', 'ACCOUNT_MODIFY_ADRESS_DEFAULT_PRO', 'true', 'Allow default customers to change the address of its primary address book.<br />', 18, 12, '2006-10-15 22:43:28', '1000-01-01 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(160, 'Allow adding in the address book', 'ACCOUNT_ADRESS_BOOK_PRO', 'true', 'Allow default customers add addresses in his book.<br />', 18, 13, '2006-10-15 22:50:21', '2006-05-01 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(161, 'Minimum number of characters for the first name', 'ENTRY_FIRST_NAME_PRO_MIN_LENGTH', '2', 'Minimum number of characters required for the first.', 19, 1, '2006-10-29 22:51:30', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(162, 'Minimum number of characters for the name', 'ENTRY_LAST_NAME_PRO_MIN_LENGTH', '2', 'Minimum number of characters required for the name.', 19, 2, '2006-10-29 22:30:18', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(163, 'Minimum number of characters for the date of birth', 'ENTRY_DOB_PRO_MIN_LENGTH', '10', 'Minimum number of characters for the date of birth.', 19, 3, NULL, '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(165, 'Minimum number of characters for the address', 'ENTRY_STREET_ADDRESS_PRO_MIN_LENGTH', '3', 'Minimum number of characters for the address.', 19, 5, '2006-10-29 22:30:35', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(166, 'Minimum number of characters for the company', 'ENTRY_COMPANY_PRO_MIN_LENGTH', '4', 'Minimum number of characters for the company.', 19, 6, '2006-10-29 16:08:26', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(167, 'Minimum number of characters for the registration number of the company', 'ENTRY_SIRET_MIN_LENGTH', '14', 'Minimum number of characters required for the registration number of the company.<br><br><i>(eg for RCS France or Quebec NEQ)</i>', 19, 7, '2006-10-29 16:09:04', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(168, 'Minimum number of characters for the nomenclature number of the company', 'ENTRY_CODE_APE_MIN_LENGTH', '4', 'Minimum number of characters required for the nomenclature of the company.<br><br><i>(eg 721Z for APE code in France)</i>', 19, 8, '2006-10-29 16:09:50', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(169, 'Minimum number of characters for the VAT number (EU only)', 'ENTRY_TVA_INTRACOM_MIN_LENGTH', '14', 'Minimum number of characters required for the VAT number (excluding the ISO country code is automatically indicated).<br /><br /><font color=\"#FF0000\"><b> Note :</b> Valid only for europe</font>', 19, 9, '2006-10-29 16:10:35', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(170, 'Minimum number of characters for the ZIP code', 'ENTRY_POSTCODE_PRO_MIN_LENGTH', '3', 'Minimum number of characters for the ZIP code.', 19, 10, '2006-10-29 22:31:16', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(171, 'Minimum number of characters for the city', 'ENTRY_CITY_PRO_MIN_LENGTH', '3', 'Minimum number of characters for the city.', 19, 11, '2006-10-29 22:31:31', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(172, 'Minimum number of characters for the department or state', 'ENTRY_STATE_PRO_MIN_LENGTH', '3', 'Minimum number of characters for the department or state.', 19, 12, '2006-10-29 22:31:47', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(173, 'Minimum number of characters for the phone', 'ENTRY_TELEPHONE_PRO_MIN_LENGTH', '3', 'Minimum number of characters for the phone.', 19, 13, '2006-10-29 16:21:09', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(174, 'Minimum number of characters for the password', 'ENTRY_PASSWORD_PRO_MIN_LENGTH', '5', 'Minimum number of characters for the password.', 19, 14, NULL, '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(175, 'Maximum number of characters for the  company name', 'ENTRY_COMPANY_PRO_MAX_LENGTH', '128', 'Maximum number of characters for the  company name.', 20, 1, '2006-10-29 15:21:20', '2006-10-29 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(176, 'Maximum number of characters for the registration of the company', 'ENTRY_SIRET_MAX_LENGTH', '14', 'Maximum number of characters for the registration of the company.<br><br><i>(eg for RCS France or Quebec NEQ)</i>', 20, 2, '2006-10-29 15:21:14', '2006-10-29 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(177, 'Maximum number of characters for the nomenclature of the company', 'ENTRY_CODE_APE_MAX_LENGTH', '4', 'Maximum number of characters for the nomenclature of the company.<br><br><i>(eg 721Z for APE code in France)</i>', 20, 3, '2006-10-29 15:21:06', '2006-10-29 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(178, 'Maximum number of characters for the EU VAT (Europe only)', 'ENTRY_TVA_INTRACOM_MAX_LENGTH', '14', 'Maximum number of characters for the EU VAT (excluding the ISO country code is automatically indicated).<br><br><font color=\"#FF0000\"><b> Note :</b> Valide uniquement pour l\'europe</font>', 20, 4, '2006-10-29 15:20:57', '2006-10-29 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(209, 'Installed Modules', '', '', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2006-08-21 23:28:24', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(234, 'Please indicate the maximum number of rows you want to displayed in the list of administration', 'MAX_DISPLAY_SEARCH_RESULTS_ADMIN', '20', 'Affiche un nombre de ligne maximale dans afficher dans les listing de l\'administration', 21, NULL, '2007-06-03 13:09:14', '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(235, 'Receive emails Registered customers', 'EMAIL_INFORMA_ACCOUNT_ADMIN', 'true', 'Do you want to receive the registration email clients in the creation of his account ?<br />', 22, 1, '2007-05-05 13:33:01', '1000-01-01 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(236, 'Last Database Restore', 'DB_LAST_RESTORE', 'ClicShopping_05_05_2007_v2.sql', 'Last database restore file', 6, 0, '1000-01-01 00:00:00', '2007-05-07 10:12:36', '', '');
INSERT INTO `clic_configuration` VALUES(318, 'Store Administration to use (B2C, B2B or B2C/B2B)', 'MODE_MANAGEMENT_B2C_B2B', 'B2C_B2B', 'Please select below the setup mode to use for the registration of your clients and the operation of the store.', 17, 1, '2008-09-14 20:47:30', '2007-06-24 02:52:29', NULL, 'clic_cfg_set_boolean_value(array(\'B2C\', \'B2B\', \'B2C_B2B\'))');
INSERT INTO `clic_configuration` VALUES(320, 'Are you in a country managing a double tax sale ?', 'DISPLAY_DOUBLE_TAXE', 'false', 'Position <i>True</i> you can manage 2 taxes (eg Federalists States - Province / Federal) on your bill. <br />', 25, 2, '2008-09-15 18:41:51', '2007-07-15 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(321, 'Do you want to display the \"Accept the general conditions\"', 'DISPLAY_CONDITIONS_ON_CHECKOUT', 'true', 'Would you like to view the terms and conditions of purchase during the checkout process ?<br />', 25, 3, NULL, '2007-07-15 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(322, 'Do you want to display the terms of confidentiality to create an account', 'DISPLAY_PRIVACY_CONDITIONS', 'true', 'Do you want to see the conditions of privacy during the process of account creation ?<br />', 25, 4, NULL, '2007-07-15 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(323, 'URL terms of sale', 'SHOP_CODE_URL_CONDITIONS_VENTE', 'index.php?Info&Content&pagesId=4', 'Please indicate the URL terms of sale.', 25, 5, NULL, '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(324, 'URL Privacy Policy', 'SHOP_CODE_URL_CONFIDENTIALITY', 'index.php?Info&Content&pagesId=5', 'Please indicate the URL of the Privacy Policy.', 25, 6, NULL, '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(325, 'Capital of the company', 'SHOP_CODE_CAPITAL', 'SARL au capital de 4000 €', 'Please indicate your company\'s capital.', 25, 7, '2008-09-15 11:45:32', '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(326, 'Intracommunity VAT of the Company (Europe only)', 'TVA_SHOP_INTRACOM', 'TVA Intracommunautaire : FR14568557555', 'Please indicate your company\'s VAT registration.<br/ ><br />- <i>Leave blank if it does not apply to you.</i>', 25, 8, NULL, '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(327, 'Number of provincial tax', 'TVA_SHOP_PROVINCIAL', 'TPS/GST : R127066546', 'Please indicate the administrative number of the provincial tax (ex : TPS/GST : R127066546).<br /><br />- <i>Leave blank if it does not apply to you.</i>', 25, 9, NULL, '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(328, 'Number of federal tax', 'TVA_SHOP_FEDERAL', 'TVQ/QST : 1006197104', 'Please specify the number of administrative federal tax(ex TVQ/QST : 1006197104).<br /><br />- <i>Leave blank if it does not apply to you.</i>', 25, 10, NULL, '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(330, 'Registration number of the company', 'SHOP_CODE_RCS', 'RCS : 1234567', 'Please specify the registration number of your company (ex RCS : 1234567).<br /><br />- <i>Leave blank if it does not apply to you.</i>', 25, 11, '2008-09-15 09:46:19', '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(331, 'Nomenclature number (or otherwise) of the company', 'SHOP_CODE_APE', 'Code APE : 721Z', 'Please specify the number of the Nomenclature of your company (ex : Code APE : 721z).<br /><br />- <i>Leave blank if it does not apply to you.</i>', 25, 12, NULL, '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(332, 'Legal information on invoices', 'SHOP_DIVERS', '', 'Other legal information to be included on invoices.<br /><br />- <i>Leave blank if it does not apply to you.</i>', 25, 13, NULL, '2007-07-15 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(333, 'Display near the price an indication of the type of tax', 'DISPLAY_PRODUCT_PRICE_VALUE_TAX', 'false', 'display after price an indication if the product price is taxed (eg VAT) or not taxed (eg VAT).<br />', 22, 2, '2018-07-31 22:28:53', '2008-04-14 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(334, 'Display near the price of a indiquation tax type (for customer groups)', 'DISPLAY_PRODUCT_PRICE_VALUE_TAX_PRO', 'true', 'Display near the  price if the product price is taxed (eg VAT) or untaxed(ex: HT) for customer groups.<br />', 17, 6, NULL, '2008-04-14 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(336, 'Do you want to remove the header of PDF invoices and delivery notes', 'DISPLAY_INVOICE_HEADER', 'false', 'If yes (True) then the header will be deleted invoices.<br />', 26, 2, NULL, '2007-07-15 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(337, 'Do you want to remove footer of PDF invoices and delivery notes', 'DISPLAY_INVOICE_FOOTER', 'false', 'If yes (True) then the footer of invoices will be deleted.<br />', 26, 3, NULL, '2007-07-15 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(338, 'Filename of the logo to appear on the invoice and delivery notes', 'INVOICE_LOGO', 'invoice_logo.png', 'Please specify the name of your logo.<br /><br /><font color=\"#FF0000\"><b>Note :</b> our logo (gif, jpg, png) must be inserted in the directory image/logo/invoice.<br />Be careful its height</font>', 7, 6, '2006-10-23 22:49:44', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(339, 'Order status to display invoices', 'INVOICE_DISPLAY_ORDER_STATUT', '1', 'Please select below the default status that will allow to print invoices.<br><br><font color=\"#FF0000\"><b>Note :</b> Other articles will print a purchase order.</font><br />', 26, 5, '2008-06-23 23:42:37', '2008-06-23 00:00:00', 'clic_cfg_use_get_order_status_title', 'clic_cfg_set_order_statuses_pull_down_menu');
INSERT INTO `clic_configuration` VALUES(340, 'Display Method bills', 'INVOICE_DISPLAY_ORDER', 'true', 'On yes (true) you will have the ability to display purchase orders and invoices by status configured by default.<br />', 26, 4, '2008-06-23 23:15:21', '2008-06-23 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(341, 'ClicShopping Version', 'PROJECT_VERSION', 'ClicShopping est une marque déposée (INPI : 3810384) V2.55 -  All right Reserved - ', 'Name and version ClicShopping', 0, NULL, NULL, '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(342, 'Specify the maximum quantity that the customer can order in his basket', 'MAX_QTY_IN_CART', '99', 'Insert a maximum quantity that the customer can put in the basket for an order.<br><i> - 0 for no limit</i><br />', 3, 19, NULL, '2008-08-30 10:21:58', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(356, 'Please enter your delivery time by defaults to indicate at your customers', 'DISPLAY_SHIPPING_DELAY', '4 days', 'Please indicate your delivery time products to your customer by default<br><br>.<b>Note :</b><br /><i>- For France this information is mandatory (laws Chatel)</i>', 25, 14, '2006-10-23 22:49:44', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(357, 'Default state for an edition of invoice / order PDF', 'DEFAULT_ORDERS_STATUS_INVOICE_ID', '1', 'When a new generation editing invoice / order PDF is created, his order status will be assigned to it.', 6, 0, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(376, 'Installed Modules', 'MODULE_PAYMENT_INSTALLED', 'Payment\\COD\\CO', 'This is automatically updated. No need to edit.', 6, 0, '2016-10-12 17:47:24', '2008-09-16 16:13:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(377, 'Specify the minimum quantity that the customer can insert in his basket', 'MAX_MIN_IN_CART', '1', 'Insert a minimum default quantity that the customer must put in the basket for an order.<br><br><i> - 1 : for a default quantity</i></br><br><i> - 0 : prevents all orders made ​​on the site by users (not recommended)</i>', 3, 19, NULL, '2008-08-30 10:21:58', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(399, 'Installed Modules', 'MODULE_SHIPPING_INSTALLED', 'Shipping\\Item\\IT', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 08:58:19', '2008-12-05 19:09:42', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(433, 'Installed Modules', 'MODULE_ORDER_TOTAL_INSTALLED', 'OrderTotal\\SubTotal\\ST;OrderTotal\\TotalShipping\\SH;OrderTotal\\TotalTax\\TX;OrderTotal\\Total\\TO', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 08:57:47', '2008-12-05 19:10:43', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(445, 'Coupon number assigned to the customer during the account creation', 'COUPON_CUSTOMER', '', 'For any change in the coupon code, please refer to the Marketing / coupon section of your menu', 0, NULL, NULL, '1000-01-01 00:00:00', ' ', NULL);
INSERT INTO `clic_configuration` VALUES(446, 'Coupon number assigned to the customer during the account creation B2B', 'COUPON_CUSTOMER_B2B', '', 'For any change in the coupon code, please refer to the Marketing / coupon section of your menu', 0, NULL, NULL, '1000-01-01 00:00:00', ' ', NULL);
INSERT INTO `clic_configuration` VALUES(456, 'Do you want to receive an email alert for the setting of stock Alert ?', 'STOCK_ALERT_PRODUCT_REORDER_LEVEL', 'false', 'An email alert will be sent if the stock reaches its alert level ?<br />', 9, 6, NULL, '1000-01-01 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(457, 'Do You want to receive an email alert for exhausted products  ?', 'STOCK_ALERT_PRODUCT_EXHAUSTED', 'false', 'An email alert will be sent if the stock is below 0 ?<br />', 9, 7, NULL, '1000-01-01 00:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(460, 'Do you want to insert a security code to export files xml, txt, csv generated ?', 'EXPORT_CODE', 'Gh87yDE', 'This code allows access to data import by people or robots that are allowed to perform this operation. We strongly recommend that you change the source code and create a complex (letters and numbers).', 36, 1, NULL, '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(462, 'Specify the number of days you want to see the little icon appear next to your new products ?', 'DAY_NEW_PRODUCTS_ARRIVAL', '30', 'Please indicate the number of days you want to display a small icon \"new\". <br> In terms of the number of days, the icon will not be displayed<br />', 3, 9, NULL, '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(503, 'Small image height for administration', 'SMALL_IMAGE_HEIGHT_ADMIN', '70', 'Number of pixels for the height of the small images articles.', 23, 8, '2018-07-31 16:45:06', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(504, 'Small Image width administration', 'SMALL_IMAGE_WIDTH_ADMIN', '70', 'The number of pixels for the width of the header image.', 23, 9, '2018-07-31 16:45:11', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(505, 'Modules installed', 'MODULE_ACTION_RECORDER_INSTALLED', 'ar_admin_login.php;ar_contact_us.php;ar_create_account.php;ar_create_account_pro.php;ar_reset_password.php;ar_tell_a_friend.php', 'liste des actions enregistrées concernant les modules (séparés par des points virgules). Mise à jour automatique. Ce n\'est pas utile de l\'editer.', 6, 0, '2019-01-16 19:05:53', '2010-07-21 19:21:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(531, 'Installed Template Block Groups', 'TEMPLATE_BLOCK_GROUPS', 'header_tags;modules_account_customers;modules_advanced_search;modules_boxes;modules_checkout_confirmation;modules_checkout_payment;modules_checkout_shipping;modules_checkout_success;modules_contact_us;modules_create_account;modules_create_account_pro;modules_footer;modules_footer_suffix;modules_front_page;modules_header;modules_index_categories;modules_login;modules_products_favorites;modules_products_featured;modules_products_info;modules_products_listing;modules_products_new;modules_products_reviews;modules_products_search;modules_products_special;modules_shopping_cart;modules_sitemap;modules_tell_a_friend', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:43:58', '2010-11-12 21:28:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(534, 'Installed Modules', 'MODULE_BOXES_INSTALLED', '', 'List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2011-01-17 19:45:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(536, 'Please indicate the type of default prefix for the model of the product', 'CONFIGURATION_PREFIX_MODEL', 'REF-', 'Please indicate the type of default prefix that you want on the product number.<br /><br /><i>ex : product model : <b>REF-</b>product number ', 7, 7, NULL, '2011-01-17 19:45:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(538, 'Do you want to show mobile phone', 'ACCOUNT_CELLULAR_PHONE', 'false', 'Display the the field cell phone number in the \"My Account\" and the registration form.<br />', 5, 6, '2006-10-23 01:16:20', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(540, 'Do you want to  display mobile phone ?', 'ACCOUNT_CELLULAR_PHONE_PRO', 'false', 'Display the the field cell phone number in the \"My Account\" and the registration form.<br />', 18, 161, '2006-10-23 01:16:20', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(542, 'Please indicate the color in RGB text editing invoices / orders', 'INVOICE_RGB', '158,11,14', 'Veuillez indiquer la couleur du texte au format RGB<br><br><font color=\"#FF0000\"><b>Note :</b>Each number must be separated by a comma(ex : 0,0,0 for the black)</font><br>', 26, 5, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(544, 'Default status for orders by type of quantity', 'DEFAULT_PRODUCTS_QUANTITY_UNIT_STATUS_ID', '1', 'When a new type of quantity is created, this status will be assigned.', 6, 0, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(562, 'Please indicate the maximum number of attributes to display in the file setting attributes', 'MAX_ROW_LISTS_OPTIONS', '17', 'Please indicate the maximum number of attributes to display', 21, 2, '1000-01-01 00:00:00', '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(567, 'Website module installed', 'WEBSITE_MODULE_INSTALLED', '1', 'Verification si le site contient un module installe ou pas', 0, 0, NULL, '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(577, 'Do you want to manage the manual setup of images in the product description page', 'MANUAL_IMAGE_PRODUCTS_DESCRIPTION', 'false', 'The display of the image in manual will allow you to have better manage your images in the visual part of the product description and access to a gallery of images.<br />', 23, 3, '2007-05-21 14:23:13', '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(579, 'Image Medium: please specify the width in the product description page', 'MEDIUM_IMAGE_WIDTH', '250', 'Please indicate the number of pixels for the width of the average images in the page description of the items', 4, 11, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(580, 'Image Medium: please specify the height in the product description page', 'MEDIUM_IMAGE_HEIGHT', '', 'Please indicate the number of pixels for the height of the average images in the page description of the items', 4, 12, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(581, 'Image Zoom: please specify the width in the product description page', 'BIG_IMAGE_WIDTH', '640', 'Please indicate the number of pixels for the width of the zoom images in the page description of the items', 4, 13, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(582, 'Image Zoom: please specify the height in the product description page', 'BIG_IMAGE_HEIGHT', '', 'Please specify the number of pixels for the height of the zoom images in the page description of the items', 4, 14, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(587, 'Display a department of the company in the Contact Us form', 'CONTACT_DEPARTMENT_LIST', '', 'Please indicate which departments to contact which will be listed in the Contact Us form.<br /><br /> <font color=\"#FF0000\"><strong>Notes :</strong></font> <br /><br />- the list of departments must be under the form <strong>Departement&lt;departement1@mondomaine.com&gt;, Departement2&lt;departement2@mondomaine.com&gt; separated by a comma</strong><br />- The default Receive email is your contact email Store</font><br />', 1, 5, NULL, '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(588, 'Default status for tracking shipments', 'DEFAULT_ORDERS_STATUS_TRACKING_ID', '1', 'When a new generation editing invoice / order PDF is created,status tracking will be assigned to it.', 0, 6, '1000-01-01 00:00:00', '1000-01-01 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(589, 'Do you want allow pre-order products if the authorization off stock purchases is True (under test)', 'PRE_ORDER_AUTORISATION', 'false', 'Si vous autorisez la pré-commande, the button exhausted product will not appear anymore and the customer will spend his pre-order.<br />', 9, 3, '2007-05-21 14:23:13', '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(590, 'Receive an email if a customer makes a comment', 'REVIEW_COMMENT_SEND_EMAIL', 'false', 'If the client makes a comment on a product you will receive an email alert.<br />', 1, 14, NULL, '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(594, 'Size of site columns', 'GRID_CONTAINER_WITH', '12', 'Please enter a numeric value.', 43, 5, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(595, 'Column Size Site Content', 'GRID_CONTENT_WITH', '8', 'Please enter a numeric value.', 43, 6, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(599, 'Installed Modules', 'MODULE_MODULES_PRODUCTS_NEW_INSTALLED', 'pn_products_new.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 22:46:27', '2013-09-01 11:31:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(601, 'Do you want to display the price if it is equal to 0', 'NOT_DISPLAY_PRICE_ZERO', 'true', 'Display or not the price of the product if it is equal to 0.<br />', 22, 2, NULL, '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(602, 'Please indicate the maximum number of scores you want to display', 'MAX_DISPLAY_NEW_REVIEWS', '5', 'Please enter a numeric value.', 3, 8, '2007-06-02 15:39:18', '2006-04-09 16:13:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(603, 'Installed Modules', 'MODULE_ADMIN_DASHBOARD_INSTALLED', '', 'This is automatically updated. No need to edit.', 6, 0, '2016-10-15 14:46:08', '2013-12-16 18:11:51', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(623, 'Installed Modules', 'MODULE_MODULES_HEADER_INSTALLED', 'he_header_noscript.php;he_header_message_stack.php;he_header_multi_template.php;he_header_page_manager_header_menu.php', 'This is automatically updated. No need to edit.', 6, 0, '2019-01-16 19:07:19', '2014-02-07 20:01:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(624, 'Installed Modules', 'MODULE_MODULES_FOOTER_INSTALLED', 'fo_footer_page_manager.php;fo_footer_multi_template.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 09:33:37', '2014-02-07 20:01:20', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(625, 'Installed Modules', 'MODULE_MODULES_ADVANCED_SEARCH_INSTALLED', 'as_advanced_search_criteria.php;as_advanced_search_categories.php;as_advanced_search_manufacturers.php;as_advanced_search_price.php;as_advanced_search_date.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 08:52:02', '2014-02-07 20:01:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(626, 'Installed Modules', 'MODULE_MODULES_SITEMAP_INSTALLED', 'si_sitemap_summary.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 09:06:08', '2014-02-07 20:01:25', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(627, 'Installed Modules', 'MODULE_MODULES_CONTACT_US_INSTALLED', 'co_contact_us_page_manager.php;co_contact_us_form.php;co_contact_us_privacy_condition.php;co_contact_us_form_button_process.php;co_contact_us_success.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-10-10 15:13:57', '2014-02-07 20:01:28', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(630, 'Installed Modules', 'MODULE_MODULES_PRODUCTS_INFO_INSTALLED', 'pi_products_info_name.php;pi_products_info_model.php;pi_products_info_gallery.php;pi_products_info_description.php;pi_products_info_options.php;pi_products_info_date_available.php;pi_products_info_price.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 11:52:34', '2014-02-07 20:01:42', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(631, 'Installed Modules', 'MODULE_MODULES_SHOPPING_CART_INSTALLED', 'ms_shopping_cart_products_listing.php;ms_shopping_cart_show_total.php;ms_shopping_cart_out_of_stock_message.php;ms_shopping_cart_order_button_process.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-08-01 11:29:16', '2014-02-07 20:01:44', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(632, 'Installed Modules', 'MODULE_MODULES_CHECKOUT_SHIPPING_INSTALLED', 'cs_checkout_shipping_address.php;cs_checkout_shipping_listing.php;cs_checkout_shipping_comment.php;cs_checkout_shipping_button_process.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:00:11', '2014-02-07 20:01:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(633, 'Installed Modules', 'MODULE_MODULES_CHECKOUT_PAYMENT_INSTALLED', 'cp_checkout_payment_address.php;cp_checkout_payment_listing.php;cp_checkout_payment_comment.php;cp_checkout_payment_agreement.php;cp_checkout_payment_button_process.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:00:45', '2014-02-07 20:01:56', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(634, 'Installed Modules', 'MODULE_MODULES_CHECKOUT_CONFIRMATION_INSTALLED', 'cc_checkout_confirmation_delivery_address.php;cc_checkout_confirmation_billing_address.php;cc_checkout_confirmation_products_listing.php;cc_checkout_confirmation_order_total.php;cc_checkout_confirmation_customers_comment.php;cc_checkout_confirmation_payment_information.php;cc_checkout_confirmation_law_hamon.php;cc_checkout_confirmation_process_order.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:01:47', '2014-02-07 20:02:03', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(635, 'Installed Modules', 'MODULE_MODULES_CHECKOUT_SUCCESS_INSTALLED', 'chs_thank_you.php;chs_product_notifications.php;chs_downloads.php;chs_redirect_old_order.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:02:14', '2014-02-07 20:02:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(636, 'Installed Modules', 'MODULE_MODULES_FRONT_PAGE_INSTALLED', 'fp_page_manager.php;fp_new_products.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 18:48:54', '2014-02-07 20:02:11', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(637, 'Installed Modules', 'MODULE_MODULES_INDEX_CATEGORIES_INSTALLED', 'mc_categories_name.php;mc_new_products.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 21:35:32', '2014-02-07 20:02:13', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(638, 'Installed Modules', 'MODULE_MODULES_LOGIN_INSTALLED', 'ml_login_connexion.php;ml_login_mode_b2b_b2c.php;ml_login_mode_b2b.php;ml_login_mode_b2c.php;ml_login_password_forgotten.php;ml_login_password_reset.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 14:31:52', '2014-02-07 20:02:15', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(639, 'Installed Modules', 'MODULE_MODULES_ACCOUNT_CUSTOMERS_INSTALLED', 'ac_account_customers_list_order.php;ac_account_customers_my_account.php;ac_account_customers_history_info_address.php;ac_account_customers_history_info_invoice.php;ac_account_customers_history_info_order_comment.php;ac_account_customers_history_info_invoice_pdf.php;ac_account_customers_delete.php;ac_account_customers_edit.php;ac_account_customers_gdpr.php;ac_account_customers_history.php;ac_account_customers_history_info_button_back.php;ac_account_customers_history_info_download.php;ac_account_customers_mailing.php;ac_account_customers_newsletter.php;ac_account_customers_notifications.php;ac_account_customers_password.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:51:35', '2014-02-07 20:02:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(640, 'Installed Modules', 'MODULE_MODULES_PRODUCTS_FAVORITES_INSTALLED', '', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2014-02-07 20:02:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(641, 'Installed Modules', 'MODULE_MODULES_PRODUCTS_SPECIAL_INSTALLED', 'ps_products_special.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 22:48:57', '2014-02-07 20:02:26', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(642, 'Minimum number of characters for the Mobile Phone', 'ENTRY_CELLULAR_PHONE_MIN_LENGTH', '3', 'inimum number of characters for the Mobile Phone.', 16, 10, '2006-10-23 22:49:04', '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(643, 'Minimum number of characters for the Mobile Phone', 'ENTRY_CELLULAR_PHONE_PRO_MIN_LENGTH', '3', 'Minimum number of characters for the Mobile Phone.', 19, 13, '2006-10-29 16:21:09', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(644, 'Minimum number of characters for the provincial tax', 'ENTRY_CODE_TAXE_PROVINCIALE_MIN_LENGTH', '3', 'Minimum number of characters for the provincial tax.', 19, 15, '2006-10-29 16:21:09', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(645, 'Minimum number of characters for the federal tax', 'ENTRY_CODE_TAXE_FEDERALE_MIN_LENGTH', '3', 'Minimum number of characters for the federal tax.', 19, 16, '2006-10-29 16:21:09', '2006-10-19 00:00:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(646, 'Installed Modules', 'MODULE_HEADER_TAGS_INSTALLED', 'ht_googlefont.php;ht_breadcrumb.php', 'This is automatically updated. No need to edit.', 6, 0, '2019-01-16 19:37:07', '2014-02-07 20:07:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(647, 'Do you want to display the acceptance of the order by the consumer', 'CONFIGURATION_LAW_HAMON', 'true', 'Confirmation_button_process requires the consumer to accept its order. Do you want to display ?', 25, 3, NULL, '2006-04-09 16:13:47', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(649, 'SMTP hosts', 'EMAIL_SMTP_HOSTS', 'smtp.gmail.com', 'Assign SMTP host senders', 12, 6, '2016-10-11 21:51:18', '2014-05-16 11:19:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(650, 'SMTP authentication', 'EMAIL_SMTP_AUTHENTICATION', 'true', 'Do you want authenticated SMTP server?', 12, 7, NULL, '2014-05-16 11:19:59', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(651, 'SMTP Password', 'EMAIL_SMTP_PASSWORD', '', 'Add SMTP Password for SMTP protocol', 12, 8, '2016-10-11 21:51:40', '2014-05-16 11:19:59', 'clic_cfg_use_function_password', 'clic_cfg_set_input_password');
INSERT INTO `clic_configuration` VALUES(652, 'SMTP User Name', 'EMAIL_SMTP_USER', '', 'Add a user for the SMTP protocol', 12, 9, '2016-10-11 21:51:30', '2014-05-16 11:21:13', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(653, 'SMTP Reply To', 'EMAIL_SMTP_REPLYTO', '', 'Add SMTP reply to address', 12, 10, NULL, '2014-05-16 11:19:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(654, 'Do you want to use the SMTP secured protocol', 'EMAIL_SMTP_SECURE', 'no', 'use a secured SMTP protocol', 12, 11, NULL, '2014-06-02 11:52:39', NULL, 'clic_cfg_set_boolean_value(array(\'no\', \'ssl\', \'tls\'))');
INSERT INTO `clic_configuration` VALUES(655, 'Do you want the SMTP port', 'EMAIL_SMTP_PORT', '25', ' In function of your provider, the smtp can another value', 12, 12, NULL, '2014-06-02 11:52:39', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(656, 'Do you want to be in open sales ou private sales ?', 'MODE_VENTE_PRIVEE', 'false', 'If your choice is true, all the customer must create an account to access at catalog sur les mode B2B/B2C - B2C- B2C)', 22, 2, NULL, '2014-08-20 15:51:12', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(687, 'What type of container should the page content (full-size or centered)', 'BOOTSTRAP_CONTAINER', 'container-fluid', 'Please, select your preference <br />(More information on : https://getbootstrap.com/docs/4.4/examples/grid/#containers)', 43, 1, '2016-10-11 17:07:12', '2015-02-19 21:39:51', NULL, 'clic_cfg_set_boolean_value(array(\'container\', \'container-fluid\', \'container-sm\', \'container-md\', \'container-lg\', \'.container-xl\'))');
INSERT INTO `clic_configuration` VALUES(689, 'Do you want to display the sort order by the product date ?', 'PRODUCT_LIST_DATE', '0', 'In the products listing, do you want to display the sort order by product date ?<br />Please specify the sort order<br /><br /><i>- 0 to hide the sort order<br />- 1  to display the sort order</i><br />', 8, 3, NULL, '2006-04-09 16:13:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(690, 'Installed Modules', 'MODULE_MODULES_FOOTER_SUFFIX_INSTALLED', 'sf_footer_suffix_copyright.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 12:07:12', '2015-04-05 11:16:27', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(695, 'Use Search-Engine Safe Native URLs', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', 34, 1, NULL, '2016-07-05 18:04:07', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(698, 'Verify SSL Certificates', 'CLICSHOPPING_HTTP_VERIFY_SSL', 'True', 'Verify SSL Certificates when making HTTPS API calls', 45, 1, NULL, '2018-07-29 16:22:38', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(699, 'Proxy', 'CLICSHOPPING_HTTP_PROXY', '', 'Send API requests through this proxy server (host:port, eg: proxy-server:8080)', 45, 2, NULL, '2018-07-29 16:22:38', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(700, 'Do you want to display State / Department dropown ?', 'ACCOUNT_STATE_DROPDOWN', 'true', 'Display departments or states when you select a country<br>', 5, 5, NULL, '2018-07-29 16:22:38', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(701, 'Default Shipping Unit', 'SHIPPING_WEIGHT_UNIT', '2', 'Select the unit of weight to be used for shipping', 7, 6, '2006-10-23 01:17:10', '2006-04-09 16:13:48', 'clic_cfg_use_get_weight_title', 'clic_cfg_set_weight_classes_pulldown_menu');
INSERT INTO `clic_configuration` VALUES(710, 'Status', 'CLICSHOPPING_APP_PRODUCTS_QUANTITY_UNIT_PQ_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 08:50:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(711, 'Sort Order', 'CLICSHOPPING_APP_PRODUCTS_QUANTITY_UNIT_PQ_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 08:50:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(712, 'Parameter [Products Quantity Unit App]', 'MODULE_MODULES_PRODUCTS_QUANTITY_UNIT_INSTALLED', 'Configuration\\ProductsQuantityUnit\\PQ', 'Parameter [Products Quantity Unit App]', 6, 0, NULL, '2018-07-30 08:50:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(713, 'Status', 'CLICSHOPPING_APP_ORDERS_STATUS_OU_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 08:53:46', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(714, 'Sort Order', 'CLICSHOPPING_APP_ORDERS_STATUS_OU_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 08:53:46', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(715, 'Parameter [Orders Status App]', 'MODULE_MODULES_ORDERS_STATUS_INSTALLED', 'Configuration\\OrdersStatus\\OU', 'Parameter [Orders Status App]', 6, 0, NULL, '2018-07-30 08:53:46', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(716, 'Status', 'CLICSHOPPING_APP_ORDERS_STATUS_INVOICE_OI_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 08:55:02', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(717, 'Sort Order', 'CLICSHOPPING_APP_ORDERS_STATUS_INVOICE_OI_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 08:55:02', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(718, 'Parameter [Orders Status Invoice App]', 'MODULE_MODULES_ORDERS_STATUS_INVOICE_INSTALLED', 'Configuration\\OrdersStatusInvoice\\OI', 'Parameter [Orders Status Invoice App]', 6, 0, NULL, '2018-07-30 08:55:02', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(719, 'Status', 'CLICSHOPPING_APP_SETTINGS_ST_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 08:55:24', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(720, 'Sort Order', 'CLICSHOPPING_APP_SETTINGS_ST_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 08:55:24', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(721, 'Parameter [Settings App]', 'MODULE_MODULES_SETTINGS_INSTALLED', 'Configuration\\Settings\\ST', 'Parameter [Settings App]', 6, 0, NULL, '2018-07-30 08:55:24', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(730, 'Status', 'CLICSHOPPING_APP_ORDER_TOTAL_SUBTOTAL_ST_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 08:59:08', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(731, 'Sort Order', 'CLICSHOPPING_APP_ORDER_TOTAL_SUBTOTAL_ST_SORT_ORDER', '200', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 08:59:08', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(732, 'Status', 'CLICSHOPPING_APP_ORDER_TOTAL_SHIPPING_SH_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:00:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(733, 'Provide free shipping for orders over the set amount', 'CLICSHOPPING_APP_ORDER_TOTAL_SHIPPING_SH_FREE_SHIPPING_OVER', '50', 'Free Shipping For Orders Over', 6, 0, NULL, '2018-07-30 09:00:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(734, 'Do you want to allow free shipping ?', 'CLICSHOPPING_APP_ORDER_TOTAL_SHIPPING_SH_FREE_SHIPPING', 'False', 'Allow Free Shipping', 6, 0, NULL, '2018-07-30 09:00:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(735, 'Sort Order', 'CLICSHOPPING_APP_ORDER_TOTAL_SHIPPING_SH_SORT_ORDER', '500', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:00:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(736, 'Provide free shipping for orders sent to the set destination', 'CLICSHOPPING_APP_ORDER_TOTAL_SHIPPING_SH_DESTINATION', 'national', 'Provide Free Shipping For Orders Made', 6, 0, NULL, '2018-07-30 09:00:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(737, 'Status', 'CLICSHOPPING_APP_ORDER_TOTAL_TAX_TX_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:01:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(738, 'Sort Order', 'CLICSHOPPING_APP_ORDER_TOTAL_TAX_TX_SORT_ORDER', '900', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:01:47', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(739, 'Status', 'CLICSHOPPING_APP_ORDER_TOTAL_TOTAL_TO_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:04:30', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(740, 'Sort Order', 'CLICSHOPPING_APP_ORDER_TOTAL_TOTAL_TO_SORT_ORDER', '1500', 'The sort order location of the module shown in the available payment method listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:04:30', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(741, 'Payment Zone', 'CLICSHOPPING_APP_COD_CO_ZONE', '0', 'Enable this payment module globally or limit it to customers shipping to the selected zone only.', 6, 0, NULL, '2018-07-30 09:07:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(742, 'Order Status', 'CLICSHOPPING_APP_COD_CO_PREPARE_ORDER_STATUS_ID', '1', 'Set this to the order status level that is assigned to new orders.', 6, 0, NULL, '2018-07-30 09:07:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(743, 'Do you want to display the payment module for B2C customer ?', 'CLICSHOPPING_APP_COD_CO_NO_AUTHORIZE', 'True', 'Display the payment module for B2C customer ?', 6, 0, NULL, '2018-07-30 09:07:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(744, 'Status', 'CLICSHOPPING_APP_COD_CO_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:07:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(745, 'Payment Logo', 'CLICSHOPPING_APP_COD_CO_LOGO', 'paiement_livraison.jpg', 'Please, indicate the file of the logo with the extension(.gif, .jpg, etc...) to display in the payment page.<br /><strong>Note :</strong></font><br />The logo must be in the directory  sources/images/logos/payment/', 6, 0, NULL, '2018-07-30 09:07:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(746, 'Sort Order', 'CLICSHOPPING_APP_COD_CO_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:07:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(747, 'Status', 'CLICSHOPPING_APP_COUNTRIES_CT_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:10:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(748, 'Sort Order', 'CLICSHOPPING_APP_COUNTRIES_CT_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:10:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(749, 'Parameter [Countries App]', 'MODULE_MODULES_COUNTRIES_INSTALLED', 'Configuration\\Countries\\CT', 'Parameter [Countries App]', 6, 0, NULL, '2018-07-30 09:10:07', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(750, 'Status', 'CLICSHOPPING_APP_TAX_CLASS_TC_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:11:57', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(751, 'Sort Order', 'CLICSHOPPING_APP_TAX_CLASS_TC_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:11:57', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(752, 'Parameter [TaxClass App]', 'MODULE_MODULES_TAX_CLASS_INSTALLED', 'Configuration\\TaxClass\\TC', 'Parameter [TaxClass App]', 6, 0, NULL, '2018-07-30 09:11:57', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(753, 'Status', 'CLICSHOPPING_APP_ZONES_ZN_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:13:09', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(754, 'Sort Order', 'CLICSHOPPING_APP_ZONES_ZN_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:13:09', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(755, 'Parameter [Zones App]', 'MODULE_MODULES_ZONES_INSTALLED', 'Configuration\\Zones\\ZN', 'Parameter [Zones App]', 6, 0, NULL, '2018-07-30 09:13:09', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(756, 'Status', 'CLICSHOPPING_APP_TAX_RATES_TR_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:13:52', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(757, 'Sort Order', 'CLICSHOPPING_APP_TAX_RATES_TR_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:13:52', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(758, 'Parameter [Tax Rates App]', 'MODULE_MODULES_TAX_RATES_INSTALLED', 'Configuration\\TaxRates\\TR', 'Parameter [Tax Rates App]', 6, 0, NULL, '2018-07-30 09:13:52', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(759, 'Status', 'CLICSHOPPING_APP_TAX_GEO_ZONES_TG_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:14:57', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(760, 'Sort Order', 'CLICSHOPPING_APP_TAX_GEO_ZONES_TG_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:14:57', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(761, 'Parameter [Tax Geo Zones App]', 'MODULE_MODULES_TAX_GEO_ZONES_INSTALLED', 'Configuration\\TaxGeoZones\\TG', 'Parameter [Tax Geo Zones App]', 6, 0, NULL, '2018-07-30 09:14:57', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(762, 'Status', 'CLICSHOPPING_APP_CURRENCY_CR_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:15:35', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(763, 'Please insert the apikey from OpenxExchangeRates', 'CLICSHOPPING_APP_CURRENCY_CR_API_KEY', '', 'You must open a free account on openexchangerates.org o allow you to make the convertion rates.', 6, 0, NULL, '2018-07-30 09:15:36', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(764, 'Sort Order', 'CLICSHOPPING_APP_CURRENCY_CR_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:15:36', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(765, 'Parameter [Currency App]', 'MODULE_MODULES_CURRENCY_INSTALLED', 'Configuration\\Currency\\CR', 'Parameter [Currency App]', 6, 0, NULL, '2018-07-30 09:15:36', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(766, 'Status', 'CLICSHOPPING_APP_LANGUES_LG_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:16:08', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(767, 'Sort Order', 'CLICSHOPPING_APP_LANGUES_LG_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:16:08', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(768, 'Parameter [Languages App]', 'MODULE_MODULES_LANGUES_INSTALLED', 'Configuration\\Langues\\LG', 'Parameter [Languages App]', 6, 0, NULL, '2018-07-30 09:16:08', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(769, 'Status', 'CLICSHOPPING_APP_TEMPLATE_EMAIL_TE_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:19:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(770, 'Sort Order', 'CLICSHOPPING_APP_TEMPLATE_EMAIL_TE_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:19:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(771, 'Parameter [Template Email App]', 'MODULE_MODULES_TEMPLATE_EMAIL_INSTALLED', 'Configuration\\TemplateEmail\\TE', 'Parameter [Template Email App]', 6, 0, NULL, '2018-07-30 09:19:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(772, 'Status', 'CLICSHOPPING_APP_WEIGHT_WE_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 09:25:36', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(773, 'Sort Order', 'CLICSHOPPING_APP_WEIGHT_WE_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 09:25:36', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(774, 'Parameter [Weight App]', 'MODULE_MODULES_WEIGHT_INSTALLED', 'Configuration\\Weight\\WE', 'Parameter [Weight App]', 6, 0, NULL, '2018-07-30 09:25:36', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(777, 'Parameter [Categories App]', 'MODULE_MODULES_PRODUCTS_CATEGORIES_INSTALLED', 'Catalog\\Categories\\CT', 'Parameter [Categories App]', 6, 0, NULL, '2018-07-30 09:27:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(778, 'Status', 'CLICSHOPPING_APP_CATEGORIES_CT_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:08:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(779, 'Sort Order', 'CLICSHOPPING_APP_CATEGORIES_CT_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:08:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(780, 'Status', 'CLICSHOPPING_APP_CATALOG_PRODUCTS_PD_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:08:44', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(781, 'Sort Order', 'CLICSHOPPING_APP_CATALOG_PRODUCTS_PD_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:08:44', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(782, 'Parameter [Products Products App]', 'MODULE_MODULES_CATALOG_PRODUCTS_INSTALLED', 'Catalog\\Products\\PD', 'Parameter [Products Products App]', 6, 0, NULL, '2018-07-30 10:08:44', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(783, 'Status', 'CLICSHOPPING_APP_MANUFACTURERS_CM_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:10:02', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(784, 'Sort Order', 'CLICSHOPPING_APP_MANUFACTURERS_CM_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:10:02', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(785, 'Parameter [Manufacturers App]', 'MODULE_MODULES_MANUFACTURERS_INSTALLED', 'Catalog\\Manufacturers\\CM', 'Parameter [Manufacturers App]', 6, 0, NULL, '2018-07-30 10:10:02', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(786, 'Status', 'CLICSHOPPING_APP_SUPPLIERS_CS_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:11:21', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(787, 'Sort Order', 'CLICSHOPPING_APP_SUPPLIERS_CS_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:11:21', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(788, 'Parameter [Suppliers App]', 'MODULE_MODULES_SUPPLIERS_INSTALLED', 'Catalog\\Suppliers\\CS', 'Parameter [Suppliers App]', 6, 0, NULL, '2018-07-30 10:11:21', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(789, 'Status', 'CLICSHOPPING_APP_ARCHIVE_AR_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:12:30', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(790, 'Sort Order', 'CLICSHOPPING_APP_ARCHIVE_AR_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:12:30', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(791, 'Parameter [Archive Products App]', 'MODULE_MODULES_PRODUCTS_ARCHIVE_INSTALLED', 'Catalog\\Archive\\AR', 'Parameter [Archive Products App]', 6, 0, NULL, '2018-07-30 10:12:30', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(792, 'Status', 'CLICSHOPPING_APP_ORDERS_OD_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:13:14', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(793, 'Sort Order', 'CLICSHOPPING_APP_ORDERS_OD_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:13:14', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(794, 'Parameter [Orders App]', 'MODULE_MODULES_ORDERS_INSTALLED', 'Orders\\Orders\\OD', 'Parameter [Orders App]', 6, 0, NULL, '2018-07-30 10:13:14', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(795, 'Status', 'CLICSHOPPING_APP_CUSTOMERS_CS_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:13:53', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(796, 'Sort Order', 'CLICSHOPPING_APP_CUSTOMERS_CS_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:13:53', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(797, 'Parameter [Customers App]', 'MODULE_MODULES_CUSTOMERS_INFO_INSTALLED', 'Customers\\Customers\\CS', 'Parameter [Customers App]', 6, 0, NULL, '2018-07-30 10:13:53', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(798, 'Status', 'CLICSHOPPING_APP_CUSTOMERS_GROUPS_GR_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:15:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(799, 'Sort Order', 'CLICSHOPPING_APP_CUSTOMERS_GROUPS_GR_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:15:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(800, 'Parameter [Customers groups App]', 'MODULE_MODULES_CUSTOMERS_GROUPS_INSTALLED', 'Customers\\Groups\\GR', 'Parameter [Customers groups App]', 6, 0, NULL, '2018-07-30 10:15:23', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(801, 'Status', 'CLICSHOPPING_APP_CUSTOMERS_MEMBERS_ME_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:15:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(802, 'Sort Order', 'CLICSHOPPING_APP_CUSTOMERS_MEMBERS_ME_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:15:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(803, 'Parameter [Members App]', 'MODULE_MODULES_CUSTOMERS_MEMBERS_INSTALLED', 'Customers\\Members\\ME', 'Parameter [Members App]', 6, 0, NULL, '2018-07-30 10:15:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(804, 'Status', 'CLICSHOPPING_APP_REVIEWS_RV_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:15:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(805, 'Sort Order', 'CLICSHOPPING_APP_REVIEWS_RV_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:15:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(806, 'Parameter [Reviews App]', 'MODULE_MODULES_REVIEWS_INSTALLED', 'Customers\\Reviews\\RV', 'Parameter [Reviews App]', 6, 0, NULL, '2018-07-30 10:15:59', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(807, 'Status', 'CLICSHOPPING_APP_BANNER_MANAGER_BM_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:17:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(808, 'Sort Order', 'CLICSHOPPING_APP_BANNER_MANAGER_BM_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:17:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(809, 'Parameter [Banner Manager Products App]', 'MODULE_MODULES_BANNER_MANAGER_INSTALLED', 'Marketing\\BannerManager\\BM', 'Parameter [Banner Manager Products App]', 6, 0, NULL, '2018-07-30 10:17:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(810, 'Status', 'CLICSHOPPING_APP_SEO_SE_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:18:52', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(811, 'Sort Order', 'CLICSHOPPING_APP_SEO_SE_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:18:52', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(812, 'Parameter [Seo Manager App]', 'MODULE_MODULES_SEO_INSTALLED', 'Marketing\\SEO\\SE', 'Parameter [Seo Manager App]', 6, 0, NULL, '2018-07-30 10:18:52', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(813, 'Status', 'CLICSHOPPING_APP_PAGE_MANAGER_PM_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:19:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(814, 'Sort Order', 'CLICSHOPPING_APP_PAGE_MANAGER_PM_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:19:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(815, 'Parameter [Page Manager App]', 'MODULE_MODULES_PAGE_MANAGER_INSTALLED', 'Communication\\PageManager\\PM', 'Parameter [Page Manager App]', 6, 0, NULL, '2018-07-30 10:19:48', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(816, 'Status', 'CLICSHOPPING_APP_NEWSLETTER_NL_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:21:17', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(817, 'Sort Order', 'CLICSHOPPING_APP_NEWSLETTER_NL_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:21:17', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(818, 'Parameter [Newsletter App]', 'NL', 'Communication\\Newsletter\\NL', 'Parameter [Newsletter App]', 6, 0, NULL, '2018-07-30 10:21:17', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(819, 'Status', 'CLICSHOPPING_APP_EMAIL_EM_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:21:42', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(820, 'Sort Order', 'CLICSHOPPING_APP_EMAIL_EM_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:21:42', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(821, 'Parameter [E-Mail App]', 'MODULE_MODULES_EMAIL_INSTALLED', 'Communication\\EMail\\EM', 'Parameter [E-Mail App]', 6, 0, NULL, '2018-07-30 10:21:42', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(822, 'Status', 'CLICSHOPPING_APP_STATS_CUSTOMERS_SC_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:27:16', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(823, 'Sort Order', 'CLICSHOPPING_APP_STATS_CUSTOMERS_SC_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:27:16', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(824, 'Parameter [Stats Customers App]', 'MODULE_MODULES_STATS_CUSTOMERS_INSTALLED', 'Report\\StatsCustomers\\SC', 'Parameter [Stats Customers App]', 6, 0, NULL, '2018-07-30 10:27:16', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(825, 'Status', 'CLICSHOPPING_APP_STATS_PRODUCTS_NOTIFICATION_PN_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:29:04', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(826, 'Sort Order', 'CLICSHOPPING_APP_STATS_PRODUCTS_NOTIFICATION_PN_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:29:04', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(827, 'Parameter [Stats Products Notification App]', 'MODULE_MODULES_STATS_PRODUCTS_NOTIFICATION_INSTALLED', 'Report\\StatsProductsNotification\\PN', 'Parameter [Stats Products Notification App]', 6, 0, NULL, '2018-07-30 10:29:04', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(828, 'Status', 'CLICSHOPPING_APP_STATS_LOW_STOCK_SL_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:29:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(829, 'Sort Order', 'CLICSHOPPING_APP_STATS_LOW_STOCK_SL_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:29:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(830, 'Parameter [Stats Low Stock App]', 'MODULE_MODULES_STATS_LOW_STOCK_INSTALLED', 'Report\\StatsLowStock\\SL', 'Parameter [Stats Low Stock App]', 6, 0, NULL, '2018-07-30 10:29:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(831, 'Status', 'CLICSHOPPING_APP_STATS_PRODUCTS_EXPECTED_PE_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:29:44', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(832, 'Sort Order', 'CLICSHOPPING_APP_STATS_PRODUCTS_EXPECTED_PE_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:29:44', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(833, 'Parameter [Stats Products Expected App]', 'MODULE_MODULES_STATS_PRODUCTS_EXPECTED_INSTALLED', 'Report\\StatsProductsExpected\\PE', 'Parameter [Stats Products Expected App]', 6, 0, NULL, '2018-07-30 10:29:44', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(834, 'Status', 'CLICSHOPPING_APP_DATA_BASE_TABLES_DT_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:30:14', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(835, 'Sort Order', 'CLICSHOPPING_APP_DATA_BASE_TABLES_DT_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:30:14', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(836, 'Parameter [Export Data App]', 'MODULE_MODULES_DATA_BASE_TABLES_INSTALLED', 'Tools\\DataBaseTables\\DT', 'Parameter [Export Data App]', 6, 0, NULL, '2018-07-30 10:30:14', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(837, 'Status', 'CLICSHOPPING_APP_UPGRADE_UP_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:35:50', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(838, 'Sort Order', 'CLICSHOPPING_APP_UPGRADE_UP_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:35:50', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(839, 'Parameter [Github Module / Upgrade App]', 'MODULE_MODULES_UPGRADE_INSTALLED', 'Tools\\Upgrade\\UP', 'Parameter [Github Module / Upgrade App]', 6, 0, NULL, '2018-07-30 10:35:50', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(840, 'Status', 'CLICSHOPPING_APP_ADMINISTRATOR_MENU_AM_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:37:58', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(841, 'Sort Order', 'CLICSHOPPING_APP_ADMINISTRATOR_MENU_AM_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:37:58', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(842, 'Parameter [AdministratorMenu App]', 'MODULE_MODULES_ADMINISTRATOR_MENU_INSTALLED', 'Tools\\AdministratorMenu\\AM', 'Parameter [AdministratorMenu App]', 6, 0, NULL, '2018-07-30 10:37:58', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(845, 'Status', 'CLICSHOPPING_APP_SERVICE_APP_SV_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:44:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(846, 'Sort Order', 'CLICSHOPPING_APP_SERVICE_APP_SV_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:44:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(847, 'Parameter [Modules ServiceAPP App]', 'MODULE_MODULES_SERVICE_APP_INSTALLED', 'Tools\\ServiceAPP\\SV', 'Parameter [Modules ServiceAPP App]', 6, 0, NULL, '2018-07-30 10:44:22', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(848, 'Status', 'CLICSHOPPING_APP_MODULES_HOOKS_MH_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:46:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(849, 'Sort Order', 'CLICSHOPPING_APP_MODULES_HOOKS_MH_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:46:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(850, 'Parameter [Modules Hooks App]', 'MODULE_MODULES_MODULES_HOOKS_INSTALLED', 'Tools\\ModulesHooks\\MH', 'Parameter [Modules Hooks App]', 6, 0, NULL, '2018-07-30 10:46:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(851, 'Status', 'CLICSHOPPING_APP_APPS_AP_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:48:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(852, 'Sort Order', 'CLICSHOPPING_APP_APPS_AP_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:48:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(853, 'Parameter [Apps App]', 'MODULE_MODULES_APPS_INSTALLED', 'Tools\\Apps\\AP', 'Parameter [Apps App]', 6, 0, NULL, '2018-07-30 10:48:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(854, 'Security Check Extended Last Run', 'MODULE_SECURITY_CHECK_EXTENDED_LAST_RUN_DATETIME', '1532962107', 'The date and time the last extended security check was performed.', 6, 0, NULL, '2018-07-30 10:48:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(855, 'Status', 'CLICSHOPPING_APP_SECURITY_CHECK_SC_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:49:43', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(856, 'Sort Order', 'CLICSHOPPING_APP_SECURITY_CHECK_SC_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:49:43', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(857, 'Parameter [Security Check]', 'MODULE_MODULES_SECURITY_CHECK_INSTALLED', 'Tools\\SecurityCheck\\SC', 'Parameter [Security Check]', 6, 0, NULL, '2018-07-30 10:49:43', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(858, 'Status', 'CLICSHOPPING_APP_EDIT_LOG_ERROR_EL_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:51:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(859, 'Sort Order', 'CLICSHOPPING_APP_EDIT_LOG_ERROR_EL_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:51:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(860, 'Parameter [Edit error log editor App]', 'MODULE_MODULES_EDIT_LOG_ERROR_INSTALLED', 'Tools\\EditLogError\\EL', 'Parameter [Edit error log editor App]', 6, 0, NULL, '2018-07-30 10:51:18', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(861, 'Status', 'CLICSHOPPING_APP_SEC_DIR_PERMISSIONS_SP_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:52:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(862, 'Sort Order', 'CLICSHOPPING_APP_SEC_DIR_PERMISSIONS_SP_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:52:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(863, 'Parameter [Security Directory Permissions]', 'MODULE_MODULES_SEC_DIR_PERMISSIONS_INSTALLED', 'Tools\\SecDirPermissions\\SP', 'Parameter [Security Directory Permissions]', 6, 0, NULL, '2018-07-30 10:52:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(864, 'Status', 'CLICSHOPPING_APP_WHOS_ONLINE_WO_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-30 10:53:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(865, 'Sort Order', 'CLICSHOPPING_APP_WHOS_ONLINE_WO_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-30 10:53:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(866, 'Parameter [Who\'s Online App]', 'MODULE_MODULES_WHOS_ONLINE_INSTALLED', 'Tools\\WhosOnline\\WO', 'Parameter [Who\'s Online App]', 6, 0, NULL, '2018-07-30 10:53:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(867, 'Installed Modules', 'MODULE_MODULES_BOXES_INSTALLED', 'bm_categories.php;bm_specials.php;bm_whats_new.php;bm_page_manager_customize.php;bm_page_manager.php;bm_order_history.php;bm_search.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 12:12:59', '2018-07-30 11:57:17', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(868, 'Do you want to activate this module ?', 'MODULE_HEADER_MESSAGE_STACK_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 11:59:07', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(869, 'Please select the width for this modules', 'MODULE_HEADER_MESSAGE_STACK_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-30 11:59:07', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(870, 'Sort Order', 'MODULE_HEADER_MESSAGE_STACK_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 11:59:07', NULL, '');
INSERT INTO `clic_configuration` VALUES(871, 'Do you want to activate this module ?', 'MODULES_HEADER_MULTI_TEMPLATE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 11:59:12', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(872, 'Please select the width for this modules', 'MODULES_HEADER_MULTI_TEMPLATE_TEMPLATE_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-30 11:59:12', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(873, 'Please, select a template', 'MODULES_HEADER_MULTI_TEMPLATE_FILES', 'multi_template_default.php', 'Veuillez indiquer le type de template que vous souhaitez voir affiché .<br /><br /><b>Note</b><br /> - Si vous avez opté pour une configuration en ligne, veuillez choisir un type de nom de template comme <u>template_line</u>.<br /><br /> - Si vous avez opté pour un affichage en colonne, veuillez choisir un type de nom de template comme <u>template_column</u> puis veuillez configurer le nombre de colonnes<br />- La valeur à insérrer dans votre template est $banner .', 6, 2, NULL, '2018-07-30 11:59:12', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(874, 'Please, select the banner group to display a banner image', 'MODULES_HEADER_MULTI_MODULE_LOGO_BANNER_GROUP', 'Default_multi_template_logo', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 11:59:12', NULL, '');
INSERT INTO `clic_configuration` VALUES(875, 'Please, select the banner group to display a banner image', 'MODULES_HEADER_MULTI_MODULE_BANNER_2_GROUP', 'Default_multi_template_banner', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 11:59:12', NULL, '');
INSERT INTO `clic_configuration` VALUES(876, 'Sort Order', 'MODULES_HEADER_MULTI_TEMPLATE_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 3, NULL, '2018-07-30 11:59:12', NULL, '');
INSERT INTO `clic_configuration` VALUES(877, 'Sort Order', 'MODULES_HEADER_MULTI_TEMPLATE_TEMPLATE_DISPLAY_PAGES', 'all', 'Select the page where the caroussel will be displayed', 6, 4, NULL, '2018-07-30 11:59:12', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(878, 'Do you want to activate this module ?', 'MODULE_FOOTER_MULTI_TEMPLATE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:05:09', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(879, 'Quel type de template souhaitez-vous voir affiché dans le bas de page ?', 'MODULE_FOOTER_MULTI_TEMPLATE', 'footer_multi_template.php', 'Veuillez indiquer le type de template que vous souhaitez voir affiché concernant les coups de coeur.<br /><br /><b>Note</b><br /> - Si vous avez opté pour une configuration en ligne, veuillez choisir un type de nom de template comme <u>template_line</u>.<br /><br /> - Si vous avez opté pour un affichage en colonne, veuillez choisir un type de nom de template comme <u>template_column</u> puis veuillez configurer le nombre de colonnes', 6, 2, NULL, '2018-07-30 12:05:09', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(881, 'Do you want to display the privacy conditions (mailchimp) ?', 'MODULE_FOOTER_MULTI_TEMPLATE_MAILCHIMP_DISPLAY_PRIVACY', 'False', 'Display the privacy conditions (mailchimp)', 6, 3, NULL, '2018-07-30 12:05:09', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(882, 'Please, choose the width of the column', 'MODULE_FOOTER_MULTI_TEMPLATE_CONTENT_WIDTH', '3', 'Choose a number between 1 and 12.', 6, 4, NULL, '2018-07-30 12:05:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(883, 'Please, indicate Facebook URL ?', 'MODULE_FOOTER_MULTI_TEMPLATE_CONTENTS_FACEBOOK_URL', 'Insert Url account', 'Insert a title', 6, 5, NULL, '2018-07-30 12:05:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(884, 'Please, indicate twitter URL ?', 'MODULE_FOOTER_MULTI_TEMPLATE_CONTENTS_TWITTER_URL', 'Insert Url account', 'Insert a title', 6, 6, NULL, '2018-07-30 12:05:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(885, 'Please, indicate Pinterest URL ?', 'MODULE_FOOTER_MULTI_TEMPLATE_CONTENTS_PINTEREST_URL', 'Insert Url account', 'Insert a title', 6, 7, NULL, '2018-07-30 12:05:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(887, 'Sort Order', 'MODULE_FOOTER_MULTI_TEMPLATE_SORT_ORDER', '200', 'Sort Order (Lowest is displayed in first)', 6, 9, NULL, '2018-07-30 12:05:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(888, 'Please, indicate where the boxe must be displayed', 'MODULE_FOOTER_MULTI_TEMPLATE_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 10, NULL, '2018-07-30 12:05:09', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(889, 'Do you want to activate this module ?', 'MODULES_FOOTER_SUFFIX_COPYRIGHT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:07:12', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(890, 'Sort Order', 'MODULES_FOOTER_SUFFIX_COPYRIGHT_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 12:07:12', NULL, '');
INSERT INTO `clic_configuration` VALUES(891, 'Do you want to activate this module ?', 'MODULE_BOXES_CATEGORIES_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:11:39', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(892, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT', 'Left Column', 'Select the column where the boxe must be displayed', 6, 2, NULL, '2018-07-30 12:11:39', NULL, 'clic_cfg_set_boolean_value(array(\'Left Column\', \'Right Column\'),');
INSERT INTO `clic_configuration` VALUES(893, 'Please, select the banner group to display a banner image', 'MODULE_BOXES_CATEGORIES_BANNER_GROUP', 'Default_boxe_categories', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 12:11:39', NULL, '');
INSERT INTO `clic_configuration` VALUES(894, 'Sort Order', 'MODULE_BOXES_CATEGORIES_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 12:11:39', NULL, '');
INSERT INTO `clic_configuration` VALUES(895, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_CATEGORIES_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 5, NULL, '2018-07-30 12:11:39', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(896, 'Do you want to activate this module ?', 'MODULE_BOXES_ORDER_HISTORY_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:11:48', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(897, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT', 'Right Column', 'Select the column where the boxe must be displayed', 6, 2, NULL, '2018-07-30 12:11:48', NULL, 'clic_cfg_set_boolean_value(array(\'Left Column\', \'Right Column\'),');
INSERT INTO `clic_configuration` VALUES(898, 'Please, select the banner group to display a banner image', 'MODULE_BOXES_ORDER_HISTORY_BANNER_GROUP', 'Default_boxe_history', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 12:11:48', NULL, '');
INSERT INTO `clic_configuration` VALUES(899, 'Please, indicate the order number to display in the shop', 'MODULE_BOXES_ORDER_HISTORY_MAX_DISPLAY_PRODUCTS', '5', 'Please, indicate the order number to display in the shop', 6, 4, NULL, '2018-07-30 12:11:48', NULL, '');
INSERT INTO `clic_configuration` VALUES(900, 'Sort Order', 'MODULE_BOXES_ORDER_HISTORY_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 5, NULL, '2018-07-30 12:11:48', NULL, '');
INSERT INTO `clic_configuration` VALUES(901, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_ORDER_HISTORY_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 6, NULL, '2018-07-30 12:11:48', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(902, 'Do you want to activate this module ?', 'MODULE_BOXES_PAGE_MANAGER_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:11:58', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(903, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_PAGE_MANAGER_CONTENT_PLACEMENT', 'Right Column', 'Select the column where the boxe must be displayed', 6, 2, NULL, '2018-07-30 12:11:58', NULL, 'clic_cfg_set_boolean_value(array(\'Left Column\', \'Right Column\'),');
INSERT INTO `clic_configuration` VALUES(904, 'Please, select the banner group to display a banner image', 'MODULE_BOXES_PAGE_MANAGER_BANNER_GROUP', 'Default_boxe_page_manager', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 12:11:58', NULL, '');
INSERT INTO `clic_configuration` VALUES(905, 'Sort Order', 'MODULE_BOXES_PAGE_MANAGER_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 12:11:58', NULL, '');
INSERT INTO `clic_configuration` VALUES(906, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_PAGE_MANAGER_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 5, NULL, '2018-07-30 12:11:58', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(907, 'Do you want to activate this module ?', 'MODULE_BOXES_PAGE_MANAGER_CUSTOMIZE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:12:04', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(908, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_PAGE_MANAGER_CUSTOMIZE_CONTENT_PLACEMENT', 'Right Column', 'Select the column where the boxe must be displayed', 6, 2, NULL, '2018-07-30 12:12:04', NULL, 'clic_cfg_set_boolean_value(array(\'Left Column\', \'Right Column\'),');
INSERT INTO `clic_configuration` VALUES(909, 'Please, select the banner group to display a banner image', 'MODULE_BOXES_PAGE_MANAGER_CUSTOMIZE_BANNER_GROUP', 'Default_boxe_page_customize', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 12:12:04', NULL, '');
INSERT INTO `clic_configuration` VALUES(910, 'Sort Order', 'MODULE_BOXES_PAGE_MANAGER_CUSTOMIZE_SORT_ORDER', '90', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 12:12:04', NULL, '');
INSERT INTO `clic_configuration` VALUES(911, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_PAGE_MANAGER_CUSTOMIZE_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 5, NULL, '2018-07-30 12:12:04', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(912, 'Do you want to activate this module ?', 'MODULE_BOXES_SPECIALS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:12:09', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(913, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_SPECIALS_CONTENT_PLACEMENT', 'Left Column', 'Select the column where the boxe must be displayed', 6, 2, NULL, '2018-07-30 12:12:09', NULL, 'clic_cfg_set_boolean_value(array(\'Left Column\', \'Right Column\'),');
INSERT INTO `clic_configuration` VALUES(914, 'Please, select the banner group to display a banner image', 'MODULE_BOXES_SPECIALS_BANNER_GROUP', 'Default_boxe_specials', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 12:12:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(915, 'Do you want to display the detail button ?', 'MODULE_BOXES_SPECIAL_DETAIL_BUTTON', 'False', 'Display the detail button  ?', 6, 1, NULL, '2018-07-30 12:12:09', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(916, 'How many product do you want to display ?', 'MODULE_BOXES_SPECIALS_MAX_DISPLAY_LIMIT', '1', 'Display a product number inside the boxe.', 6, 4, NULL, '2018-07-30 12:12:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(917, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_BOXES_SPECIALS_TICKER', 'False', 'Display a specific mssage for the product. The time must configured in Configuration menu', 6, 9, NULL, '2018-07-30 12:12:09', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(918, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_BOXES_SPECIALS_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 9, NULL, '2018-07-30 12:12:09', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(919, 'Sort Order', 'MODULE_BOXES_SPECIALS_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 5, NULL, '2018-07-30 12:12:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(920, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_SPECIALS_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 6, NULL, '2018-07-30 12:12:09', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(921, 'Do you want to activate this module ?', 'MODULE_BOXES_WHATS_NEW_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 12:12:14', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(922, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_WHATS_NEW_CONTENT_PLACEMENT', 'Left Column', 'Select the column where the boxe must be displayed', 6, 2, NULL, '2018-07-30 12:12:14', NULL, 'clic_cfg_set_boolean_value(array(\'Left Column\', \'Right Column\'),');
INSERT INTO `clic_configuration` VALUES(923, 'Please, select the banner group to display a banner image', 'MODULE_BOXES_WHATS_NEW_BANNER_GROUP', 'Default_boxe_whatsnew', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-30 12:12:14', NULL, '');
INSERT INTO `clic_configuration` VALUES(924, 'Do you want to display the detail button ?', 'MODULE_BOXES_WHATS_NEW_DETAIL_BUTTON', 'False', 'Display the detail button  ?', 6, 1, NULL, '2018-07-30 12:12:14', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(925, 'How many product do you want to display ?', 'MODULE_BOXES_WHATS_NEW_MAX_DISPLAY_LIMIT', '1', 'Display a product number inside the boxe.', 6, 3, NULL, '2018-07-30 12:12:14', NULL, '');
INSERT INTO `clic_configuration` VALUES(926, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_BOXES_WHATS_NEW_TICKER', 'False', 'Display a specific message for the product. The time must configured in Configuration menu', 6, 9, NULL, '2018-07-30 12:12:14', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(927, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_BOXES_WHATS_NEW_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 9, NULL, '2018-07-30 12:12:14', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(928, 'Sort Order', 'MODULE_BOXES_WHATS_NEW_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 12:12:14', NULL, '');
INSERT INTO `clic_configuration` VALUES(929, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_WHATS_NEW_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 5, NULL, '2018-07-30 12:12:14', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(930, 'Do you want to close the Shop for maintenance ?', 'STORE_OFFLINE', 'false', 'Close the Shop for maintenance', 1, 23, NULL, '2018-07-30 14:25:01', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(931, 'Who is authorized to access at the catalog when the store is offline ?', 'STORE_OFFLINE_ALLOW', '', 'Please insert the ip address like this 127.0.0.1, 194.25.0.50, 158.125.124.23', 1, 24, NULL, '2018-07-30 14:25:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(932, 'Do you want to activate this module ?', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(933, 'Please, select a template', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_TEMPLATE', 'template_bootstrap_column_5.php', 'Please choose the template than you want to display', 6, 2, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(934, 'Do you want to display the title ?', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_FRONT_TITLE', 'True', 'Display the title', 6, 3, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(935, 'Please Indicate a number to display the products', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_MAX_DISPLAY', '6', 'Indicate a number to display the products', 6, 5, NULL, '2018-07-30 18:48:50', NULL, '');
INSERT INTO `clic_configuration` VALUES(936, 'Please Indicate the column number to display the content', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_COLUMNS', '6', 'Select a number between 1 and 12', 6, 6, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(937, 'Do you want to display a short description ?', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_SHORT_DESCRIPTION', '0', 'Indicate a number to display the summary description (caracters)', 6, 7, NULL, '2018-07-30 18:48:50', NULL, '');
INSERT INTO `clic_configuration` VALUES(938, 'Do you want to remove words in the summary description', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Indicate a number to remove the words at the left of the summary description', 6, 8, NULL, '2018-07-30 18:48:50', NULL, '');
INSERT INTO `clic_configuration` VALUES(939, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_TICKER', 'False', 'Display a message on product image. The time can be change in the configuration menu', 6, 9, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(940, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 9, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(941, 'Do you want to display the stock ?', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_DISPLAY_STOCK', 'none', 'Display an information In Stock, Exhausted, out of stock ?', 6, 10, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'))');
INSERT INTO `clic_configuration` VALUES(942, 'Please choose the image size', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_IMAGE_MEDIUM', 'Small', 'Indicate the size than you want', 6, 11, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'))');
INSERT INTO `clic_configuration` VALUES(943, 'Do you want to remove Details / buy button', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_DELETE_BUY_BUTTON', 'False', 'Remove betails / buy button', 6, 11, NULL, '2018-07-30 18:48:50', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(944, 'Sort Order', 'MODULE_FRONT_PAGE_NEW_PRODUCTS_SORT_ORDER', '110', 'Sort Order (Lowest is displayed in first)', 6, 12, NULL, '2018-07-30 18:48:50', NULL, '');
INSERT INTO `clic_configuration` VALUES(945, 'Do you want to activate this module ?', 'MODULE_FRONT_PAGE_PAGE_MANAGER_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 18:48:54', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(946, 'Please select the width for this modules', 'MODULE_FRONT_PAGE_PAGE_MANAGER_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-30 18:48:54', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(947, 'Sort Order', 'MODULE_FRONT_PAGE_PAGE_MANAGER_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 18:48:54', NULL, '');
INSERT INTO `clic_configuration` VALUES(948, 'Do you want to activate this module ?', 'MODULE_INDEX_CATEGORIES_NAME_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 21:35:32', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(949, 'Please select the width for this modules', 'MODULE_INDEX_CATEGORIES_NAME_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-30 21:35:32', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(950, 'Sort Order', 'MODULE_INDEX_CATEGORIES_NAME_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 2, NULL, '2018-07-30 21:35:32', NULL, '');
INSERT INTO `clic_configuration` VALUES(951, 'Do you want to activate this module ?', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(952, 'Please, select a template', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_TEMPLATE', 'template_bootstrap_column_5.php', 'Please choose the template than you want to display', 6, 2, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(953, 'Do you want to display the title ?', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_FRONT_TITLE', 'True', 'Display the title', 6, 3, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(954, 'Please Indicate a number to display the products', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_MAX_DISPLAY', '6', 'Indicate a number to display the products', 6, 5, NULL, '2018-07-30 21:35:37', NULL, '');
INSERT INTO `clic_configuration` VALUES(955, 'Please Indicate the column number to display the content', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_COLUMNS', '6', 'Select a number between 1 and 12', 6, 6, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(956, 'Do you want to display a short description ?', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_SHORT_DESCRIPTION', '0', 'Indicate a number to display the summary description (caracters)', 6, 7, NULL, '2018-07-30 21:35:37', NULL, '');
INSERT INTO `clic_configuration` VALUES(957, 'Do you want to remove words in the summary description', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Indicate a number to remove the words at the left of the summary description', 6, 8, NULL, '2018-07-30 21:35:37', NULL, '');
INSERT INTO `clic_configuration` VALUES(958, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_TICKER', 'False', 'Display a message on product image. The time can be change in the configuration menu', 6, 9, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(959, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 9, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(960, 'Do you want to display the stock ?', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_DISPLAY_STOCK', 'none', 'Display an information In Stock, Exhausted, out of stock ?', 6, 10, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'))');
INSERT INTO `clic_configuration` VALUES(961, 'Please choose the image size', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_IMAGE_MEDIUM', 'Small', 'Indicate the size than you want', 6, 11, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'))');
INSERT INTO `clic_configuration` VALUES(962, 'Do you want to remove Details / buy button', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_DELETE_BUY_BUTTON', 'False', 'Remove betails / buy button', 6, 11, NULL, '2018-07-30 21:35:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(963, 'Sort Order', 'MODULE_INDEX_CATEGORIES_NEW_PRODUCTS_SORT_ORDER', '80', 'Sort Order (Lowest is displayed in first)', 6, 12, NULL, '2018-07-30 21:35:37', NULL, '');
INSERT INTO `clic_configuration` VALUES(964, 'Installed Modules', 'MODULE_MODULES_PRODUCTS_LISTING_INSTALLED', 'pl_products_listing_categories_name.php;pl_products_listing_filter.php;pl_products_listing.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 21:38:35', '2018-07-30 21:38:19', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(965, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_LISTING_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(966, 'Please, select a template', 'MODULE_PRODUCTS_LISTING_TEMPLATE', 'template_bootstrap_column_5.php', 'Please choose the template than you want to display', 6, 2, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(967, 'Please indicate the product number to display', 'MODULE_PRODUCTS_LISTING_MAX_DISPLAY', '6', 'indicate a number to display the products', 6, 3, NULL, '2018-07-30 21:38:26', NULL, '');
INSERT INTO `clic_configuration` VALUES(968, 'Please Indicate the column number to display the content', 'MODULE_PRODUCTS_LISTING_COLUMNS', '6', 'Select a number between 1 and 12', 6, 3, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(969, 'Do you want to display a short description ?', 'MODULE_PRODUCTS_LISTING_SHORT_DESCRIPTION', '0', 'Indicate a number to display the summary description (caracters)', 6, 4, NULL, '2018-07-30 21:38:26', NULL, '');
INSERT INTO `clic_configuration` VALUES(970, 'Do you want to remove words in the summary description ?', 'MODULE_PRODUCTS_LISTING_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Indicate a number to remove the words at the left of the summary description', 6, 4, NULL, '2018-07-30 21:38:26', NULL, '');
INSERT INTO `clic_configuration` VALUES(971, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_PRODUCTS_LISTING_TICKER', 'False', 'Display a message on product image. The time can be change in the configuration menu', 6, 1, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(972, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_PRODUCTS_LISTING_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 1, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(973, 'Do you want to display the stock ?', 'MODULE_PRODUCTS_LISTING_DISPLAY_STOCK', 'none', 'Display an information In Stock, Exhausted, out of stock ?', 6, 6, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'),');
INSERT INTO `clic_configuration` VALUES(974, 'Please choose the image size', 'MODULE_PRODUCTS_LISTING_IMAGE_MEDIUM', 'Small', 'Indicate the size than you want', 6, 10, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'),');
INSERT INTO `clic_configuration` VALUES(975, 'Do you want to remove Details / buy button', 'MODULE_PRODUCTS_LISTING_DELETE_BUY_BUTTON', 'False', 'Remove betails / buy button', 6, 11, NULL, '2018-07-30 21:38:26', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(976, 'Sort Order', 'MODULE_PRODUCTS_LISTING_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 21:38:26', NULL, '');
INSERT INTO `clic_configuration` VALUES(977, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_LISTING_CATEGORIES_NAME_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 21:38:31', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(978, 'Please Indicate the column number to display the content ?', 'MODULE_PRODUCTS_LISTING_CATEGORIES_COLUMNS', '6', 'Select a number between 1 and 12', 6, 3, NULL, '2018-07-30 21:38:31', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(979, 'Sort Order', 'MODULE_PRODUCTS_LISTING_CATEGORIES_NAME_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 21:38:31', NULL, '');
INSERT INTO `clic_configuration` VALUES(980, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_LISTING_FILTER_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 21:38:35', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(981, 'Please Indicate the column number to display the content ?', 'MODULE_PRODUCTS_LISTING_FILTER_COLUMNS', '6', 'Select a number between 1 and 12', 6, 3, NULL, '2018-07-30 21:38:35', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(982, 'Do you want to display categories / model filter ?', 'MODULE_PRODUCTS_LISTING_FILTER_DISPLAY_FILTER', '0', 'indicate a sort order number, 0 for nothing', 6, 1, NULL, '2018-07-30 21:38:35', NULL, '');
INSERT INTO `clic_configuration` VALUES(983, 'Sort Order', 'MODULE_PRODUCTS_LISTING_FILTER_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 21:38:35', NULL, '');
INSERT INTO `clic_configuration` VALUES(984, 'Installed Modules', 'MODULE_MODULES_PRODUCTS_SEARCH_INSTALLED', 'pse_products_search.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-30 22:32:11', '2018-07-30 22:30:50', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(985, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_SEARCH_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(986, 'Please, select a template', 'MODULE_PRODUCTS_SEARCH_TEMPLATE', 'template_bootstrap_column_5.php', 'Please choose the template than you want to display', 6, 2, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(987, 'Please indicate the product number to display', 'MODULE_PRODUCTS_SEARCH_MAX_DISPLAY', '6', 'indicate a number to display the products', 6, 3, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(988, 'Please Indicate the column number to display the content', 'MODULE_PRODUCTS_SEARCH_COLUMNS', '6', 'Select a number between 1 and 12', 6, 3, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(989, 'Do you want to display a short description ?', 'MODULE_PRODUCTS_SEARCH_SHORT_DESCRIPTION', '0', 'Indicate a number to display the summary description (caracters)', 6, 4, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(990, 'Do you want to remove words in the summary description ?', 'MODULE_PRODUCTS_SEARCH_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Indicate a number to remove the words at the left of the summary description', 6, 4, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(991, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_PRODUCTS_SEARCH_TICKER', 'False', 'Display a message on product image. The time can be change in the configuration menu', 6, 1, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(992, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_PRODUCTS_SEARCH_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 1, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(993, 'Do you want to display the stock ?', 'MODULE_PRODUCTS_SEARCH_DISPLAY_STOCK', 'none', 'Display an information In Stock, Exhausted, out of stock ?', 6, 6, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'),');
INSERT INTO `clic_configuration` VALUES(994, 'Please, indicate a sort order number for the product name', 'MODULE_PRODUCTS_SEARCH_LIST_NAME', '1', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 5, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(995, 'Please indicate a sort order number for product arrival', 'MODULE_PRODUCTS_SEARCH_LIST_DATE_ADDED', '1', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 5, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(996, 'Please indicate a sort order number for product price', 'MODULE_PRODUCTS_SEARCH_LIST_PRICE', '1', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 6, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(997, 'Please indicate a sort order number for product model', 'MODULE_PRODUCTS_SEARCH_LIST_MODEL', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 7, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(998, 'Please indicate a sort order number for product stock quantity', 'MODULE_PRODUCTS_SEARCH_LIST_QUANTITY', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 8, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(999, 'Please indicate a sort order number for product brand', 'MODULE_PRODUCTS_SEARCH_LIST_MANUFACTURER', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 9, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(1000, 'Please indicate a sort order number for product weight', 'MODULE_PRODUCTS_SEARCH_LIST_WEIGHT', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 10, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(1001, 'Please choose the image size', 'MODULE_PRODUCTS_SEARCH_IMAGE_MEDIUM', 'Small', 'Indicate the size than you want', 6, 11, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'),');
INSERT INTO `clic_configuration` VALUES(1002, 'Do you want to remove Details / buy button', 'MODULE_PRODUCTS_SEARCH_DELETE_BUY_BUTTON', 'False', 'Remove betails / buy button', 6, 11, NULL, '2018-07-30 22:32:11', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1003, 'Sort Order', 'MODULE_PRODUCTS_SEARCH_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 22:32:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(1004, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_NEW_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1005, 'Please choose the template than you want to display ?', 'MODULE_PRODUCTS_NEW_TEMPLATE', 'template_bootstrap_column_5.php', 'Choose the template than you want to display', 6, 2, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(1006, 'Please indicate the product number to display', 'MODULE_PRODUCTS_NEW_MAX_DISPLAY', '6', 'Indicate a maximum number to display products.', 6, 3, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1007, 'Please Indicate the column number to display the content ?', 'MODULE_PRODUCTS_NEW_COLUMNS', '6', 'Select a number between 1 and 12', 6, 3, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1008, 'Do you want to display a short description ?', 'MODULE_PRODUCTS_NEW_SHORT_DESCRIPTION', '0', 'Indicate a number to display the summary description (caracters)', 6, 4, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1009, 'Do you want to remove words in the summary description ?', 'MODULE_PRODUCTS_NEW_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Remove words at the left in the summary description', 6, 4, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1010, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_PRODUCTS_NEW_TICKER', 'False', 'Display a message on product image. The time can be change in the configuration menu', 6, 1, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1011, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_PRODUCTS_NEW_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 1, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1012, 'Do you want to display the stock ?', 'MODULE_PRODUCTS_NEW_DISPLAY_STOCK', 'none', 'Display an information In Stock, Exhausted, out of stock ?', 6, 6, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'),');
INSERT INTO `clic_configuration` VALUES(1013, 'Please indicate a sort order number for product arrival', 'MODULE_PRODUCTS_NEW_LIST_DATE_ADDED', '1', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 5, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1014, 'Please indicate a sort order number for product price', 'MODULE_PRODUCTS_NEW_LIST_PRICE', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 6, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1015, 'Please indicate a sort order number for product model', 'MODULE_PRODUCTS_NEW_LIST_MODEL', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 7, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1016, 'Please indicate a sort order number for product stock quantity', 'MODULE_PRODUCTS_NEW_LIST_QUANTITY', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 8, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1017, 'Please indicate a sort order number for product weight', 'MODULE_PRODUCTS_NEW_LIST_WEIGHT', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 9, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1018, 'Please choose the image size', 'MODULE_PRODUCTS_NEW_IMAGE_MEDIUM', 'Small', 'Indicate the size than you want', 6, 10, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'),');
INSERT INTO `clic_configuration` VALUES(1019, 'Do you want to remove Details / buy button', 'MODULE_PRODUCTS_NEW_DELETE_BUY_BUTTON', 'False', 'Remove betails / buy button', 6, 11, NULL, '2018-07-30 22:46:27', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1020, 'Sort Order', 'MODULE_PRODUCTS_NEW_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 12, NULL, '2018-07-30 22:46:27', NULL, '');
INSERT INTO `clic_configuration` VALUES(1021, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_SPECIAL_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1022, 'Please choose the template than you want to display ?', 'MODULE_PRODUCTS_SPECIAL_TEMPLATE', 'template_bootstrap_column_5.php', 'Choose the template than you want to display', 6, 2, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(1023, 'Please indicate the product number to display', 'MODULE_PRODUCTS_SPECIAL_MAX_DISPLAY', '6', 'Indicate a maximum number to display products.', 6, 3, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1024, 'Please Indicate the column number to display the content ?', 'MODULE_PRODUCTS_SPECIAL_COLUMNS', '6', 'Select a number between 1 and 12', 6, 3, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1025, 'Do you want to display a short description ?', 'MODULE_PRODUCTS_SPECIAL_SHORT_DESCRIPTION', '0', 'Indicate a number to display the summary description (caracters)', 6, 4, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1026, 'Do you want to remove words in the summary description ?', 'MODULE_PRODUCTS_SPECIAL_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Remove words at the left in the summary description', 6, 4, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1027, 'Do you want to display a message News / Specials / Featured / Selected product?', 'MODULE_PRODUCTS_SPECIAL_TICKER', 'False', 'Display a message on product image. The time can be change in the configuration menu', 6, 1, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1028, 'Do you want to display a discount poucentage (specials) ?', 'MODULE_PRODUCTS_SPECIAL_POURCENTAGE_TICKER', 'False', 'Display a discount poucentage (specials)', 6, 1, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1029, 'Do you want to display the stock ?', 'MODULE_PRODUCTS_SPECIAL_DISPLAY_STOCK', 'none', 'Display an information In Stock, Exhausted, out of stock ?', 6, 6, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'),');
INSERT INTO `clic_configuration` VALUES(1030, 'Please indicate a sort order number for product arrival', 'MODULE_PRODUCTS_SPECIAL_LIST_DATE_ADDED', '1', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 5, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1031, 'Please indicate a sort order number for product price', 'MODULE_PRODUCTS_SPECIAL_LIST_PRICE', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 6, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1032, 'Please indicate a sort order number for product model', 'MODULE_PRODUCTS_SPECIAL_LIST_MODEL', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 7, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1033, 'Please indicate a sort order number for product stock quantity', 'MODULE_PRODUCTS_SPECIAL_LIST_QUANTITY', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 8, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1034, 'Please indicate a sort order number for product weight', 'MODULE_PRODUCTS_SPECIAL_LIST_WEIGHT', '0', 'This option allow customer to choose a product display sorder : 0 for nothing. Lowest display in first', 6, 9, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1035, 'Please choose the image size', 'MODULE_PRODUCTS_SPECIAL_IMAGE_MEDIUM', 'Small', 'Indicate the size than you want', 6, 10, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'),');
INSERT INTO `clic_configuration` VALUES(1036, 'Do you want to remove Details / buy button', 'MODULE_PRODUCTS_SPECIAL_DELETE_BUY_BUTTON', 'False', 'Remove betails / buy button', 6, 11, NULL, '2018-07-30 22:48:57', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1037, 'Sort Order', 'MODULE_PRODUCTS_SPECIAL_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-30 22:48:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1038, 'Do you want to activate this module ?', 'MODULE_ADVANCED_SEARCH_CATEGORIES_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 08:24:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1039, 'Please select the width for this modules', 'MODULE_ADVANCED_SEARCH_CATEGORIES_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 08:24:37', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1040, 'Sort Order', 'MODULE_ADVANCED_SEARCH_CATEGORIES_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 08:24:37', NULL, '');
INSERT INTO `clic_configuration` VALUES(1041, 'Do you want to activate this module ?', 'MODULE_ADVANCED_SEARCH_CRITERIA_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 08:24:41', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1042, 'Please select the width for this modules', 'MODULE_ADVANCED_SEARCH_CRITERIA_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 08:24:41', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1043, 'Sort Order', 'MODULE_ADVANCED_SEARCH_CRITERIA_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 10, NULL, '2018-07-31 08:24:41', NULL, '');
INSERT INTO `clic_configuration` VALUES(1044, 'Do you want to activate this module ?', 'MODULE_ADVANCED_SEARCH_DATE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 08:24:46', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1045, 'Please select the width for this modules', 'MODULE_ADVANCED_SEARCH_DATE_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 08:24:46', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1046, 'Sort Order', 'MODULE_ADVANCED_SEARCH_DATE_SORT_ORDER', '50', 'Sort Order (Lowest is displayed in first)', 6, 2, NULL, '2018-07-31 08:24:46', NULL, '');
INSERT INTO `clic_configuration` VALUES(1049, 'Do you want to activate this module ?', 'MODULE_ADVANCED_SEARCH_MANUFACTURERS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 08:24:54', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1050, 'Please select the width for this modules', 'MODULE_ADVANCED_SEARCH_MANUFACTURERS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 08:24:54', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1051, 'Sort Order', 'MODULE_ADVANCED_SEARCH_MANUFACTURERS_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 2, NULL, '2018-07-31 08:24:54', NULL, '');
INSERT INTO `clic_configuration` VALUES(1052, 'Do you want to activate this module ?', 'MODULE_ADVANCED_SEARCH_PRICE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 08:24:58', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1053, 'Sort Order', 'MODULE_ADVANCED_SEARCH_PRICE_SORT_ORDER', '40', 'Sort Order (Lowest is displayed in first)', 6, 2, NULL, '2018-07-31 08:24:58', NULL, '');
INSERT INTO `clic_configuration` VALUES(1054, 'Do you want to activate this module ?', 'MODULE_BOXES_SEARCH_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 08:25:31', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1055, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_SEARCH_CONTENT_PLACEMENT', 'Right Column', 'Select the column where the boxe must be displayed', 6, 2, NULL, '2018-07-31 08:25:31', NULL, 'clic_cfg_set_boolean_value(array(\'Left Column\', \'Right Column\'),');
INSERT INTO `clic_configuration` VALUES(1056, 'Please, select the banner group to display a banner image', 'MODULE_BOXES_SEARCH_BANNER_GROUP', 'Default_boxe_search', 'Indicate the banner group to display a banner image. You must create a banner with this group to display the banner image : Marketing - Banner Management', 6, 3, NULL, '2018-07-31 08:25:31', NULL, '');
INSERT INTO `clic_configuration` VALUES(1057, 'Sort Order', 'MODULE_BOXES_SEARCH_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 08:25:31', NULL, '');
INSERT INTO `clic_configuration` VALUES(1058, 'Please, indicate where the boxe must be displayed', 'MODULE_BOXES_SEARCH_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 5, NULL, '2018-07-31 08:25:31', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(1059, 'Do you want to activate this module ?', 'MODULES_SITEMAP_SUMMARY_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 09:06:08', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1060, 'Please select the width for this modules', 'MODULES_SITEMAP_SUMMARY_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 09:06:08', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1061, 'Sort Order', 'MODULES_SITEMAP_SUMMARY_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 09:06:08', NULL, '');
INSERT INTO `clic_configuration` VALUES(1062, 'Do you want to activate this module ?', 'MODULE_HEADER_PAGE_MANAGER_HEADER_MENU_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 09:24:11', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1063, 'Please select the width for this modules', 'MODULE_HEADER_PAGE_MANAGER_HEADER_MENU_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 09:24:11', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1064, 'Sort Order', 'MODULE_HEADER_PAGE_MANAGER_HEADER_MENU_SORT_ORDER', '110', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 09:24:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(1065, 'Please, indicate where the boxe must be displayed', 'MODULE_HEADER_PAGE_MANAGER_HEADER_MENU_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 5, NULL, '2018-07-31 09:24:11', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(1066, 'Do you want to activate this module ?', 'MODULES_FOOTER_PAGE_MANAGER_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 09:33:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1067, 'Please select the width for this modules', 'MODULE_FOOTER_PAGE_MANAGER_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 09:33:37', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1068, 'Sort Order', 'MODULES_FOOTER_PAGE_MANAGER_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 09:33:37', NULL, '');
INSERT INTO `clic_configuration` VALUES(1069, 'Please, indicate where the boxe must be displayed', 'MODULE_FOOTER_PAGE_MANAGER_DISPLAY_PAGES', 'all', 'Select the page where the boxe must be displayed', 6, 5, NULL, '2018-07-31 09:33:37', NULL, 'clic_cfg_set_select_pages_list');
INSERT INTO `clic_configuration` VALUES(1080, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_INFO_DESCRIPTION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 11:12:51', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1081, 'Please select the width for this modules', 'MODULE_PRODUCTS_INFO_DESCRIPTION_CONTENT_WIDTH', '8', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 11:12:51', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1082, 'Please indicate where you want to display the module ?', 'MODULE_PRODUCTS_INFO_DESCRIPTION_POSITION', 'float-none', 'Indicate where you want to display the module', 6, 2, NULL, '2018-07-31 11:12:51', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'),');
INSERT INTO `clic_configuration` VALUES(1083, 'Sort Order', 'MODULE_PRODUCTS_INFO_DESCRIPTION_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 3, NULL, '2018-07-31 11:12:51', NULL, '');
INSERT INTO `clic_configuration` VALUES(1084, 'Do you want to display this module ?', 'MODULE_PRODUCTS_INFO_GALLERY_STATUS', 'True', 'Activate the module in your shop ?', 6, 1, NULL, '2018-07-31 11:12:56', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1085, 'Please, select the content size', 'MODULE_PRODUCTS_INFO_GALLERY_CONTENT_WIDTH', '4', 'Please, specif a number betwen 1 ad 12', 6, 1, NULL, '2018-07-31 11:12:56', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1086, 'Where do want to display the gallery position ?', 'MODULE_PRODUCTS_INFO_GALLERY_POSITION', 'float-end', 'select the good value', 6, 2, NULL, '2018-07-31 11:12:56', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1087, 'Please select the width of the thumbail ?', 'MODULE_PRODUCTS_INFO_GALLERY_THUMBAIL_WIDTH', '70', 'Please write a number in px', 6, 1, NULL, '2018-07-31 11:12:56', NULL, '');
INSERT INTO `clic_configuration` VALUES(1088, 'Please select the height of the thumbail ?', 'MODULE_PRODUCTS_INFO_GALLERY_THUMBAIL_HEIGHT', '70', 'Please write a number in px', 6, 1, NULL, '2018-07-31 11:12:56', NULL, '');
INSERT INTO `clic_configuration` VALUES(1089, 'Do you want to display a message like new / special/ featured, favorite ?', 'MODULE_PRODUCTS_INFO_GALLERY_TICKER', 'False', ' display a message like new / special/ featured, favorite on the product<br /><br />The delay can be set in Configuration / Shop / minimal, maximal values', 6, 9, NULL, '2018-07-31 11:12:56', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1090, 'Do you want to display price discount in poucentage ?', 'MODULE_PRODUCTS_INFO_GALLERY_POURCENTAGE', 'False', 'Display price discount in poucentage', 6, 1, NULL, '2018-07-31 11:12:56', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1091, 'Sort Order', 'MODULE_PRODUCTS_INFO_GALLERY_SORT_ORDER', '25', 'Sort Order (Lowest is displayed in first)', 6, 3, NULL, '2018-07-31 11:12:56', NULL, '');
INSERT INTO `clic_configuration` VALUES(1092, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_INFO_MODEL_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 11:13:00', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1093, 'Please select the width for this modules', 'MODULE_PRODUCTS_INFO_MODEL_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 11:13:00', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1094, 'Please indicate where you want to display the module ?', 'MODULE_PRODUCTS_INFO_MODEL_POSITION', 'float-none', 'Indicate where you want to display the module', 6, 2, NULL, '2018-07-31 11:13:00', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\') ');
INSERT INTO `clic_configuration` VALUES(1095, 'Sort Order', 'MODULE_PRODUCTS_INFO_MODEL_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 3, NULL, '2018-07-31 11:13:00', NULL, '');
INSERT INTO `clic_configuration` VALUES(1096, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_INFO_NAME_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 11:13:05', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1097, 'Please select the width for this modules', 'MODULE_PRODUCTS_INFO_NAME_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 11:13:05', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1098, 'Please indicate where you want to display the module ?', 'MODULE_PRODUCTS_INFO_NAME_POSITION', 'float-none', 'Indicate where you want to display the module', 6, 2, NULL, '2018-07-31 11:13:05', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\') ');
INSERT INTO `clic_configuration` VALUES(1099, 'Sort Order', 'MODULE_PRODUCTS_INFO_NAME_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 3, NULL, '2018-07-31 11:13:05', NULL, '');
INSERT INTO `clic_configuration` VALUES(1100, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_INFO_OPTIONS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 11:13:10', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1101, 'Please select the width for this modules', 'MODULE_PRODUCTS_INFO_OPTIONS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 11:13:10', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1102, 'Please indicate where you want to display the module ?', 'MODULE_PRODUCTS_INFO_OPTIONS_POSITION', 'float-none', 'Indicate where you want to display the module', 6, 2, NULL, '2018-07-31 11:13:10', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'),');
INSERT INTO `clic_configuration` VALUES(1103, 'Sort Order', 'MODULE_PRODUCTS_INFO_OPTIONS_SORT_ORDER', '90', 'Sort Order (Lowest is displayed in first)', 6, 3, NULL, '2018-07-31 11:13:10', NULL, '');
INSERT INTO `clic_configuration` VALUES(1104, 'Do you want to activate this module ?', 'MODULE_PRODUCTS_INFO_PRICE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 11:13:14', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1105, 'Please select the width for this modules', 'MODULE_PRODUCTS_INFO_PRICE_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 11:13:14', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1106, 'Please indicate where you want to display the module ?', 'MODULE_PRODUCTS_INFO_PRICE_POSITION', 'float-none', 'Indicate where you want to display the module', 6, 2, NULL, '2018-07-31 11:13:14', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'),');
INSERT INTO `clic_configuration` VALUES(1107, 'Sort Order', 'MODULE_PRODUCTS_INFO_PRICE_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 3, NULL, '2018-07-31 11:13:14', NULL, '');
INSERT INTO `clic_configuration` VALUES(1108, 'Installed Modules', 'MODULE_MODULES_CREATE_ACCOUNT_INSTALLED', 'ca_create_account_introduction.php;ca_create_account_success.php;ca_create_account_registration.php;ca_create_account_privacy_condition.php;ca_create_account_button_process.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-10-10 15:13:22', '2018-07-31 14:28:21', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1109, 'Installed Modules', 'MODULE_MODULES_CREATE_ACCOUNT_PRO_INSTALLED', 'cap_create_account_pro_introduction.php;cap_create_account_pro_registration.php;cap_create_account_pro_privacy_condition.php;cap_create_account_pro_button_process.php;cap_create_account_pro_success.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-10-10 15:16:41', '2018-07-31 14:28:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1110, 'Do you want to activate this module ?', 'MODULE_LOGIN_CONNEXION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:31:44', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1111, 'Please select the width for this modules', 'MODULE_LOGIN_CONNEXION_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:31:44', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1112, 'Please indicate where you want to display the module ?', 'MODULE_LOGIN_CONNEXION_POSITION', 'float-none', 'Affiche le module à gauche ou à droite<br><br><i>(Valeur Left = Gauche <br>Valeur Right = Droite <br>Valeur None = Aucun)</i>', 6, 2, NULL, '2018-07-31 14:31:44', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'),');
INSERT INTO `clic_configuration` VALUES(1113, 'Sort Order', 'MODULE_LOGIN_CONNEXION_SORT_ORDER', '5', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:31:44', NULL, '');
INSERT INTO `clic_configuration` VALUES(1114, 'Do you want to activate this module ?', 'MODULE_LOGIN_MODE_B2B_STATUS', 'True', 'Souhaitez vous activer ce module ?', 6, 1, NULL, '2018-07-31 14:31:48', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1115, 'Please select the width for this modules', 'MODULE_LOGIN_MODE_B2B_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:31:48', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1116, 'Please indicate where you want to display the module ?', 'MODULE_LOGIN_MODE_B2B_POSITION', 'float-none', 'Affiche le module à gauche ou à droite<br><br><i>(Valeur Left = Gauche <br>Valeur Right = Droite <br>Valeur None = Aucun)</i>', 6, 2, NULL, '2018-07-31 14:31:48', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'),');
INSERT INTO `clic_configuration` VALUES(1117, 'Sort Order', 'MODULE_LOGIN_MODE_B2B_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:31:48', NULL, '');
INSERT INTO `clic_configuration` VALUES(1118, 'Do you want to activate this module ?', 'MODULE_LOGIN_MODE_B2B_B2C_STATUS', 'True', 'Souhaitez vous activer ce module ?', 6, 1, NULL, '2018-07-31 14:31:52', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1119, 'Please select the width for this modules', 'MODULE_LOGIN_MODE_B2B_B2C_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:31:52', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1120, 'Sort Order', 'MODULE_LOGIN_MODE_B2B_B2C_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:31:52', NULL, '');
INSERT INTO `clic_configuration` VALUES(1121, 'Do you want to activate this module ?', 'MODULE_LOGIN_MODE_B2C_STATUS', 'True', 'Souhaitez vous activer ce module ?', 6, 1, NULL, '2018-07-31 14:31:56', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1122, 'Please select the width for this modules', 'MODULE_LOGIN_MODE_B2C_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:31:56', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1123, 'Please indicate where you want to display the module ?', 'MODULE_LOGIN_MODE_B2C_POSITION', 'float-none', 'Affiche le module à gauche ou à droite<br><br><i>(Valeur Left = Gauche <br>Valeur Right = Droite <br>Valeur None = Aucun)</i>', 6, 2, NULL, '2018-07-31 14:31:56', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'),');
INSERT INTO `clic_configuration` VALUES(1124, 'Sort Order', 'MODULE_LOGIN_MODE_B2C_SORT_ORDER', '40', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:31:56', NULL, '');
INSERT INTO `clic_configuration` VALUES(1125, 'Do you want to activate this module ?', 'MODULE_LOGIN_PASSWORD_FORGOTTEN_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:32:00', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1126, 'Please select the width for this modules', 'MODULE_LOGIN_PASSWORD_FORGOTTEN_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:32:00', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1127, 'Sort Order', 'MODULE_LOGIN_PASSWORD_FORGOTTEN_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:32:00', NULL, '');
INSERT INTO `clic_configuration` VALUES(1128, 'Do you want to activate this module ?', 'MODULE_LOGIN_PASSWORD_RESET_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:32:04', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1129, 'Please select the width for this modules', 'MODULE_LOGIN_PASSWORD_RESET_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:32:04', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1130, 'Sort Order', 'MODULE_LOGIN_PASSWORD_RESET_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:32:04', NULL, '');
INSERT INTO `clic_configuration` VALUES(1131, 'Do you want to activate this module ?', 'MODULE_CREATE_ACCOUNT_INTRODUCTION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:40:31', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1132, 'Please select the width for this modules', 'MODULE_CREATE_ACCOUNT_INTRODUCTION_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:40:31', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1133, 'Sort Order', 'MODULE_CREATE_ACCOUNT_INTRODUCTION_SORT_ORDER', '50', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:40:31', NULL, '');
INSERT INTO `clic_configuration` VALUES(1134, 'Do you want to activate this module ?', 'MODULE_CREATE_ACCOUNT_REGISTRATION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:40:35', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1135, 'Please select the width for this modules', 'MODULE_CREATE_ACCOUNT_REGISTRATION_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:40:35', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1136, 'Sort Order', 'MODULE_CREATE_ACCOUNT_REGISTRATION_SORT_ORDER', '150', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:40:35', NULL, '');
INSERT INTO `clic_configuration` VALUES(1137, 'Do you want to activate this module ?', 'MODULE_CREATE_ACCOUNT_SUCCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:40:39', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1138, 'Please select the width for this modules', 'MODULE_CREATE_ACCOUNT_SUCCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:40:39', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1139, 'Sort Order', 'MODULE_CREATE_ACCOUNT_SUCCESS_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:40:39', NULL, '');
INSERT INTO `clic_configuration` VALUES(1140, 'Do you want to activate this module ?', 'MODULE_CREATE_ACCOUNT_PRO_INTRODUCTION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:40:51', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1141, 'Please select the width for this modules', 'MODULE_CREATE_ACCOUNT_PRO_INTRODUCTION_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:40:51', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1142, 'Sort Order', 'MODULE_CREATE_ACCOUNT_PRO_INTRODUCTION_SORT_ORDER', '50', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:40:51', NULL, '');
INSERT INTO `clic_configuration` VALUES(1143, 'Do you want to activate this module ?', 'MODULE_CREATE_ACCOUNT_PRO_REGISTRATION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:40:56', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1144, 'Please select the width for this modules', 'MODULE_CREATE_ACCOUNT_PRO_REGISTRATION_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:40:56', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1145, 'Sort Order', 'MODULE_CREATE_ACCOUNT_PRO_REGISTRATION_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:40:56', NULL, '');
INSERT INTO `clic_configuration` VALUES(1146, 'Do you want to activate this module ?', 'MODULE_CREATE_ACCOUNT_PRO_SUCCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:41:00', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1147, 'Please select the width for this modules', 'MODULE_CREATE_ACCOUNT_PRO_SUCCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:41:00', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1148, 'Sort Order', 'MODULE_CREATE_ACCOUNT_PRO_SUCCESS_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:41:00', NULL, '');
INSERT INTO `clic_configuration` VALUES(1149, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_SHIPPING_ADDRESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 14:59:56', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1150, 'Please select the width for this modules', 'MODULE_CHECKOUT_SHIPPING_ADDRESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 14:59:56', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1151, 'Sort Order', 'MODULE_CHECKOUT_SHIPPING_ADDRESS_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 14:59:56', NULL, '');
INSERT INTO `clic_configuration` VALUES(1152, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_SHIPPING_BUTTON_PROCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:00', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1153, 'Please select the width for this modules', 'MODULE_CHECKOUT_SHIPPING_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:00', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1154, 'Sort Order', 'MODULE_CHECKOUT_SHIPPING_BUTTON_PROCESS_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:00', NULL, '');
INSERT INTO `clic_configuration` VALUES(1155, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_SHIPPING_COMMENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:05', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1156, 'Please select the width for this modules', 'MODULE_CHECKOUT_SHIPPING_COMMENT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:05', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1157, 'Sort Order', 'MODULE_CHECKOUT_SHIPPING_COMMENT_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:05', NULL, '');
INSERT INTO `clic_configuration` VALUES(1158, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_SHIPPING_LISTING_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:11', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1159, 'Please select the width for this modules', 'MODULE_CHECKOUT_SHIPPING_LISTING_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:11', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1160, 'Sort Order', 'MODULE_CHECKOUT_SHIPPING_LISTING_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:11', NULL, '');
INSERT INTO `clic_configuration` VALUES(1161, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_PAYMENT_ADDRESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:28', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1162, 'Please select the width for this modules', 'MODULE_CHECKOUT_PAYMENT_ADDRESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:28', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1163, 'Sort Order', 'MODULE_CHECKOUT_PAYMENT_ADDRESS_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:28', NULL, '');
INSERT INTO `clic_configuration` VALUES(1164, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_PAYMENT_AGREEMENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:32', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1165, 'Please select the width for this modules', 'MODULE_CHECKOUT_PAYMENT_AGREEMENT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:32', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1166, 'Sort Order', 'MODULE_CHECKOUT_PAYMENT_AGREEMENT_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:32', NULL, '');
INSERT INTO `clic_configuration` VALUES(1167, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_PAYMENT_BUTTON_PROCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:36', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1168, 'Please select the width for this modules', 'MODULE_CHECKOUT_PAYMENT_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:36', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1169, 'Sort Order', 'MODULE_CHECKOUT_PAYMENT_BUTTON_PROCESS_SORT_ORDER', '130', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:36', NULL, '');
INSERT INTO `clic_configuration` VALUES(1170, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_PAYMENT_COMMENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:41', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1171, 'Please select the width for this modules', 'MODULE_CHECKOUT_PAYMENT_COMMENT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:41', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1172, 'Sort Order', 'MODULE_CHECKOUT_PAYMENT_COMMENT_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:41', NULL, '');
INSERT INTO `clic_configuration` VALUES(1173, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_PAYMENT_LISTING_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:00:45', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1174, 'Please select the width for this modules', 'MODULE_CHECKOUT_PAYMENT_LISTING_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:00:45', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1175, 'Sort Order', 'MODULE_CHECKOUT_PAYMENT_LISTING_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:00:45', NULL, '');
INSERT INTO `clic_configuration` VALUES(1176, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_BILLING_ADDRESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:13', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1177, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_BILLING_ADDRESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:13', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1178, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_BILLING_ADDRESS_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:13', NULL, '');
INSERT INTO `clic_configuration` VALUES(1179, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_CUSTOMERS_COMMENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:17', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1180, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_CUSTOMERS_COMMENT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:17', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1181, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_CUSTOMERS_COMMENT_SORT_ORDER', '80', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:17', NULL, '');
INSERT INTO `clic_configuration` VALUES(1182, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_DELIVERY_ADDRESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:21', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1183, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_DELIVERY_ADDRESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:21', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1184, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_DELIVERY_ADDRESS_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:21', NULL, '');
INSERT INTO `clic_configuration` VALUES(1185, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_LAW_HAMON_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:26', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1186, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_LAW_HAMON_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:26', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1187, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_LAW_HAMON_SORT_ORDER', '300', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:26', NULL, '');
INSERT INTO `clic_configuration` VALUES(1188, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_ORDER_TOTAL_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:30', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1189, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_ORDER_TOTAL_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:30', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1190, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_ORDER_TOTAL_SORT_ORDER', '60', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:30', NULL, '');
INSERT INTO `clic_configuration` VALUES(1191, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_PAYMENT_INFORMATION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:34', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1192, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_PAYMENT_INFORMATION_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:34', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1193, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_PAYMENT_INFORMATION_SORT_ORDER', '85', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:34', NULL, '');
INSERT INTO `clic_configuration` VALUES(1194, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_PROCESS_ORDER_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:41', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1195, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_PROCESS_ORDER_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:41', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1196, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_PROCESS_ORDER_SORT_ORDER', '320', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:41', NULL, '');
INSERT INTO `clic_configuration` VALUES(1197, 'Do you want to activate this module ?', 'MODULE_CHECKOUT_CONFIRMATION_PRODUCTS_LISTING_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:01:46', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1198, 'Please select the width for this modules', 'MODULE_CHECKOUT_CONFIRMATION_PRODUCTS_LISTING_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:01:46', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1199, 'Sort Order', 'MODULE_CHECKOUT_CONFIRMATION_PRODUCTS_LISTING_SORT_ORDER', '50', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:01:46', NULL, '');
INSERT INTO `clic_configuration` VALUES(1200, 'Enable Product Downloads Module', 'MODULE_CHECKOUT_SUCCESS_DOWNLOADS_STATUS', 'True', 'Should ordered product download links be shown on the checkout success page ?', 6, 1, NULL, '2018-07-31 15:02:00', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1201, 'Sort Order', 'MODULE_CHECKOUT_SUCCESS_DOWNLOADS_SORT_ORDER', '3', 'Sort order of display. Lowest is displayed first', 6, 3, NULL, '2018-07-31 15:02:00', NULL, '');
INSERT INTO `clic_configuration` VALUES(1202, 'Enable Product Downloads Module', 'MODULE_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Should ordered product download links be shown on the checkout success page ?', 6, 1, NULL, '2018-07-31 15:02:04', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1203, 'Please select the width to display ?', 'MODULE_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:02:04', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1204, 'Sort Order', 'MODULE_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_SORT_ORDER', '2', 'Sort order of display. Lowest is displayed first', 6, 3, NULL, '2018-07-31 15:02:04', NULL, '');
INSERT INTO `clic_configuration` VALUES(1205, 'Enable Product Downloads Module', 'MODULE_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_STATUS', 'True', 'Should ordered product download links be shown on the checkout success page ?', 6, 1, NULL, '2018-07-31 15:02:09', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1206, 'Please, choose you minutes tor edirect the page', 'MODULE_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_MINUTES', '60', 'Redirect customers to the index page after an order older than this amount is viewed', 6, 2, NULL, '2018-07-31 15:02:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(1207, 'Sort Order', 'MODULE_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_SORT_ORDER', '4', 'Sort order of display. Lowest is displayed first', 6, 3, NULL, '2018-07-31 15:02:09', NULL, '');
INSERT INTO `clic_configuration` VALUES(1208, 'Enable Product Downloads Module', 'MODULE_CHECKOUT_SUCCESS_THANK_YOU_STATUS', 'True', 'Should ordered product download links be shown on the checkout success page ?', 6, 1, NULL, '2018-07-31 15:02:14', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1209, 'Select the width to display?', 'MODULE_CHECKOUT_SUCCESS_THANK_YOU_CONTENT_WIDTH', '12', 'select a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:02:14', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1210, 'Sort Order', 'MODULE_CHECKOUT_SUCCESS_THANK_YOU_SORT_ORDER', '1', 'Sort order of display. Lowest is displayed first', 6, 3, NULL, '2018-07-31 15:02:14', NULL, '');
INSERT INTO `clic_configuration` VALUES(1211, 'Installed Modules', 'MODULE_MODULES_PRODUCTS_REVIEWS_INSTALLED', 'pr_products_reviews_listing_description.php;pr_products_reviews_listing_image.php;pr_products_reviews_info_content.php;pr_products_reviews_info_image.php;pr_products_reviews_info_button_process.php;pr_products_reviews_listing_button_process.php;pr_products_reviews_listing_content.php;pr_products_reviews_write_comment.php;pr_products_reviews_write_image.php;pr_products_reviews_write_rating.php;pr_products_reviews_write_button_process.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:09:59', '2018-07-31 15:08:31', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1212, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_INFO_BUTTON_PROCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:00', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1213, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_INFO_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:00', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1214, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_INFO_BUTTON_PROCESS_SORT_ORDER', '60', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:00', NULL, '');
INSERT INTO `clic_configuration` VALUES(1215, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_INFO_CONTENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:05', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1216, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_INFO_CONTENT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:05', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1217, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_INFO_CONTENT_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:05', NULL, '');
INSERT INTO `clic_configuration` VALUES(1218, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_INFO_IMAGE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:10', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1219, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_INFO_IMAGE_CONTENT_WIDTH', '4', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:10', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1220, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_INFO_IMAGE_SORT_ORDER', '40', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:10', NULL, '');
INSERT INTO `clic_configuration` VALUES(1221, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_BUTTON_PROCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:18', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1222, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_LISTING_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:18', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1223, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_LISTING_BUTTON_PROCESS_SORT_ORDER', '40', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:18', NULL, '');
INSERT INTO `clic_configuration` VALUES(1224, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_CONTENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:22', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1225, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_LISTING_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:22', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1226, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_LISTING_CONTENT_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:22', NULL, '');
INSERT INTO `clic_configuration` VALUES(1227, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_DESCRIPTION_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:30', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1228, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_LISTING_DESCRIPTION_CONTENT_WIDTH', '8', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:30', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1229, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_LISTING_DESCRIPTION_SORT_ORDER', '15', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:30', NULL, '');
INSERT INTO `clic_configuration` VALUES(1230, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_IMAGE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:37', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1231, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_LISTING_IMAGE_CONTENT_WIDTH', '4', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:37', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1232, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_LISTING_IMAGE_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:37', NULL, '');
INSERT INTO `clic_configuration` VALUES(1233, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_COMMENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:43', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1234, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_WRITE_COMMENT_CONTENT_WIDTH', '5', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:43', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1235, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_WRITE_COMMENT_SORT_ORDER', '200', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:43', NULL, '');
INSERT INTO `clic_configuration` VALUES(1236, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_RATING_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:53', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1237, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_WRITE_RATING_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:53', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1238, 'Veuillez selectionner la couleur des étoiles ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_RATING_COLOR', '#A0A0A0', 'Veuillez indiquer une couleur de type #A0A0A0 (hexadecimal)', 6, 3, NULL, '2018-07-31 15:09:53', NULL, '');
INSERT INTO `clic_configuration` VALUES(1239, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_WRITE_RATING_SORT_ORDER', '500', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:53', NULL, '');
INSERT INTO `clic_configuration` VALUES(1240, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_IMAGE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:09:59', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1241, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_WRITE_IMAGE_CONTENT_WIDTH', '7', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:09:59', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1242, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_WRITE_IMAGE_SORT_ORDER', '300', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:09:59', NULL, '');
INSERT INTO `clic_configuration` VALUES(1243, 'Do you want to activate this module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_BUTTON_PROCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:10:06', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1244, 'Please select the width for this modules', 'MODULES_PRODUCTS_REVIEWS_WRITE_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:10:06', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1245, 'Sort Order', 'MODULES_PRODUCTS_REVIEWS_WRITE_BUTTON_PROCESS_SORT_ORDER', '600', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:10:06', NULL, '');
INSERT INTO `clic_configuration` VALUES(1246, 'Installed Modules', 'MODULE_MODULES_TELL_A_FRIEND_INSTALLED', 'ta_tell_a_friend_customer.php;ta_tell_a_friend_send_friend.php;ta_tell_a_friend_message.php;ta_tell_a_friend_customer_agreement.php;ta_tell_a_friend_button_process.php', 'This is automatically updated. No need to edit.', 6, 0, '2018-07-31 15:44:35', '2018-07-31 15:43:58', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1247, 'Do you want to activate this module ?', 'MODULES_TELL_A_FRIEND_BUTTON_PROCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:44:03', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1248, 'Please select the width for this modules', 'MODULES_TELL_A_FRIEND_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:44:03', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1249, 'Sort Order', 'MODULES_TELL_A_FRIEND_BUTTON_PROCESS_SORT_ORDER', '60', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:44:03', NULL, '');
INSERT INTO `clic_configuration` VALUES(1250, 'Do you want to activate this module ?', 'MODULES_TELL_A_FRIEND_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:44:08', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1251, 'Please select the width for this modules', 'MODULES_TELL_A_FRIEND_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:44:08', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1252, 'Sort Order', 'MODULES_TELL_A_FRIEND_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:44:08', NULL, '');
INSERT INTO `clic_configuration` VALUES(1253, 'Do you want to activate this module ?', 'MODULES_TELL_A_FRIEND_CUSTOMER_AGREEMENT_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:44:12', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1254, 'Please select the width for this modules', 'MODULES_TELL_A_FRIEND_CUSTOMER_AGREEMENT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:44:12', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1255, 'Sort Order', 'MODULES_TELL_A_FRIEND_CUSTOMER_AGREEMENT_SORT_ORDER', '50', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:44:12', NULL, '');
INSERT INTO `clic_configuration` VALUES(1256, 'Do you want to activate this module ?', 'MODULES_TELL_A_FRIEND_MESSAGE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:44:16', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1257, 'Please select the width for this modules', 'MODULES_TELL_A_FRIEND_MESSAGE_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:44:16', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1258, 'Sort Order', 'MODULES_TELL_A_FRIEND_MESSAGE_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:44:16', NULL, '');
INSERT INTO `clic_configuration` VALUES(1259, 'Do you want to activate this module ?', 'MODULES_TELL_A_FRIEND_SEND_FRIEND_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:44:21', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1260, 'Please select the width for this modules', 'MODULES_TELL_A_FRIEND_SEND_FRIEND_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:44:21', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1261, 'Sort Order', 'MODULES_TELL_A_FRIEND_SEND_FRIEND_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 15:44:21', NULL, '');
INSERT INTO `clic_configuration` VALUES(1265, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_EDIT_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:50:43', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1266, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_EDIT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:50:43', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1267, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_EDIT_TITLE_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 15:50:43', NULL, '');
INSERT INTO `clic_configuration` VALUES(1268, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_GDPR_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:50:47', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1269, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_GDPR_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:50:47', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1270, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_GDPR_TITLE_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 15:50:47', NULL, '');
INSERT INTO `clic_configuration` VALUES(1271, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:50:52', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1272, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:50:52', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1273, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_TITLE_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 15:50:52', NULL, '');
INSERT INTO `clic_configuration` VALUES(1274, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_ADDRESS_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:50:57', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1275, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_ADDRESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:50:57', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1276, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_ADDRESS_TITLE_SORT_ORDER', '20', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 15:50:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1277, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_BUTTON_BACK_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:01', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1278, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_BUTTON_BACK_CONTENT_WIDTH', '6', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:01', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1279, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_BUTTON_BACK_TITLE_SORT_ORDER', '170', 'Sort Order (Lowest is displayed in first)', 6, 300, NULL, '2018-07-31 15:51:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1280, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_DOWNLOAD_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:05', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1281, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_DOWNLOAD_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:05', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1282, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_DOWNLOAD_TITLE_SORT_ORDER', '125', 'Sort Order (Lowest is displayed in first)', 6, 115, NULL, '2018-07-31 15:51:05', NULL, '');
INSERT INTO `clic_configuration` VALUES(1283, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_INVOICE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:10', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1284, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_INVOICE_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:10', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1285, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_INVOICE_SORT_ORDER', '30', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 15:51:10', NULL, '');
INSERT INTO `clic_configuration` VALUES(1286, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_INVOICE_PDF_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:15', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1287, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_INVOICE_PDF_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:15', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1288, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_INVOICE_PDF_TITLE_SORT_ORDER', '110', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 15:51:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1289, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_ORDER_COMMENT_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:20', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1290, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_ORDER_COMMENT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:20', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1291, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_HISTORY_INFO_ORDER_COMMENT_TITLE_SORT_ORDER', '35', 'Sort Order (Lowest is displayed in first)', 6, 100, NULL, '2018-07-31 15:51:20', NULL, '');
INSERT INTO `clic_configuration` VALUES(1292, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_LIST_ORDER_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:25', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1293, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_LIST_ORDER_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:25', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1294, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_LIST_ORDER_TITLE_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 10, NULL, '2018-07-31 15:51:25', NULL, '');
INSERT INTO `clic_configuration` VALUES(1295, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_MAILING_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:31', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1296, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_MAILING_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:31', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1297, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_MAILING_TITLE_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 10, NULL, '2018-07-31 15:51:31', NULL, '');
INSERT INTO `clic_configuration` VALUES(1298, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_MY_ACCOUNT_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:35', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1299, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_MY_ACCOUNT_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:35', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1300, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_MY_ACCOUNT_TITLE_SORT_ORDER', '15', 'Sort Order (Lowest is displayed in first)', 6, 20, NULL, '2018-07-31 15:51:35', NULL, '');
INSERT INTO `clic_configuration` VALUES(1301, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_NEWSLETTER_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:39', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1302, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_NEWSLETTER_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:39', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1303, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_NEWSLETTER_TITLE_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 10, NULL, '2018-07-31 15:51:39', NULL, '');
INSERT INTO `clic_configuration` VALUES(1304, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_NOTIFICATIONS_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:54', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1305, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_NOTIFICATIONS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:54', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1306, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_NOTIFICATIONS_TITLE_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 10, NULL, '2018-07-31 15:51:54', NULL, '');
INSERT INTO `clic_configuration` VALUES(1307, 'Do you want to activate this module ?', 'MODULE_ACCOUNT_CUSTOMERS_PASSWORD_TITLE_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 15:51:59', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1308, 'Please select the width for this modules', 'MODULE_ACCOUNT_CUSTOMERS_PASSWORD_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 15:51:59', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1309, 'Sort Order', 'MODULE_ACCOUNT_CUSTOMERS_PASSWORD_TITLE_SORT_ORDER', '120', 'Sort Order (Lowest is displayed in first)', 6, 10, NULL, '2018-07-31 15:51:59', NULL, '');
INSERT INTO `clic_configuration` VALUES(1312, 'Status', 'CLICSHOPPING_APP_DEFINE_LANGUAGE_DL_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-31 16:51:15', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1313, 'Sort Order', 'CLICSHOPPING_APP_DEFINE_LANGUAGE_DL_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-31 16:51:15', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1314, 'Parameter [DefineLanguage App]', 'MODULE_MODULES_DEFINE_LANGUAGE_INSTALLED', 'Tools\\DefineLanguage\\DL', 'Parameter [DefineLanguage App]', 6, 0, NULL, '2018-07-31 16:51:15', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1331, 'Handling Cost', 'CLICSHOPPING_APP_ITEM_IT_HANDLING', '', 'The handling cost for this order', 6, 0, NULL, '2018-07-31 16:55:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1332, 'Shipping Zone', 'CLICSHOPPING_APP_ITEM_IT_ZONE', '0', 'Enable this module globally or limit it to customers shipping to the selected zone only.', 6, 0, NULL, '2018-07-31 16:55:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1333, 'Do you want to display the shipping module for B2C customer ?', 'CLICSHOPPING_APP_ITEM_IT_NO_AUTHORIZE', 'True', 'Display the shipping for B2C customer ?', 6, 0, NULL, '2018-07-31 16:55:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1334, 'Delivery Cost', 'CLICSHOPPING_APP_ITEM_IT_COST', '2.50', 'The delivery cost will be multiplied by the number of items in the order using this method', 6, 0, NULL, '2018-07-31 16:55:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1335, 'Status', 'CLICSHOPPING_APP_ITEM_IT_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-07-31 16:55:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1336, 'Tax Class', 'CLICSHOPPING_APP_ITEM_IT_TAX_CLASS', '', 'Select the tax class than you want applied', 6, 0, NULL, '2018-07-31 16:55:29', NULL, 'clic_cfg_set_tax_classes_pull_down_menu');
INSERT INTO `clic_configuration` VALUES(1337, 'Shipping Logo', 'CLICSHOPPING_APP_ITEM_IT_LOGO', '', 'Please, indicate the file of the logo with the extension(.gif, .jpg, etc...) to display in the shipping page.<br /><strong>Note :</strong></font><br />The logo must be in the directory  sources/images/logos/shipping/', 6, 0, NULL, '2018-07-31 16:55:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1338, 'Sort Order', 'CLICSHOPPING_APP_ITEM_IT_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-07-31 16:55:29', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1343, 'Do you want to activate this module ?', 'MODULES_CONTACT_US_FORM_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 17:00:19', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1344, 'Please select the width for this modules', 'MODULE_CONTACT_US_FORM_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 17:00:19', NULL, 'clic_cfg_set_content_module_width_text_down');
INSERT INTO `clic_configuration` VALUES(1346, 'Sort Order', 'MODULES_CONTACT_US_FORM_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 20, NULL, '2018-07-31 17:00:19', NULL, '');
INSERT INTO `clic_configuration` VALUES(1347, 'Do you want to activate this module ?', 'MODULES_CONTACT_US_PAGE_MANAGER_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 17:00:24', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1348, 'Please select the width for this modules', 'MODULES_CONTACT_US_PAGE_MANAGER_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 17:00:24', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1349, 'Sort Order', 'MODULES_CONTACT_US_PAGE_MANAGER_SORT_ORDER', '10', 'Sort Order (Lowest is displayed in first)', 6, 10, NULL, '2018-07-31 17:00:24', NULL, '');
INSERT INTO `clic_configuration` VALUES(1350, 'Do you want to activate this module ?', 'MODULES_CONTACT_US_SUCCESS_STATUS', 'True', 'Activate this module in your shop', 6, 1, NULL, '2018-07-31 17:00:29', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1351, 'Please select the width for this modules', 'MODULES_CONTACT_US_SUCCESS_CONTENT_WIDTH', '12', 'Indicate a number between 1 and 12', 6, 1, NULL, '2018-07-31 17:00:29', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1352, 'Sort Order', 'MODULES_CONTACT_US_SUCCESS_SORT_ORDER', '100', 'Sort Order (Lowest is displayed in first)', 6, 4, NULL, '2018-07-31 17:00:29', NULL, '');
INSERT INTO `clic_configuration` VALUES(1356, 'Status', 'CLICSHOPPING_APP_PRODUCTS_ATTRIBUTES_PA_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-08-01 08:51:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1357, 'Sort Order', 'CLICSHOPPING_APP_PRODUCTS_ATTRIBUTES_PA_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-08-01 08:51:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1358, 'Parameter [ProductsAttributes App]', 'MODULE_MODULES_PRODUCTS_ATTRIBUTES_INSTALLED', 'Catalog\\ProductsAttributes\\PA', 'Parameter [ProductsAttributes App]', 6, 0, NULL, '2018-08-01 08:51:01', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1377, 'cfg_products_modules_status_title', 'CLICSHOPPING_APP_MODULES_MO_STATUS', 'True', 'cfg_products_modules_status_description', 6, 0, NULL, '2018-08-20 23:26:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1378, 'cfg_products_modules_sort_order_title', 'CLICSHOPPING_APP_MODULES_MO_SORT_ORDER', '30', 'cfg_products_modules_sort_order_description', 6, 0, NULL, '2018-08-20 23:26:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1379, 'Parameter [Modules App]', 'MODULE_MODULES_MODULES_INSTALLED', 'Configuration\\Modules\\MO', 'Parameter [Modules App]', 6, 0, NULL, '2018-08-20 23:26:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1380, 'Where Do you want to display the module ?', 'MODULE_LOGIN_MODE_B2B_B2C_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2018-10-02 22:28:26', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1391, 'Do you want activate this module ?', 'MODULE_CREATE_ACCOUNT_BUTTON_PROCESS_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-10-10 15:13:18', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1392, 'Please select the width of the module', 'MODULE_CREATE_ACCOUNT_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-10-10 15:13:18', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1393, 'Sort order', 'MODULE_CREATE_ACCOUNT_BUTTON_PROCESS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-10-10 15:13:18', NULL, '');
INSERT INTO `clic_configuration` VALUES(1394, 'Do you want activate this module ?', 'MODULE_CREATE_ACCOUNT_PRIVACY_CONDITION_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-10-10 15:13:22', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1395, 'Please select the width of the module', 'MODULE_CREATE_ACCOUNT_PRIVACY_CONDITION_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-10-10 15:13:22', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1396, 'Sort order', 'MODULE_CREATE_ACCOUNT_PRIVACY_CONDITION_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-10-10 15:13:22', NULL, '');
INSERT INTO `clic_configuration` VALUES(1397, 'Do you want activate this module ?', 'MODULES_CONTACT_US_FORM_BUTTON_PROCESS_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-10-10 15:13:54', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1398, 'Please select the width of the module', 'MODULES_CONTACT_US_FORM_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-10-10 15:13:54', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1399, 'Sort order', 'MODULES_CONTACT_US_FORM_BUTTON_PROCESS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first', 6, 10, NULL, '2018-10-10 15:13:54', NULL, '');
INSERT INTO `clic_configuration` VALUES(1400, 'Do you want activate this module ?', 'MODULES_CONTACT_US_PRIVACY_CONDITION_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-10-10 15:13:57', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1401, 'Please select the width of the module', 'MODULES_CONTACT_US_PRIVACY_CONDITION_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-10-10 15:13:57', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1402, 'Sort order', 'MODULES_CONTACT_US_PRIVACY_CONDITION_SORT_ORDER', '450', 'Sort order of display. Lowest is displayed first', 6, 10, NULL, '2018-10-10 15:13:57', NULL, '');
INSERT INTO `clic_configuration` VALUES(1403, 'Do you want activate this module ?', 'MODULE_CREATE_ACCOUNT_PRO_BUTTON_PROCESS_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-10-10 15:16:26', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1404, 'Please select the width of the module', 'MODULE_CREATE_ACCOUNT_PRO_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-10-10 15:16:26', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1405, 'Sort order', 'MODULE_CREATE_ACCOUNT_PRO_BUTTON_PROCESS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-10-10 15:16:26', NULL, '');
INSERT INTO `clic_configuration` VALUES(1406, 'Do you want activate this module ?', 'MODULE_CREATE_ACCOUNT_PRO_PRIVACY_CONDITION_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-10-10 15:16:29', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1407, 'Please select the width of the module', 'MODULE_CREATE_ACCOUNT_PRO_PRIVACY_CONDITION_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-10-10 15:16:29', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1408, 'Sort order', 'MODULE_CREATE_ACCOUNT_PRO_PRIVACY_CONDITION_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-10-10 15:16:29', NULL, '');
INSERT INTO `clic_configuration` VALUES(1409, 'Do you want activate this module ?', 'MODULE_PRODUCTS_INFO_DATE_AVAILABLE_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-11-05 09:49:46', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1410, 'Please select the width of the module', 'MODULE_PRODUCTS_INFO_DATE_AVAILABLE_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-11-05 09:49:46', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1411, 'Where do youw want display this module ?', 'MODULE_PRODUCTS_INFO_DATE_AVAILABLE_POSITION', 'float-none', 'Display the module in function your choice.', 6, 2, NULL, '2018-11-05 09:49:46', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1412, 'Sort order', 'MODULE_PRODUCTS_INFO_DATE_AVAILABLE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first', 6, 3, NULL, '2018-11-05 09:49:46', NULL, '');
INSERT INTO `clic_configuration` VALUES(1413, 'Use Search-Engine Safe URLs Pro', 'SEARCH_ENGINE_FRIENDLY_URLS_PRO', 'false', 'Use search-engine safe urls for all site links with the title of the items.<br />Note : The native Urls must be on true', 34, 2, NULL, '2016-07-05 18:04:07', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(1416, 'Do you want activate this module ?', 'MODULE_SHOPPING_CART_CHECKOUT_STEP_STATUS', 'True', 'Do you want activate this module ?', 6, 1, NULL, '2018-11-20 11:56:39', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1417, 'Please select the width of the module ?', 'MODULE_SHOPPING_CART_CHECKOUT_STEP_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-11-20 11:56:39', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1418, 'Sort order', 'MODULE_SHOPPING_CART_CHECKOUT_STEP_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-11-20 11:56:39', NULL, '');
INSERT INTO `clic_configuration` VALUES(1419, 'Do you want activate this module ?', 'MODULE_SHOPPING_CART_ORDER_BUTTON_PROCESS_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-11-20 11:56:51', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1420, 'Please select the width of the module ?', 'MODULE_SHOPPING_CART_ORDER_BUTTON_PROCESS_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-11-20 11:56:51', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1421, 'Where do you to display this module ?', 'MODULE_SHOPPING_CART_ORDER_BUTTON_PROCESS_POSITION', 'float-none', 'Display the module at right or left (depends of your template configuration)', 6, 2, NULL, '2018-11-20 11:56:51', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1422, 'Sort order', 'MODULE_SHOPPING_CART_ORDER_BUTTON_PROCESS_SORT_ORDER', '350', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-11-20 11:56:51', NULL, '');
INSERT INTO `clic_configuration` VALUES(1423, 'Do you want activate this module ?', 'MODULE_SHOPPING_CART_OUT_OF_STOCK_MESSAGE_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-11-20 11:56:56', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1424, 'Please select the width of the module', 'MODULE_SHOPPING_CART_OUT_OF_STOCK_MESSAGE_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-11-20 11:56:56', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1425, 'Where do you to display this module ?', 'MODULE_SHOPPING_CART_OUT_OF_STOCK_MESSAGE_POSITION', 'float-none', 'Display the module at right or left (depends of your template configuration)', 6, 2, NULL, '2018-11-20 11:56:56', NULL, 'clic_cfg_set_boolean_value(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1426, 'Sort order', 'MODULE_SHOPPING_CART_OUT_OF_STOCK_MESSAGE_SORT_ORDER', '90', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-11-20 11:56:56', NULL, '');
INSERT INTO `clic_configuration` VALUES(1427, 'Do you want activate this module ?', 'MODULE_SHOPPING_CART_PRODUCTS_LISTING_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-11-20 11:57:00', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1428, 'Please select the width of the module ?', 'MODULE_SHOPPING_CART_PRODUCTS_LISTING_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-11-20 11:57:00', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1429, 'Sort order', 'MODULE_SHOPPING_CART_PRODUCTS_LISTING_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-11-20 11:57:00', NULL, '');
INSERT INTO `clic_configuration` VALUES(1431, 'Do you want activate this module ?', 'MODULE_SHOPPING_CART_SHOW_TOTAL_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2018-11-20 12:00:20', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1432, 'Please select the width of the module', 'MODULE_SHOPPING_CART_SHOW_TOTAL_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2018-11-20 12:00:20', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1433, 'Where do you to display this module ?', 'MODULE_SHOPPING_CART_SHOW_TOTAL_POSITION', 'float-none', 'Display the module at right or left (depends of your template configuration)', 6, 2, NULL, '2018-11-20 12:00:20', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1434, 'Sort order', 'MODULE_SHOPPING_CART_SHOW_TOTAL_SORT_ORDER', '20', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2018-11-20 12:00:20', NULL, '');
INSERT INTO `clic_configuration` VALUES(1438, 'Status', 'CLICSHOPPING_APP_SPECIALS_SP_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 0, NULL, '2018-12-09 18:24:26', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1439, 'Sort order', 'CLICSHOPPING_APP_SPECIALS_SP_SORT_ORDER', '30', 'Sort order of display. Lowest is displayed first', 6, 0, NULL, '2018-12-09 18:24:26', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1440, 'Parameter [Specials Products App]', 'MODULE_MODULES_PRODUCTS_SPECIALS_INSTALLED', 'Marketing\\Specials\\SP', 'Parameter [Specials Products App]', 6, 0, NULL, '2018-12-09 18:24:26', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1441, 'Status', 'CLICSHOPPING_APP_STATS_PRODUCTS_PURCHASED_SP_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-12-09 18:36:31', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1442, 'Sort Order', 'CLICSHOPPING_APP_STATS_PRODUCTS_PURCHASED_SP_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-12-09 18:36:31', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1443, 'Parameter [Stats Products Purchased App]', 'MODULE_MODULES_STATS_PRODUCTS_PURCHASED_INSTALLED', 'Report\\StatsProductsPurchased\\SP', 'Parameter [Stats Products Purchased App]', 6, 0, NULL, '2018-12-09 18:36:31', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1444, 'Status', 'CLICSHOPPING_APP_STATS_PRODUCTS_VIEWED_PV_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-12-09 18:40:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1445, 'Sort Order', 'CLICSHOPPING_APP_STATS_PRODUCTS_VIEWED_PV_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2018-12-09 18:40:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1446, 'Parameter [Stats Products Viewed App]', 'MODULE_MODULES_STATS_PRODUCTS_VIEWED_INSTALLED', 'Report\\StatsProductsViewed\\PV', 'Parameter [Stats Products Viewed App]', 6, 0, NULL, '2018-12-09 18:40:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1447, 'Status', 'CLICSHOPPING_APP_BACKUP_BC_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-12-09 18:51:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1448, 'Sort Order', 'CLICSHOPPING_APP_BACKUP_BC_SORT_ORDER', '300', 'The sort order location of the module shown in the available methods listing (lowest is displayed first)', 6, 0, NULL, '2018-12-09 18:51:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1449, 'Parameter [Export Data App]', 'MODULE_MODULES_BACKUP_INSTALLED', 'Tools\\Backup\\BC', 'Parameter [Export Data App]', 6, 0, NULL, '2018-12-09 18:51:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1450, 'Status', 'CLICSHOPPING_APP_ACTIONS_RECORDER_AR_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-12-09 19:05:21', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1451, 'Sort Order', 'CLICSHOPPING_APP_ACTIONS_RECORDER_AR_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first)', 6, 0, NULL, '2018-12-09 19:05:21', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1452, 'Parameter [ActionsRecorder App]', 'MODULE_MODULES_ACTIONS_RECORDER_INSTALLED', 'Tools\\ActionsRecorder\\AR', 'Parameter [ActionsRecorder App]', 6, 0, NULL, '2018-12-09 19:05:21', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1453, 'Status', 'CLICSHOPPING_APP_FAVORITES_FA_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-12-19 10:33:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1454, 'Sort Order', 'CLICSHOPPING_APP_FAVORITES_FA_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first)', 6, 0, NULL, '2018-12-19 10:33:41', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1455, 'Status', 'CLICSHOPPING_APP_FEATURED_FE_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2018-12-19 10:34:15', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1456, 'Sort Order', 'CLICSHOPPING_APP_FEATURED_FE_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first)', 6, 0, NULL, '2018-12-19 10:34:15', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1457, 'Parameter [Featured Products App]', 'MODULE_MODULES_PRODUCTS_FEATURED_INSTALLED', 'Marketing\\Featured\\FE', 'Parameter [Featured Products App]', 6, 0, NULL, '2018-12-19 10:34:15', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1458, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES', '5', 'Number of minutes to allow login attempts to occur.', 6, 0, NULL, '2019-01-16 19:05:53', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1459, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS', '3', 'Number of login attempts to allow within the specified period.', 6, 0, NULL, '2019-01-16 19:05:53', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1460, 'Minimum Minutes Per E-Mail for contact us', 'MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2019-01-16 19:05:56', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1461, 'What do you want for the minimum minutes per e-mail for one person for create account ?', 'MODULE_ACTION_RECORDER_CREATE_ACCOUNT_EMAIL_MINUTES', '90', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2019-01-16 19:05:58', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1462, 'What do you want for the minimum minutes per e-mail for one person for create professional account?', 'MODULE_ACTION_RECORDER_CREATE_ACCOUNT_PRO_EMAIL_MINUTES', '90', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2019-01-16 19:06:00', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1463, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES', '5', 'Number of minutes to allow password resets to occur.', 6, 0, NULL, '2019-01-16 19:06:03', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1464, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS', '1', 'Number of password reset attempts to allow within the specified period.', 6, 0, NULL, '2019-01-16 19:06:03', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1465, 'Minimum Minutes Per E-Mail for tell a friend', 'MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2019-01-16 19:06:05', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1466, 'Do you want to activate this module ?', 'MODULE_HEADER_TAGS_GOOGLE_FONT_STATUS', 'True', 'Set True to enable or not the module', 6, 1, NULL, '2019-01-16 19:06:58', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1467, 'Sort Order', 'MODULE_HEADER_TAGS_GOOGLE_FONT_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first', 6, 25, NULL, '2019-01-16 19:06:58', NULL, '');
INSERT INTO `clic_configuration` VALUES(1468, 'Do you want to activate this module ?', 'MODULE_HEADER_NOSCRIPT_STATUS', 'True', 'Set True to enable or not the module', 6, 1, NULL, '2019-01-16 19:07:19', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1469, 'Please select the width of the module', 'MODULE_HEADER_NOSCRIPT_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 2, NULL, '2019-01-16 19:07:19', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1470, 'Sort Order', 'MODULE_HEADER_NOSCRIPT_SORT_ORDER', '1', 'Sort order of display. Lowest is displayed first', 6, 0, NULL, '2019-01-16 19:07:19', NULL, '');
INSERT INTO `clic_configuration` VALUES(1471, 'Default Products Lenght Unit', 'PRODUCTS_LENGTH_UNIT', '2', 'Select the unit of product lenght to be used for your product', 7, 6, '2006-10-23 01:17:10', '2006-04-09 16:13:48', 'clic_cfg_use_get_products_length_title', 'clic_cfg_set_products_length_classes_pulldown_menu');
INSERT INTO `clic_configuration` VALUES(1472, 'Status', 'CLICSHOPPING_APP_PROUCTS_LENGTH_PL_STATUS', 'True', 'Set True to enable or not the module', 6, 0, NULL, '2019-04-14 08:46:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1473, 'Sort Order', 'CLICSHOPPING_APP_PROUCTS_LENGTH_PL_SORT_ORDER', '30', 'The sort order location of the module shown in the available methods listing (lowest is displayed first).', 6, 0, NULL, '2019-04-14 08:46:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1474, 'Parameter [ProductsLength App]', 'MODULE_MODULES_PROUCTS_LENGTH_INSTALLED', 'Configuration\\ProductsLength\\PL', 'Parameter [ProductsLength App]', 6, 0, NULL, '2019-04-14 08:46:32', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1475, 'Please select the width of the module', 'MODULE_ADVANCED_SEARCH_PRICE_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 2, NULL, '2019-01-16 19:07:19', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1476, 'Minimum length of e-mail address', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Minimum length of e-mail address', 16, 4, NULL, '2019-06-30 10:06:56', NULL, NULL);
INSERT INTO `clic_configuration` VALUES(1477, 'Information Email Security login', 'CONFIGURATION_EMAIL_SECURITY', 'false', 'If someone try to connect inside the administration and make a mistake, you will received an email.', 12, 12, '2008-09-16 10:52:38', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(1478, 'Do you want activate this module ?', 'MODULE_PRODUCTS_FEATURED_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1479, 'Please select your template ?', 'MODULE_PRODUCTS_FEATURED_TEMPLATE', 'template_bootstrap_column_5.php', 'Select your template you want to display', 6, 2, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(1480, 'Please indicate the number of product do you want to display', 'MODULE_PRODUCTS_FEATURED_MAX_DISPLAY', '6', 'Indicate the number of product do you want to display', 6, 3, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1481, 'Please indicate the number of column that you want to display ?', 'MODULE_PRODUCTS_FEATURED_COLUMNS', '6', 'Choose a number between 1 and 12', 6, 3, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1482, 'Do you want to display a short description ?', 'MODULE_PRODUCTS_FEATURED_SHORT_DESCRIPTION', '0', 'Please indicate a number of your short description', 6, 4, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1483, 'Do you want to remove words of your short description ?', 'MODULE_PRODUCTS_FEATURED_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Please indicate a number', 6, 4, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1484, 'Do you want to display a message News / Specials / Favorites / Featured ?', 'MODULE_PRODUCTS_FEATURED_TICKER', 'False', 'Display a message News / Specials / Favorites / Featured', 6, 1, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1485, 'Do you want to display the discount pourcentage (specials) ?', 'MODULE_PRODUCTS_FEATURED_POURCENTAGE_TICKER', 'False', 'Display the discount pourcentage (specials)', 6, 1, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1486, 'Souhaitez-vous afficher une image concernant l\'état du stock du produit ?', 'MODULE_PRODUCTS_FEATURED_DISPLAY_STOCK', 'none', 'Est-que vous souhaitez afficher une image indiquant une information sur le stock du produit (En stock, pratiquement épuisé, hors stock) ?', 6, 6, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'))');
INSERT INTO `clic_configuration` VALUES(1487, 'Please indicate a arrival date sort order', 'MODULE_PRODUCTS_FEATURED_LIST_DATE_ADDED', '1', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 5, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1488, 'Please indicate a price sort order', 'MODULE_PRODUCTS_FEATURED_LIST_PRICE', '0', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 6, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1489, 'Please indicate a model sort order', 'MODULE_PRODUCTS_FEATURED_LIST_MODEL', '0', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 7, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1490, 'Please indicate a quantity sort order', 'MODULE_PRODUCTS_FEATURED_LIST_QUANTITY', '0', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 8, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1491, 'Please indicate a weight sort order', 'MODULE_PRODUCTS_FEATURED_LIST_WEIGHT', '0', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 9, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1492, 'Please choose the image size', 'MODULE_PRODUCTS_FEATURED_IMAGE_MEDIUM', 'Small', 'Quelle taille d\'image souhaitez-vous afficher ?<br /><br /><i>(Valeur Small = Petite - Valeur Medium = Moyenne)</i>', 6, 10, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'))');
INSERT INTO `clic_configuration` VALUES(1493, 'Do you want to remove the details button ?', 'MODULE_PRODUCTS_FEATURED_DELETE_BUY_BUTTON', 'False', 'Remove the button details', 6, 11, NULL, '2019-08-22 21:06:01', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1494, 'Sort order', 'MODULE_PRODUCTS_FEATURED_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first', 6, 12, NULL, '2019-08-22 21:06:01', NULL, '');
INSERT INTO `clic_configuration` VALUES(1495, 'Do you want to install this module ?', 'MODULE_PRODUCTS_FEATURED_TITLE_STATUS', 'True', 'Do you want to install this module ?', 6, 1, NULL, '2019-08-22 21:06:06', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1496, 'Please select the width of the module', 'MODULE_PRODUCTS_FEATURED_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2019-08-22 21:06:06', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1497, 'Where do you to display this module ?', 'MODULE_PRODUCTS_FEATURED_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-08-22 21:06:06', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1498, 'Sort order', 'MODULE_PRODUCTS_FEATURED_TITLE_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first', 6, 12, NULL, '2019-08-22 21:06:06', NULL, '');
INSERT INTO `clic_configuration` VALUES(1499, 'Do you want activate this module ?', 'MODULE_PRODUCTS_FAVORITES_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1500, 'Please select your template ?', 'MODULE_PRODUCTS_FAVORITES_TEMPLATE', 'template_bootstrap_column_5.php', 'Select your template you want to display', 6, 2, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_multi_template_pull_down');
INSERT INTO `clic_configuration` VALUES(1501, 'Indicate the number of product do you want to display ?', 'MODULE_PRODUCTS_FAVORITES_MAX_DISPLAY', '6', 'Please, indicate the number of products do your want to display.', 6, 3, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1502, 'Please indicate the number of column that you want to display ?', 'MODULE_PRODUCTS_FAVORITES_COLUMNS', '6', 'Choose a number between 1 and 12', 6, 3, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1503, 'Do you want to display a short description ?', 'MODULE_PRODUCTS_FAVORITES_SHORT_DESCRIPTION', '0', 'Please indicate a number of your short description', 6, 4, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1504, 'Do you want to remove words of your short description ?', 'MODULE_PRODUCTS_FAVORITES_SHORT_DESCRIPTION_DELETE_WORLDS', '0', 'Please indicate a number', 6, 4, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1505, 'Do you want to display a message News / Specials / Favorites / Featured ?', 'MODULE_PRODUCTS_FAVORITES_TICKER', 'False', 'Display a message News / Specials / Favorites / Featured', 6, 1, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1506, 'Do you want to display the discount pourcentage (specials) ?', 'MODULE_PRODUCTS_FAVORITES_POURCENTAGE_TICKER', 'False', 'Display the discount pourcentage (specials)', 6, 1, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1507, 'Please do you want to display the stock ?', 'MODULE_PRODUCTS_FAVORITES_DISPLAY_STOCK', 'none', 'Est-que vous souhaitez afficher une image indiquant une information sur le stock du produit (En stock, pratiquement épuisé, hors stock) ?', 6, 6, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_boolean_value(array(\'none\', \'image\', \'number\'))');
INSERT INTO `clic_configuration` VALUES(1508, 'Please indicate a arrival date sort order', 'MODULE_PRODUCTS_FAVORITES_LIST_DATE_ADDED', '1', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 5, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1509, 'Veuillez indiquer une ordre tri selon les tarifs', 'MODULE_PRODUCTS_FAVORITES_LIST_PRICE', '0', 'Cette option permet au client de choisir un ordre d\'affichage de ses produits.<br/ ><br /><strong>Note :</strong><br /><br />- 0 pour aucun Affichage<br />- Le plus petit nombre est montré en premier)', 6, 6, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1510, 'Please indicate a model sort order', 'MODULE_PRODUCTS_FAVORITES_LIST_MODEL', '0', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 7, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1511, 'Please indicate a quantity sort order', 'MODULE_PRODUCTS_FAVORITES_LIST_QUANTITY', '0', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 8, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1512, 'Please indicate a weight sort order', 'MODULE_PRODUCTS_FAVORITES_LIST_WEIGHT', '0', 'This option allow to choose an order to display the product. Lowest is displayed in first; 0 for nothing', 6, 9, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1513, 'Please choose the image size', 'MODULE_PRODUCTS_FAVORITES_IMAGE_MEDIUM', 'Small', 'Quelle taille d\'image souhaitez-vous afficher ?<br /><br /><i>(Valeur Small = Petite - Valeur Medium = Moyenne)</i>', 6, 10, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_boolean_value(array(\'Small\', \'Medium\'))');
INSERT INTO `clic_configuration` VALUES(1514, 'Do you want to remove the details button ?', 'MODULE_PRODUCTS_FAVORITES_DELETE_BUY_BUTTON', 'False', 'Remove the button details', 6, 11, NULL, '2019-08-22 21:06:15', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1515, 'Sort order', 'MODULE_PRODUCTS_FAVORITES_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first', 6, 12, NULL, '2019-08-22 21:06:15', NULL, '');
INSERT INTO `clic_configuration` VALUES(1516, 'Do you want to install this module ?', 'MODULE_PRODUCTS_FAVORITES_TITLE_STATUS', 'True', 'Do you want to install this module ?', 6, 1, NULL, '2019-08-22 21:06:18', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1517, 'Please select the width of the module', 'MODULE_PRODUCTS_FAVORITES_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2019-08-22 21:06:18', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1518, 'Where do you to display this module ?', 'MODULE_PRODUCTS_FAVORITES_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-08-22 21:06:18', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1519, 'Sort order', 'MODULE_PRODUCTS_FAVORITES_TITLE_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first', 6, 12, NULL, '2019-08-22 21:06:18', NULL, '');
INSERT INTO `clic_configuration` VALUES(1520, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_BUTTON_PROCESS_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 17:42:27', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1521, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_COMMENT_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 17:42:29', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1522, 'Do you want activate this module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_CUSTOMER_AGREEMENT_STATUS', 'True', 'Do you want activate this module in your shop ?', 6, 1, NULL, '2019-09-15 17:42:34', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1523, 'Please select the width of the module', 'MODULES_PRODUCTS_REVIEWS_WRITE_CUSTOMER_AGREEMENT_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2019-09-15 17:42:34', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1524, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_CUSTOMER_AGREEMENT_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 17:42:34', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1525, 'Sort order', 'MODULES_PRODUCTS_REVIEWS_WRITE_CUSTOMER_AGREEMENT_SORT_ORDER', '600', 'Sort order of display. Lowest is displayed first', 6, 4, NULL, '2019-09-15 17:42:34', NULL, '');
INSERT INTO `clic_configuration` VALUES(1526, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_IMAGE_POSITION', 'float-end', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 17:42:38', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1527, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_WRITE_RATING_POSITION', 'float-start', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 17:42:41', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1528, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_IMAGE_POSITION', 'float-end', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 18:55:03', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1529, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_BUTTON_PROCESS_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 18:56:19', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1530, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_DESCRIPTION_POSITION', 'float-start', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 18:56:25', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1531, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_CONTENT_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 19:06:14', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1532, 'Allow the customer to delete the comment ?', 'MODULES_PRODUCTS_REVIEWS_LISTING_CONTENT_DELETE_COMMENT', 'True', 'The regulation allow the customer to decide to have access at his information', 6, 1, NULL, '2019-09-15 19:06:14', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1533, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_INFO_BUTTON_PROCESS_POSITION', 'float-none', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 20:17:20', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1534, 'Please select the width of the module', 'MODULES_PRODUCTS_REVIEWS_INFO_CONTENT_WIDTH', '12', 'Select a number between 1 and 12', 6, 1, NULL, '2019-09-15 20:17:22', NULL, 'clic_cfg_set_content_module_width_pull_down');
INSERT INTO `clic_configuration` VALUES(1535, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_INFO_CONTENT_POSITION', 'float-start', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 20:17:22', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1536, 'Allow the customer to delete the comment ?', 'MODULES_PRODUCTS_REVIEWS_INFO_CONTENT_DELETE_COMMENT', 'True', 'The regulation allow the customer to decide to have access at his information', 6, 1, NULL, '2019-09-15 20:17:22', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1537, 'Where Do you want to display the module ?', 'MODULES_PRODUCTS_REVIEWS_INFO_IMAGE_CONTENT_POSITION', 'float-end', 'Select where you want display the module', 6, 2, NULL, '2019-09-15 20:17:24', NULL, 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))');
INSERT INTO `clic_configuration` VALUES(1538, 'Do you want to display this module ?', 'MODULE_HEADER_TAGS_BREADCRUMB_STATUS', 'True', 'Do you want to display this module ?', 6, 1, NULL, '2019-09-22 21:39:43', NULL, 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))');
INSERT INTO `clic_configuration` VALUES(1539, 'Sort Order', 'MODULE_HEADER_TAGS_BREADCRUMB_SORT_ORDER', '555', 'Sort order. Lowest is displayed in first', 6, 10, NULL, '2019-09-22 21:39:43', NULL, '');
INSERT INTO `clic_configuration` VALUES(1540, 'Do you want to activate the preloading (PHP >= 7.4)', 'CONFIGURATION_PRELOADING', 'false', 'Functionality in beta, you must have access to your php.init to activate this function. Please refer to the documentation available on the forum', 14, 10, '2006-09-23 01:42:33', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(1541, 'Do you want to convert all product images to Webp?', 'CONFIGURATION_CONVERT_IMAGE', 'false', 'All product images will be converted to Webp format. Please note that some server configuration does not accept this format', 4, 10, NULL, '2018-11-05 09:49:46', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(1542, 'Do you want to compress the HTML', 'CONFIGURATION_TEMPLATE_MINIFY_HTML', 'false', 'Compress the HTML code and JS inside the HTML (only catalog)', 43, 1, '2013-12-16 18:12:37', '2006-04-09 18:20:19', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(1543, 'Exclude specific email domains', 'CONFIGURATION_EXLCLUDE_EMAIL_DOMAIN', '', 'If the domain is caught, the email will not be sent. Please separate your domains with a comma "," <br> <br> <i> example: mail.ru, yandex.com', 12, 10, NULL, '2019-09-22 21:39:43', NULL, '');
INSERT INTO `clic_configuration` VALUES(1544, 'Do you want to Display the sidebar Menu in Admin', 'VERTICAL_MENU_CONFIGURATION', 'false', 'Select a choice to display a specific menu in your admininistration horizontal or sidebar.<br />', 43, 100, '2007-05-20 01:00:47', '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');
INSERT INTO `clic_configuration` VALUES(1545, 'Indicate a minimum number of characters to insert in the message before the customer can send it', 'MODULE_CONTACT_US_FORM_CONTENT_CARACTER', '90', 'Messages less than this number will not be sent. A warning pop up will be displayed to the client indicating the minimum number of characters', 6, 10, NULL, '2019-09-22 21:39:43', NULL, '');
INSERT INTO `clic_configuration` VALUES(1546, 'Check if the email is valid or not', 'ENTRY_EMAIL_ADDRESS_CHECKER', 'false', 'Check if the email is valid or not. More information there : https://github.com/MattKetmo/EmailChecker', 12, 4, NULL, '2006-04-09 16:13:48', NULL, 'clic_cfg_set_boolean_value(array(\'true\', \'false\'))');

-- --------------------------------------------------------

--
-- Structure de la table `clic_configuration_group`
--

DROP TABLE IF EXISTS `clic_configuration_group`;
CREATE TABLE `clic_configuration_group` (
  `configuration_group_id` int(11) NOT NULL,
  `configuration_group_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration_group_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_configuration_group`
--

INSERT INTO `clic_configuration_group` VALUES(1, 'Store Setup', 'General Information on the Store.', 1, 1);
INSERT INTO `clic_configuration_group` VALUES(2, 'Setup credit card', 'Minimum value: functions / data', 2, 1);
INSERT INTO `clic_configuration_group` VALUES(3, 'Setup maximum and minimum values', 'Values​​: functions / data', 3, 1);
INSERT INTO `clic_configuration_group` VALUES(4, 'Image Setup', 'Image setting', 4, 1);
INSERT INTO `clic_configuration_group` VALUES(5, 'Setup B2C customers', 'Customer account setting.', 5, 1);
INSERT INTO `clic_configuration_group` VALUES(6, 'Setup options Modules', 'Hidden setting.', 6, 0);
INSERT INTO `clic_configuration_group` VALUES(7, 'Setup Shipping / Packing', 'Delivery options available in this store.', 7, 1);
INSERT INTO `clic_configuration_group` VALUES(8, 'Setup the Product List', 'Setting options lists of products.', 8, 1);
INSERT INTO `clic_configuration_group` VALUES(9, 'Stock setup', 'Setting options of stock.', 9, 1);
INSERT INTO `clic_configuration_group` VALUES(10, 'Logging setup', 'Setting Logging options.', 10, 1);
INSERT INTO `clic_configuration_group` VALUES(11, 'Setup Cache', 'Setting Cache  Options.', 11, 1);
INSERT INTO `clic_configuration_group` VALUES(12, 'Setup options mail', 'General setting for the mail client and emails in HTML format.', 12, 1);
INSERT INTO `clic_configuration_group` VALUES(13, 'Download Setup', 'Options downloadable products.', 13, 1);
INSERT INTO `clic_configuration_group` VALUES(14, 'Setup compression & optimization', 'Website compression & optimization options.', 14, 1);
INSERT INTO `clic_configuration_group` VALUES(15, 'Session Setup', 'Session options', 15, 1);
INSERT INTO `clic_configuration_group` VALUES(16, 'Setup minimum values ​​for B2C customers', 'Minimum value for the field of B2C customers', 16, 1);
INSERT INTO `clic_configuration_group` VALUES(17, 'B2B Setup', 'General Setting B2B', 17, 1);
INSERT INTO `clic_configuration_group` VALUES(18, 'Setup B2B customers', 'Setting inscriptions B2B group customers', 18, 1);
INSERT INTO `clic_configuration_group` VALUES(19, 'Setup minimum values ​​for B2B customers', 'Minimum value for the field of B2B customers', 19, 1);
INSERT INTO `clic_configuration_group` VALUES(20, 'Setup maximum values ​​for B2B customers', 'Maximum value for the field of B2B customers', 20, 1);
INSERT INTO `clic_configuration_group` VALUES(21, 'Setup maximum values', 'Maximum value for: functions / data', 21, 1);
INSERT INTO `clic_configuration_group` VALUES(22, 'B2C setup', 'General setting for the B2C', 22, 1);
INSERT INTO `clic_configuration_group` VALUES(23, 'Image setup', 'Image Setting', 23, 1);
INSERT INTO `clic_configuration_group` VALUES(25, 'Setup regulatory legislation', 'Regulatory options for setup your site', 25, 1);
INSERT INTO `clic_configuration_group` VALUES(26, 'Setup invoices and shipments', 'Setting invoices and shipments', 26, 1);
INSERT INTO `clic_configuration_group` VALUES(27, 'SEO Setup and statistics', 'Options for managing SEO and Statistics', 27, 1);
INSERT INTO `clic_configuration_group` VALUES(28, 'Setup product also bought', 'Display information in the product description sheet', 28, 1);
INSERT INTO `clic_configuration_group` VALUES(29, 'Setup display specials listing', 'Sheet Listing Description promotions', 29, 1);
INSERT INTO `clic_configuration_group` VALUES(30, 'Setup the Home page and categories', 'Values ​​concerning the setup of the home page and categories', 30, 1);
INSERT INTO `clic_configuration_group` VALUES(31, 'Setup boxes left and right', 'Value in the setup of boxes left and right', 31, 1);
INSERT INTO `clic_configuration_group` VALUES(32, 'Setup Comments', 'Value for comments', 32, 1);
INSERT INTO `clic_configuration_group` VALUES(33, 'Setup news listing', 'Value for the listing of new', 33, 1);
INSERT INTO `clic_configuration_group` VALUES(34, 'Setup site URL', 'Setting options URL', 34, 1);
INSERT INTO `clic_configuration_group` VALUES(35, 'Setup listing favorites', 'Values ​​for the listing of favorites', 35, 1);
INSERT INTO `clic_configuration_group` VALUES(36, 'Setup import / export', 'Setting import and export.', 36, 1);
INSERT INTO `clic_configuration_group` VALUES(37, 'Setup specials for home page', 'Setting specials for home page', 37, 1);
INSERT INTO `clic_configuration_group` VALUES(43, 'General and miscellaneous Setup design', 'General and miscellaneous Setting design', 43, 1);
INSERT INTO `clic_configuration_group` VALUES(44, 'Web Service', 'Connect via webservice at new external application', 1, 1);
INSERT INTO `clic_configuration_group` VALUES(45, 'Configuration HTTP/API', 'Configuration HTTP/API', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `clic_countries`
--

DROP TABLE IF EXISTS `clic_countries`;
CREATE TABLE `clic_countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_countries`
--

INSERT INTO `clic_countries` VALUES(1, 'Afghanistan', 'AF', 'AFG', 1, 1);
INSERT INTO `clic_countries` VALUES(2, 'Albania', 'AL', 'ALB', 1, 1);
INSERT INTO `clic_countries` VALUES(3, 'Algeria', 'DZ', 'DZA', 1, 1);
INSERT INTO `clic_countries` VALUES(4, 'American Samoa', 'AS', 'ASM', 1, 1);
INSERT INTO `clic_countries` VALUES(5, 'Andorra', 'AD', 'AND', 1, 1);
INSERT INTO `clic_countries` VALUES(6, 'Angola', 'AO', 'AGO', 1, 1);
INSERT INTO `clic_countries` VALUES(7, 'Anguilla', 'AI', 'AIA', 1, 1);
INSERT INTO `clic_countries` VALUES(8, 'Antarctica', 'AQ', 'ATA', 1, 1);
INSERT INTO `clic_countries` VALUES(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, 1);
INSERT INTO `clic_countries` VALUES(10, 'Argentina', 'AR', 'ARG', 1, 1);
INSERT INTO `clic_countries` VALUES(11, 'Armenia', 'AM', 'ARM', 1, 1);
INSERT INTO `clic_countries` VALUES(12, 'Aruba', 'AW', 'ABW', 1, 1);
INSERT INTO `clic_countries` VALUES(13, 'Australia', 'AU', 'AUS', 1, 1);
INSERT INTO `clic_countries` VALUES(14, 'Austria', 'AT', 'AUT', 5, 1);
INSERT INTO `clic_countries` VALUES(15, 'Azerbaijan', 'AZ', 'AZE', 1, 1);
INSERT INTO `clic_countries` VALUES(16, 'Bahamas', 'BS', 'BHS', 1, 1);
INSERT INTO `clic_countries` VALUES(17, 'Bahrain', 'BH', 'BHR', 1, 1);
INSERT INTO `clic_countries` VALUES(18, 'Bangladesh', 'BD', 'BGD', 1, 1);
INSERT INTO `clic_countries` VALUES(19, 'Barbados', 'BB', 'BRB', 1, 1);
INSERT INTO `clic_countries` VALUES(20, 'Belarus', 'BY', 'BLR', 1, 1);
INSERT INTO `clic_countries` VALUES(21, 'Belgium', 'BE', 'BEL', 1, 1);
INSERT INTO `clic_countries` VALUES(22, 'Belize', 'BZ', 'BLZ', 1, 1);
INSERT INTO `clic_countries` VALUES(23, 'Benin', 'BJ', 'BEN', 1, 1);
INSERT INTO `clic_countries` VALUES(24, 'Bermuda', 'BM', 'BMU', 1, 1);
INSERT INTO `clic_countries` VALUES(25, 'Bhutan', 'BT', 'BTN', 1, 1);
INSERT INTO `clic_countries` VALUES(26, 'Bolivia', 'BO', 'BOL', 1, 1);
INSERT INTO `clic_countries` VALUES(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, 1);
INSERT INTO `clic_countries` VALUES(28, 'Botswana', 'BW', 'BWA', 1, 1);
INSERT INTO `clic_countries` VALUES(29, 'Bouvet Island', 'BV', 'BVT', 1, 1);
INSERT INTO `clic_countries` VALUES(30, 'Brazil', 'BR', 'BRA', 1, 1);
INSERT INTO `clic_countries` VALUES(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, 1);
INSERT INTO `clic_countries` VALUES(32, 'Brunei Darussalam', 'BN', 'BRN', 1, 1);
INSERT INTO `clic_countries` VALUES(33, 'Bulgaria', 'BG', 'BGR', 1, 1);
INSERT INTO `clic_countries` VALUES(34, 'Burkina Faso', 'BF', 'BFA', 1, 1);
INSERT INTO `clic_countries` VALUES(35, 'Burundi', 'BI', 'BDI', 1, 1);
INSERT INTO `clic_countries` VALUES(36, 'Cambodia', 'KH', 'KHM', 1, 1);
INSERT INTO `clic_countries` VALUES(37, 'Cameroon', 'CM', 'CMR', 1, 1);
INSERT INTO `clic_countries` VALUES(38, 'Canada', 'CA', 'CAN', 1, 1);
INSERT INTO `clic_countries` VALUES(39, 'Cape Verde', 'CV', 'CPV', 1, 1);
INSERT INTO `clic_countries` VALUES(40, 'Cayman Islands', 'KY', 'CYM', 1, 1);
INSERT INTO `clic_countries` VALUES(41, 'Central African Republic', 'CF', 'CAF', 1, 1);
INSERT INTO `clic_countries` VALUES(42, 'Chad', 'TD', 'TCD', 1, 1);
INSERT INTO `clic_countries` VALUES(43, 'Chile', 'CL', 'CHL', 1, 1);
INSERT INTO `clic_countries` VALUES(44, 'China', 'CN', 'CHN', 1, 1);
INSERT INTO `clic_countries` VALUES(45, 'Christmas Island', 'CX', 'CXR', 1, 1);
INSERT INTO `clic_countries` VALUES(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, 1);
INSERT INTO `clic_countries` VALUES(47, 'Colombia', 'CO', 'COL', 1, 1);
INSERT INTO `clic_countries` VALUES(48, 'Comoros', 'KM', 'COM', 1, 1);
INSERT INTO `clic_countries` VALUES(49, 'Congo', 'CG', 'COG', 1, 1);
INSERT INTO `clic_countries` VALUES(50, 'Cook Islands', 'CK', 'COK', 1, 1);
INSERT INTO `clic_countries` VALUES(51, 'Costa Rica', 'CR', 'CRI', 1, 1);
INSERT INTO `clic_countries` VALUES(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, 1);
INSERT INTO `clic_countries` VALUES(53, 'Croatia', 'HR', 'HRV', 1, 1);
INSERT INTO `clic_countries` VALUES(54, 'Cuba', 'CU', 'CUB', 1, 1);
INSERT INTO `clic_countries` VALUES(55, 'Cyprus', 'CY', 'CYP', 1, 1);
INSERT INTO `clic_countries` VALUES(56, 'Czech Republic', 'CZ', 'CZE', 1, 1);
INSERT INTO `clic_countries` VALUES(57, 'Denmark', 'DK', 'DNK', 1, 1);
INSERT INTO `clic_countries` VALUES(58, 'Djibouti', 'DJ', 'DJI', 1, 1);
INSERT INTO `clic_countries` VALUES(59, 'Dominica', 'DM', 'DMA', 1, 1);
INSERT INTO `clic_countries` VALUES(60, 'Dominican Republic', 'DO', 'DOM', 1, 1);
INSERT INTO `clic_countries` VALUES(61, 'East Timor', 'TP', 'TMP', 1, 1);
INSERT INTO `clic_countries` VALUES(62, 'Ecuador', 'EC', 'ECU', 1, 1);
INSERT INTO `clic_countries` VALUES(63, 'Egypt', 'EG', 'EGY', 1, 1);
INSERT INTO `clic_countries` VALUES(64, 'El Salvador', 'SV', 'SLV', 1, 1);
INSERT INTO `clic_countries` VALUES(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, 1);
INSERT INTO `clic_countries` VALUES(66, 'Eritrea', 'ER', 'ERI', 1, 1);
INSERT INTO `clic_countries` VALUES(67, 'Estonia', 'EE', 'EST', 1, 1);
INSERT INTO `clic_countries` VALUES(68, 'Ethiopia', 'ET', 'ETH', 1, 1);
INSERT INTO `clic_countries` VALUES(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, 1);
INSERT INTO `clic_countries` VALUES(70, 'Faroe Islands', 'FO', 'FRO', 1, 1);
INSERT INTO `clic_countries` VALUES(71, 'Fiji', 'FJ', 'FJI', 1, 1);
INSERT INTO `clic_countries` VALUES(72, 'Finland', 'FI', 'FIN', 1, 1);
INSERT INTO `clic_countries` VALUES(73, 'France', 'FR', 'FRA', 6, 1);
INSERT INTO `clic_countries` VALUES(75, 'French Guiana', 'GF', 'GUF', 6, 1);
INSERT INTO `clic_countries` VALUES(76, 'French Polynesia', 'PF', 'PYF', 6, 1);
INSERT INTO `clic_countries` VALUES(77, 'French Southern Territories', 'TF', 'ATF', 6, 1);
INSERT INTO `clic_countries` VALUES(78, 'Gabon', 'GA', 'GAB', 1, 1);
INSERT INTO `clic_countries` VALUES(79, 'Gambia', 'GM', 'GMB', 1, 1);
INSERT INTO `clic_countries` VALUES(80, 'Georgia', 'GE', 'GEO', 1, 1);
INSERT INTO `clic_countries` VALUES(81, 'Germany', 'DE', 'DEU', 5, 1);
INSERT INTO `clic_countries` VALUES(82, 'Ghana', 'GH', 'GHA', 1, 1);
INSERT INTO `clic_countries` VALUES(83, 'Gibraltar', 'GI', 'GIB', 1, 1);
INSERT INTO `clic_countries` VALUES(84, 'Greece', 'GR', 'GRC', 1, 1);
INSERT INTO `clic_countries` VALUES(85, 'Greenland', 'GL', 'GRL', 1, 1);
INSERT INTO `clic_countries` VALUES(86, 'Grenada', 'GD', 'GRD', 1, 1);
INSERT INTO `clic_countries` VALUES(87, 'Guadeloupe', 'GP', 'GLP', 1, 1);
INSERT INTO `clic_countries` VALUES(88, 'Guam', 'GU', 'GUM', 1, 1);
INSERT INTO `clic_countries` VALUES(89, 'Guatemala', 'GT', 'GTM', 1, 1);
INSERT INTO `clic_countries` VALUES(90, 'Guinea', 'GN', 'GIN', 1, 1);
INSERT INTO `clic_countries` VALUES(91, 'Guinea-bissau', 'GW', 'GNB', 1, 1);
INSERT INTO `clic_countries` VALUES(92, 'Guyana', 'GY', 'GUY', 1, 1);
INSERT INTO `clic_countries` VALUES(93, 'Haiti', 'HT', 'HTI', 1, 1);
INSERT INTO `clic_countries` VALUES(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, 1);
INSERT INTO `clic_countries` VALUES(95, 'Honduras', 'HN', 'HND', 1, 1);
INSERT INTO `clic_countries` VALUES(96, 'Hong Kong', 'HK', 'HKG', 1, 1);
INSERT INTO `clic_countries` VALUES(97, 'Hungary', 'HU', 'HUN', 1, 1);
INSERT INTO `clic_countries` VALUES(98, 'Iceland', 'IS', 'ISL', 1, 1);
INSERT INTO `clic_countries` VALUES(99, 'India', 'IN', 'IND', 1, 1);
INSERT INTO `clic_countries` VALUES(100, 'Indonesia', 'ID', 'IDN', 1, 1);
INSERT INTO `clic_countries` VALUES(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, 1);
INSERT INTO `clic_countries` VALUES(102, 'Iraq', 'IQ', 'IRQ', 1, 1);
INSERT INTO `clic_countries` VALUES(103, 'Ireland', 'IE', 'IRL', 1, 1);
INSERT INTO `clic_countries` VALUES(104, 'Israel', 'IL', 'ISR', 1, 1);
INSERT INTO `clic_countries` VALUES(105, 'Italy', 'IT', 'ITA', 1, 1);
INSERT INTO `clic_countries` VALUES(106, 'Jamaica', 'JM', 'JAM', 1, 1);
INSERT INTO `clic_countries` VALUES(107, 'Japan', 'JP', 'JPN', 1, 1);
INSERT INTO `clic_countries` VALUES(108, 'Jordan', 'JO', 'JOR', 1, 1);
INSERT INTO `clic_countries` VALUES(109, 'Kazakhstan', 'KZ', 'KAZ', 1, 1);
INSERT INTO `clic_countries` VALUES(110, 'Kenya', 'KE', 'KEN', 1, 1);
INSERT INTO `clic_countries` VALUES(111, 'Kiribati', 'KI', 'KIR', 1, 1);
INSERT INTO `clic_countries` VALUES(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, 1);
INSERT INTO `clic_countries` VALUES(113, 'Korea, Republic of', 'KR', 'KOR', 1, 1);
INSERT INTO `clic_countries` VALUES(114, 'Kuwait', 'KW', 'KWT', 1, 1);
INSERT INTO `clic_countries` VALUES(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, 1);
INSERT INTO `clic_countries` VALUES(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, 1);
INSERT INTO `clic_countries` VALUES(117, 'Latvia', 'LV', 'LVA', 1, 1);
INSERT INTO `clic_countries` VALUES(118, 'Lebanon', 'LB', 'LBN', 1, 1);
INSERT INTO `clic_countries` VALUES(119, 'Lesotho', 'LS', 'LSO', 1, 1);
INSERT INTO `clic_countries` VALUES(120, 'Liberia', 'LR', 'LBR', 1, 1);
INSERT INTO `clic_countries` VALUES(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, 1);
INSERT INTO `clic_countries` VALUES(122, 'Liechtenstein', 'LI', 'LIE', 1, 1);
INSERT INTO `clic_countries` VALUES(123, 'Lithuania', 'LT', 'LTU', 1, 1);
INSERT INTO `clic_countries` VALUES(124, 'Luxembourg', 'LU', 'LUX', 1, 1);
INSERT INTO `clic_countries` VALUES(125, 'Macau', 'MO', 'MAC', 1, 1);
INSERT INTO `clic_countries` VALUES(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, 1);
INSERT INTO `clic_countries` VALUES(127, 'Madagascar', 'MG', 'MDG', 1, 1);
INSERT INTO `clic_countries` VALUES(128, 'Malawi', 'MW', 'MWI', 1, 1);
INSERT INTO `clic_countries` VALUES(129, 'Malaysia', 'MY', 'MYS', 1, 1);
INSERT INTO `clic_countries` VALUES(130, 'Maldives', 'MV', 'MDV', 1, 1);
INSERT INTO `clic_countries` VALUES(131, 'Mali', 'ML', 'MLI', 1, 1);
INSERT INTO `clic_countries` VALUES(132, 'Malta', 'MT', 'MLT', 1, 1);
INSERT INTO `clic_countries` VALUES(133, 'Marshall Islands', 'MH', 'MHL', 1, 1);
INSERT INTO `clic_countries` VALUES(134, 'Martinique', 'MQ', 'MTQ', 1, 1);
INSERT INTO `clic_countries` VALUES(135, 'Mauritania', 'MR', 'MRT', 1, 1);
INSERT INTO `clic_countries` VALUES(136, 'Mauritius', 'MU', 'MUS', 1, 1);
INSERT INTO `clic_countries` VALUES(137, 'Mayotte', 'YT', 'MYT', 1, 1);
INSERT INTO `clic_countries` VALUES(138, 'Mexico', 'MX', 'MEX', 1, 1);
INSERT INTO `clic_countries` VALUES(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, 1);
INSERT INTO `clic_countries` VALUES(140, 'Moldova, Republic of', 'MD', 'MDA', 1, 1);
INSERT INTO `clic_countries` VALUES(141, 'Monaco', 'MC', 'MCO', 1, 1);
INSERT INTO `clic_countries` VALUES(142, 'Mongolia', 'MN', 'MNG', 1, 1);
INSERT INTO `clic_countries` VALUES(143, 'Montserrat', 'MS', 'MSR', 1, 1);
INSERT INTO `clic_countries` VALUES(144, 'Morocco', 'MA', 'MAR', 1, 1);
INSERT INTO `clic_countries` VALUES(145, 'Mozambique', 'MZ', 'MOZ', 1, 1);
INSERT INTO `clic_countries` VALUES(146, 'Myanmar', 'MM', 'MMR', 1, 1);
INSERT INTO `clic_countries` VALUES(147, 'Namibia', 'NA', 'NAM', 1, 1);
INSERT INTO `clic_countries` VALUES(148, 'Nauru', 'NR', 'NRU', 1, 1);
INSERT INTO `clic_countries` VALUES(149, 'Nepal', 'NP', 'NPL', 1, 1);
INSERT INTO `clic_countries` VALUES(150, 'Netherlands', 'NL', 'NLD', 1, 1);
INSERT INTO `clic_countries` VALUES(151, 'Netherlands Antilles', 'AN', 'ANT', 1, 1);
INSERT INTO `clic_countries` VALUES(152, 'New Caledonia', 'NC', 'NCL', 1, 1);
INSERT INTO `clic_countries` VALUES(153, 'New Zealand', 'NZ', 'NZL', 1, 1);
INSERT INTO `clic_countries` VALUES(154, 'Nicaragua', 'NI', 'NIC', 1, 1);
INSERT INTO `clic_countries` VALUES(155, 'Niger', 'NE', 'NER', 1, 1);
INSERT INTO `clic_countries` VALUES(156, 'Nigeria', 'NG', 'NGA', 1, 1);
INSERT INTO `clic_countries` VALUES(157, 'Niue', 'NU', 'NIU', 1, 1);
INSERT INTO `clic_countries` VALUES(158, 'Norfolk Island', 'NF', 'NFK', 1, 1);
INSERT INTO `clic_countries` VALUES(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, 1);
INSERT INTO `clic_countries` VALUES(160, 'Norway', 'NO', 'NOR', 1, 1);
INSERT INTO `clic_countries` VALUES(161, 'Oman', 'OM', 'OMN', 1, 1);
INSERT INTO `clic_countries` VALUES(162, 'Pakistan', 'PK', 'PAK', 1, 1);
INSERT INTO `clic_countries` VALUES(163, 'Palau', 'PW', 'PLW', 1, 1);
INSERT INTO `clic_countries` VALUES(164, 'Panama', 'PA', 'PAN', 1, 1);
INSERT INTO `clic_countries` VALUES(165, 'Papua New Guinea', 'PG', 'PNG', 1, 1);
INSERT INTO `clic_countries` VALUES(166, 'Paraguay', 'PY', 'PRY', 1, 1);
INSERT INTO `clic_countries` VALUES(167, 'Peru', 'PE', 'PER', 1, 1);
INSERT INTO `clic_countries` VALUES(168, 'Philippines', 'PH', 'PHL', 1, 1);
INSERT INTO `clic_countries` VALUES(169, 'Pitcairn', 'PN', 'PCN', 1, 1);
INSERT INTO `clic_countries` VALUES(170, 'Poland', 'PL', 'POL', 1, 1);
INSERT INTO `clic_countries` VALUES(171, 'Portugal', 'PT', 'PRT', 1, 1);
INSERT INTO `clic_countries` VALUES(172, 'Puerto Rico', 'PR', 'PRI', 1, 1);
INSERT INTO `clic_countries` VALUES(173, 'Qatar', 'QA', 'QAT', 1, 1);
INSERT INTO `clic_countries` VALUES(174, 'Reunion', 'RE', 'REU', 1, 1);
INSERT INTO `clic_countries` VALUES(175, 'Romania', 'RO', 'ROM', 1, 1);
INSERT INTO `clic_countries` VALUES(176, 'Russian Federation', 'RU', 'RUS', 1, 1);
INSERT INTO `clic_countries` VALUES(177, 'Rwanda', 'RW', 'RWA', 1, 1);
INSERT INTO `clic_countries` VALUES(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, 1);
INSERT INTO `clic_countries` VALUES(179, 'Saint Lucia', 'LC', 'LCA', 1, 1);
INSERT INTO `clic_countries` VALUES(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, 1);
INSERT INTO `clic_countries` VALUES(181, 'Samoa', 'WS', 'WSM', 1, 1);
INSERT INTO `clic_countries` VALUES(182, 'San Marino', 'SM', 'SMR', 1, 1);
INSERT INTO `clic_countries` VALUES(183, 'Sao Tome and Principe', 'ST', 'STP', 1, 1);
INSERT INTO `clic_countries` VALUES(184, 'Saudi Arabia', 'SA', 'SAU', 1, 1);
INSERT INTO `clic_countries` VALUES(185, 'Senegal', 'SN', 'SEN', 1, 1);
INSERT INTO `clic_countries` VALUES(186, 'Seychelles', 'SC', 'SYC', 1, 1);
INSERT INTO `clic_countries` VALUES(187, 'Sierra Leone', 'SL', 'SLE', 1, 1);
INSERT INTO `clic_countries` VALUES(188, 'Singapore', 'SG', 'SGP', 4, 1);
INSERT INTO `clic_countries` VALUES(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, 1);
INSERT INTO `clic_countries` VALUES(190, 'Slovenia', 'SI', 'SVN', 1, 1);
INSERT INTO `clic_countries` VALUES(191, 'Solomon Islands', 'SB', 'SLB', 1, 1);
INSERT INTO `clic_countries` VALUES(192, 'Somalia', 'SO', 'SOM', 1, 1);
INSERT INTO `clic_countries` VALUES(193, 'South Africa', 'ZA', 'ZAF', 1, 1);
INSERT INTO `clic_countries` VALUES(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, 1);
INSERT INTO `clic_countries` VALUES(195, 'Spain', 'ES', 'ESP', 3, 1);
INSERT INTO `clic_countries` VALUES(196, 'Sri Lanka', 'LK', 'LKA', 1, 1);
INSERT INTO `clic_countries` VALUES(197, 'St. Helena', 'SH', 'SHN', 1, 1);
INSERT INTO `clic_countries` VALUES(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, 1);
INSERT INTO `clic_countries` VALUES(199, 'Sudan', 'SD', 'SDN', 1, 1);
INSERT INTO `clic_countries` VALUES(200, 'Suriname', 'SR', 'SUR', 1, 1);
INSERT INTO `clic_countries` VALUES(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, 1);
INSERT INTO `clic_countries` VALUES(202, 'Swaziland', 'SZ', 'SWZ', 1, 1);
INSERT INTO `clic_countries` VALUES(203, 'Sweden', 'SE', 'SWE', 1, 1);
INSERT INTO `clic_countries` VALUES(204, 'Switzerland', 'CH', 'CHE', 1, 1);
INSERT INTO `clic_countries` VALUES(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, 1);
INSERT INTO `clic_countries` VALUES(206, 'Taiwan', 'TW', 'TWN', 1, 1);
INSERT INTO `clic_countries` VALUES(207, 'Tajikistan', 'TJ', 'TJK', 1, 1);
INSERT INTO `clic_countries` VALUES(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, 1);
INSERT INTO `clic_countries` VALUES(209, 'Thailand', 'TH', 'THA', 1, 1);
INSERT INTO `clic_countries` VALUES(210, 'Togo', 'TG', 'TGO', 1, 1);
INSERT INTO `clic_countries` VALUES(211, 'Tokelau', 'TK', 'TKL', 1, 1);
INSERT INTO `clic_countries` VALUES(212, 'Tonga', 'TO', 'TON', 1, 1);
INSERT INTO `clic_countries` VALUES(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, 1);
INSERT INTO `clic_countries` VALUES(214, 'Tunisia', 'TN', 'TUN', 1, 1);
INSERT INTO `clic_countries` VALUES(215, 'Turkey', 'TR', 'TUR', 1, 1);
INSERT INTO `clic_countries` VALUES(216, 'Turkmenistan', 'TM', 'TKM', 1, 1);
INSERT INTO `clic_countries` VALUES(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, 1);
INSERT INTO `clic_countries` VALUES(218, 'Tuvalu', 'TV', 'TUV', 1, 1);
INSERT INTO `clic_countries` VALUES(219, 'Uganda', 'UG', 'UGA', 1, 1);
INSERT INTO `clic_countries` VALUES(220, 'Ukraine', 'UA', 'UKR', 1, 1);
INSERT INTO `clic_countries` VALUES(221, 'United Arab Emirates', 'AE', 'ARE', 1, 1);
INSERT INTO `clic_countries` VALUES(222, 'United Kingdom', 'GB', 'GBR', 1, 1);
INSERT INTO `clic_countries` VALUES(223, 'United States', 'US', 'USA', 2, 1);
INSERT INTO `clic_countries` VALUES(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, 1);
INSERT INTO `clic_countries` VALUES(225, 'Uruguay', 'UY', 'URY', 1, 1);
INSERT INTO `clic_countries` VALUES(226, 'Uzbekistan', 'UZ', 'UZB', 1, 1);
INSERT INTO `clic_countries` VALUES(227, 'Vanuatu', 'VU', 'VUT', 1, 1);
INSERT INTO `clic_countries` VALUES(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, 1);
INSERT INTO `clic_countries` VALUES(229, 'Venezuela', 'VE', 'VEN', 1, 1);
INSERT INTO `clic_countries` VALUES(230, 'Viet Nam', 'VN', 'VNM', 1, 1);
INSERT INTO `clic_countries` VALUES(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, 1);
INSERT INTO `clic_countries` VALUES(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, 1);
INSERT INTO `clic_countries` VALUES(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, 1);
INSERT INTO `clic_countries` VALUES(234, 'Western Sahara', 'EH', 'ESH', 1, 1);
INSERT INTO `clic_countries` VALUES(235, 'Yemen', 'YE', 'YEM', 1, 1);
INSERT INTO `clic_countries` VALUES(236, 'Yugoslavia', 'YU', 'YUG', 1, 1);
INSERT INTO `clic_countries` VALUES(237, 'Zaire', 'ZR', 'ZAR', 1, 1);
INSERT INTO `clic_countries` VALUES(238, 'Zambia', 'ZM', 'ZMB', 1, 1);
INSERT INTO `clic_countries` VALUES(239, 'Zimbabwe', 'ZW', 'ZWE', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `clic_currencies`
--

DROP TABLE IF EXISTS `clic_currencies`;
CREATE TABLE `clic_currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `surcharge` float(15,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_currencies`
--

INSERT INTO `clic_currencies` VALUES(1, 'Euro', 'EUR', '', 'EUR', '.', ',', '2', 1.00000000, '2008-09-13 18:02:35', 1, 0.0000);
INSERT INTO `clic_currencies` VALUES(2, 'Dollard', 'USD', 'USD', '', '.', ',', '2', 1.40750003, '2008-09-13 18:02:36', 1, 0.0000);
INSERT INTO `clic_currencies` VALUES(3, 'Canada', 'CAD', '', 'CAD', '.', '.', '2', 1.50580001, '2008-09-13 18:02:36', 1, 0.0000);

-- --------------------------------------------------------

--
-- Structure de la table `clic_customers`
--

DROP TABLE IF EXISTS `clic_customers`;
CREATE TABLE `clic_customers` (
  `customers_id` int(11) NOT NULL,
  `customers_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_siret` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_ape` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_tva_intracom` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_tva_intracom_code_iso` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_dob` datetime DEFAULT NULL,
  `customers_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_newsletter` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `languages_id` int(11) NOT NULL DEFAULT '1',
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `member_level` int(1) NOT NULL DEFAULT '0',
  `customers_options_order_taxe` tinyint(1) NOT NULL DEFAULT '0',
  `customers_modify_company` tinyint(1) NOT NULL DEFAULT '1',
  `customers_modify_address_default` tinyint(1) NOT NULL DEFAULT '1',
  `customers_add_address` tinyint(1) NOT NULL DEFAULT '1',
  `customers_cellular_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_email_validation` int(1) NOT NULL DEFAULT '0',
  `customer_discount` decimal(4,2) NOT NULL DEFAULT '0.00',
  `client_computer_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_name_client` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_website_company` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_guest_account` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_customers_basket`
--

DROP TABLE IF EXISTS `clic_customers_basket`;
CREATE TABLE `clic_customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) DEFAULT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `customers_basket_date_added` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_customers_basket_attributes`
--

DROP TABLE IF EXISTS `clic_customers_basket_attributes`;
CREATE TABLE `clic_customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_value_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_customers_gdpr`
--

DROP TABLE IF EXISTS `clic_customers_gdpr`;
CREATE TABLE `clic_customers_gdpr` (
  `id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `no_ip_address` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_customers_groups`
--

DROP TABLE IF EXISTS `clic_customers_groups`;
CREATE TABLE `clic_customers_groups` (
  `customers_group_id` int(11) NOT NULL,
  `customers_group_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_group_discount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `color_bar` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `group_order_taxe` tinyint(1) NOT NULL DEFAULT '0',
  `group_payment_unallowed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'cc',
  `group_shipping_unallowed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_tax` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `customers_group_quantity_default` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_customers_groups`
--

INSERT INTO `clic_customers_groups` VALUES(1, 'Tarifs 1', '5.00', 'FF0000', 0, 'CO', 'IT', 'true', 0);

-- --------------------------------------------------------

--
-- Structure de la table `clic_customers_info`
--

DROP TABLE IF EXISTS `clic_customers_info`;
CREATE TABLE `clic_customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0',
  `password_reset_key` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_customers_notes`
--

DROP TABLE IF EXISTS `clic_customers_notes`;
CREATE TABLE `clic_customers_notes` (
  `customers_notes_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_notes_date` datetime DEFAULT NULL,
  `user_administrator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_geo_zones`
--

DROP TABLE IF EXISTS `clic_geo_zones`;
CREATE TABLE `clic_geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_geo_zones`
--

INSERT INTO `clic_geo_zones` VALUES(1, 'France', 'Etat français avec tous les départements', '2016-12-03 11:34:53', '2006-04-11 18:48:30');
INSERT INTO `clic_geo_zones` VALUES(2, 'Etats membres de l\'UE', 'Etats membres de l\'union européenne', '2016-12-03 11:34:30', '2006-05-04 10:27:42');
INSERT INTO `clic_geo_zones` VALUES(3, 'Etats Zones Européennes', 'Tous les états ainsi que les départements', '2016-12-03 11:34:43', '2006-05-04 17:10:19');
INSERT INTO `clic_geo_zones` VALUES(7, 'Zone fédérale 5% - Canada GST', 'Zone fédérale 5% - GST', '2016-12-03 11:36:00', '2008-09-15 21:48:44');
INSERT INTO `clic_geo_zones` VALUES(8, 'Zone fédérale 12% HST BC', 'Zone fédérale 12% HST BC', '2016-12-03 11:35:19', '2008-09-15 21:49:02');
INSERT INTO `clic_geo_zones` VALUES(9, 'Zone Provinciale', 'Canada (québec)', '2016-12-03 11:36:16', '2008-09-15 21:51:15');
INSERT INTO `clic_geo_zones` VALUES(11, 'Zone fédérale 13% - NB / NF /', 'Zone fédérale 13%', '2016-12-03 11:35:31', '2015-02-09 16:05:34');
INSERT INTO `clic_geo_zones` VALUES(12, 'Zone fédérale 14%', 'Zone fédérale 14%', '2016-12-03 11:35:41', '2015-02-09 16:07:02');
INSERT INTO `clic_geo_zones` VALUES(13, 'Zone fédérale 15% - NS HST', 'Zone fédérale 15% - HST', '2016-12-03 11:35:50', '2015-02-09 16:07:53');
INSERT INTO `clic_geo_zones` VALUES(14, 'Zone fédérale 7%', 'Zone fédérale 7%', '2016-12-03 11:36:09', '2015-02-09 16:11:43');
INSERT INTO `clic_geo_zones` VALUES(15, 'Taxe hamonisée Québec', 'Taxe hamonisée Québec', '2016-12-03 11:35:05', '2015-02-09 16:59:28');

-- --------------------------------------------------------

--
-- Structure de la table `clic_groups_to_categories`
--

DROP TABLE IF EXISTS `clic_groups_to_categories`;
CREATE TABLE `clic_groups_to_categories` (
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `discount` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_information_email_customers`
--

DROP TABLE IF EXISTS `clic_information_email_customers`;
CREATE TABLE `clic_information_email_customers` (
  `information_email_customers_id` int(11) NOT NULL,
  `information_email_customers_delay_90` tinyint(1) NOT NULL DEFAULT '0',
  `information_email_customers_delay_60` tinyint(1) NOT NULL DEFAULT '0',
  `information_email_customers_delay_30` tinyint(1) NOT NULL DEFAULT '0',
  `information_email_customers_delay_15` tinyint(1) NOT NULL DEFAULT '0',
  `information_email_customers_delay_7` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_languages`
--

DROP TABLE IF EXISTS `clic_languages`;
CREATE TABLE `clic_languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_languages`
--

INSERT INTO `clic_languages` VALUES(1, 'Anglais', 'en', 'gb', 'english', 1, 1, 'en_US.UTF-8;en_US.UTF8;enu_usa');
INSERT INTO `clic_languages` VALUES(2, 'Francais', 'fr', 'fr', 'french', 2, 1, 'fr_FR.UTF-8;fr_FR.UTF8;enu_fra');

-- --------------------------------------------------------

--
-- Structure de la table `clic_languages_definitions`
--

DROP TABLE IF EXISTS `clic_languages_definitions`;
CREATE TABLE `clic_languages_definitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `languages_id` int(10) UNSIGNED NOT NULL,
  `content_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_manufacturers`
--

DROP TABLE IF EXISTS `clic_manufacturers`;
CREATE TABLE `clic_manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturers_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `manufacturers_status` tinyint(1) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_manufacturers_info`
--

DROP TABLE IF EXISTS `clic_manufacturers_info`;
CREATE TABLE `clic_manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL,
  `manufacturer_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `manufacturer_seo_title` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_seo_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_newsletters`
--

DROP TABLE IF EXISTS `clic_newsletters`;
CREATE TABLE `clic_newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0',
  `languages_id` int(11) NOT NULL DEFAULT '0',
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `newsletters_accept_file` int(1) NOT NULL DEFAULT '0',
  `newsletters_twitter` tinyint(1) NOT NULL DEFAULT '0',
  `newsletters_customer_no_account` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_newsletters_customers_temp`
--

DROP TABLE IF EXISTS `clic_newsletters_customers_temp`;
CREATE TABLE `clic_newsletters_customers_temp` (
  `customers_firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders`
--

DROP TABLE IF EXISTS `clic_orders`;
CREATE TABLE `clic_orders` (
  `orders_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_siret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_ape` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_tva_intracom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) NOT NULL,
  `delivery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_suburb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_format_id` int(5) DEFAULT NULL,
  `billing_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_cf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_piva` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_status_invoice` int(5) NOT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `client_computer_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_name_client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_cellular_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_archive` int(1) NOT NULL DEFAULT '0',
  `erp_invoice` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_pages_manager`
--

DROP TABLE IF EXISTS `clic_orders_pages_manager`;
CREATE TABLE `clic_orders_pages_manager` (
  `orders_page_manager_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `page_manager_general_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_products`
--

DROP TABLE IF EXISTS `clic_orders_products`;
CREATE TABLE `clic_orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_products_attributes`
--

DROP TABLE IF EXISTS `clic_orders_products_attributes`;
CREATE TABLE `clic_orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_attributes_reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_products_download`
--

DROP TABLE IF EXISTS `clic_orders_products_download`;
CREATE TABLE `clic_orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_status`
--

DROP TABLE IF EXISTS `clic_orders_status`;
CREATE TABLE `clic_orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_flag` int(1) DEFAULT '1',
  `downloads_flag` int(1) DEFAULT '0',
  `support_orders_flag` int(1) DEFAULT '0',
  `authorize_to_delete_order` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_orders_status`
--
INSERT INTO `clic_orders_status` VALUES(1, 1, 'Pending', 1, 0, 0, 1);
INSERT INTO `clic_orders_status` VALUES(1, 2, 'En instance', 1, 0, 0, 1);
INSERT INTO `clic_orders_status` VALUES(2, 1, 'processing', 1, 0, 0, 1);
INSERT INTO `clic_orders_status` VALUES(2, 2, 'Traitement en cours', 1, 0, 0, 1);
INSERT INTO `clic_orders_status` VALUES(3, 1, 'Delivered', 1, 0, 0, 0);
INSERT INTO `clic_orders_status` VALUES(3, 2, 'Livré', 1, 0, 0, 0);
INSERT INTO `clic_orders_status` VALUES(4, 1, 'Cancelled', 1, 0, 0, 1);
INSERT INTO `clic_orders_status` VALUES(4, 2, 'Annulé', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_status_history`
--

DROP TABLE IF EXISTS `clic_orders_status_history`;
CREATE TABLE `clic_orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `orders_status_invoice_id` int(5) NOT NULL DEFAULT '1',
  `admin_user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) NOT NULL DEFAULT '0',
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `orders_status_tracking_id` int(5) NOT NULL DEFAULT '0',
  `orders_tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_status_support_id` int(2) NOT NULL DEFAULT '0',
  `evidence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_status_invoice`
--

DROP TABLE IF EXISTS `clic_orders_status_invoice`;
CREATE TABLE `clic_orders_status_invoice` (
  `orders_status_invoice_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_invoice_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_orders_status_invoice`
--

INSERT INTO `clic_orders_status_invoice` VALUES(3, 2, 'Annuler');
INSERT INTO `clic_orders_status_invoice` VALUES(4, 2, 'Avoir');
INSERT INTO `clic_orders_status_invoice` VALUES(3, 1, 'Cancelled');
INSERT INTO `clic_orders_status_invoice` VALUES(1, 2, 'Commande');
INSERT INTO `clic_orders_status_invoice` VALUES(2, 2, 'Facture');
INSERT INTO `clic_orders_status_invoice` VALUES(4, 1, 'Have a bill');
INSERT INTO `clic_orders_status_invoice` VALUES(2, 1, 'Invoice');
INSERT INTO `clic_orders_status_invoice` VALUES(1, 1, 'Order');

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_status_support`
--

DROP TABLE IF EXISTS `clic_orders_status_support`;
CREATE TABLE `clic_orders_status_support` (
  `orders_status_support_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_support_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_orders_status_support`
--

INSERT INTO `clic_orders_status_support` VALUES(1, 2, '-- Aucune demande --');
INSERT INTO `clic_orders_status_support` VALUES(1, 1, '-- No request --');
INSERT INTO `clic_orders_status_support` VALUES(2, 2, 'Demande de support');
INSERT INTO `clic_orders_status_support` VALUES(4, 1, 'Support realised');
INSERT INTO `clic_orders_status_support` VALUES(2, 1, 'Support request');
INSERT INTO `clic_orders_status_support` VALUES(4, 2, 'Support terminé');
INSERT INTO `clic_orders_status_support` VALUES(3, 1, 'Support Treatment');
INSERT INTO `clic_orders_status_support` VALUES(3, 2, 'Traitement du support');

-- --------------------------------------------------------

--
-- Structure de la table `clic_orders_total`
--

DROP TABLE IF EXISTS `clic_orders_total`;
CREATE TABLE `clic_orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_pages_manager`
--

DROP TABLE IF EXISTS `clic_pages_manager`;
CREATE TABLE `clic_pages_manager` (
  `pages_id` int(11) NOT NULL,
  `links_target` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '_self',
  `sort_order` int(3) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `page_type` int(1) NOT NULL DEFAULT '0',
  `page_box` int(1) NOT NULL DEFAULT '0',
  `page_time` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_date_start` datetime DEFAULT NULL,
  `page_date_closed` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `page_general_condition` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_pages_manager`
--

INSERT INTO `clic_pages_manager` VALUES(1, '', 0, 1, 1, 0, '', NULL, NULL, '1000-01-01 00:00:00', '2008-09-08 15:39:50', '2008-09-03 20:38:09', 0, 0);
INSERT INTO `clic_pages_manager` VALUES(2, '', 1, 1, 2, 0, '0', NULL, NULL, '1000-01-01 00:00:00', '2018-11-23 18:13:03', NULL, 0, 0);
INSERT INTO `clic_pages_manager` VALUES(3, '', 2, 1, 3, 0, '', NULL, NULL, '1000-01-01 00:00:00', NULL, NULL, 0, 0);
INSERT INTO `clic_pages_manager` VALUES(4, '_self', 3, 1, 4, 0, '', NULL, NULL, '1000-01-01 00:00:00', '2014-02-07 20:14:00', NULL, 0, 1);
INSERT INTO `clic_pages_manager` VALUES(5, '', 4, 1, 4, 0, '', NULL, NULL, '1000-01-01 00:00:00', '2008-09-16 14:55:26', NULL, 0, 0);
INSERT INTO `clic_pages_manager` VALUES(7, '_self', 5, 1, 4, 0, '0', NULL, NULL, '2008-09-02 10:36:53', '2018-07-27 20:39:03', NULL, 0, 0);
INSERT INTO `clic_pages_manager` VALUES(8, '_self', 6, 1, 4, 0, '0', NULL, NULL, '2008-09-16 14:48:16', '2018-07-27 20:39:29', NULL, 0, 0);
INSERT INTO `clic_pages_manager` VALUES(10, '_self', 8, 1, 5, 3, '0', NULL, NULL, '2018-07-27 20:40:45', NULL, NULL, 0, 0);
INSERT INTO `clic_pages_manager` VALUES(11, '_self', 9, 1, 5, 3, '0', NULL, NULL, '2018-07-27 20:41:34', '2018-07-27 20:45:22', NULL, 0, 0);
INSERT INTO `clic_pages_manager` VALUES(13, '_self', 10, 1, 5, 3, '0', NULL, NULL, '2018-12-19 11:04:35', NULL, NULL, 99, 0);
INSERT INTO `clic_pages_manager` VALUES(14, '_self', 11, 1, 5, 3, '0', NULL, NULL, '2018-12-19 11:06:23', '2018-12-19 11:07:11', NULL, 99, 0);
INSERT INTO `clic_pages_manager` VALUES(15, '_self', 7, 1, 5, 3, '0', NULL, NULL, '2018-07-31 09:23:54', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `clic_pages_manager_description`
--

DROP TABLE IF EXISTS `clic_pages_manager_description`;
CREATE TABLE `clic_pages_manager_description` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `pages_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_html_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `externallink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `page_manager_head_title_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_manager_head_desc_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_manager_head_keywords_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_pages_manager_description`
--

INSERT INTO `clic_pages_manager_description` VALUES(1, 'Intro Page', '', '', 1, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(1, 'page intro', '', '', 2, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(2, 'MainPage', '', '', 1, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(2, 'Page Accueil', '', '', 2, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(3, 'Contact Us', '<p><strong>(Specify the name of your website or company)</strong></p>', '', 1, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(3, 'Nous Contacter', '<p><strong>(indiquer le nom de votre site ou votre société) </strong></p>', '', 2, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(4, 'General Conditions', 'General Conditions', '', 1, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(4, 'Conditions Générales', 'Conditions générales', '', 2, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(5, 'Confidential politics', 'Confidential politics', '', 1, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(5, 'Politiques de Confidentialité', 'Politiques de Confidentialité', '', 2, NULL, NULL, NULL);
INSERT INTO `clic_pages_manager_description` VALUES(7, 'RSS', '', 'index.php?Info&RSS', 1, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(7, 'RSS', '', 'index.php?Info&RSS', 2, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(8, 'Sitemap', '', 'index.php?Info&SiteMap', 1, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(8, 'Cartographie du site', '', 'index.php?Info&SiteMap', 2, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(10, 'Specials', '', 'index.php/Products/Specials', 1, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(10, 'Promotions', '', 'index.php/Products/Specials', 2, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(11, 'News', '', 'index.php/Products/ProductsNew', 1, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(11, 'Nouveautés', '', 'index.php/Products/ProductsNew', 2, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(13, 'Featured', '', 'index.php?Products&Featured', 1, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(13, 'Nos sélections', '', 'index.php?Products&Featured', 2, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(14, 'Favorites', '', 'index.php?Products&Favorites', 1, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(14, 'Nos Coups de coeur', '', 'index.php?Products&Favorites', 2, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(15, 'Index', '', 'index.php', 1, '', '', '');
INSERT INTO `clic_pages_manager_description` VALUES(15, 'Index', '', 'index.php', 2, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `clic_products`
--

DROP TABLE IF EXISTS `clic_products`;
CREATE TABLE `clic_products` (
  `products_id` int(11) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `has_children` int(11) DEFAULT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_ean` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_sku` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image_zoom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(15,4) NOT NULL,
  `products_price_kilo` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_percentage` tinyint(1) NOT NULL DEFAULT '1',
  `products_view` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `orders_view` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `suppliers_id` int(11) DEFAULT NULL,
  `products_archive` tinyint(1) NOT NULL DEFAULT '0',
  `products_min_qty_order` int(4) NOT NULL DEFAULT '0',
  `products_price_comparison` tinyint(1) NOT NULL DEFAULT '0',
  `products_dimension_width` decimal(5,2) NOT NULL DEFAULT '0.00',
  `products_dimension_height` decimal(5,2) NOT NULL DEFAULT '0.00',
  `products_dimension_depth` decimal(5,2) NOT NULL DEFAULT '0.00',
  `products_length_class_id` int(11) NOT NULL DEFAULT '2',
  `admin_user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_volume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_quantity_unit_id` int(11) NOT NULL DEFAULT '0',
  `products_only_online` tinyint(1) NOT NULL DEFAULT '0',
  `products_image_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image_small` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_weight_class_id` tinyint(2) NOT NULL DEFAULT '2',
  `products_cost` decimal(15,2) NOT NULL,
  `products_handling` decimal(15,2) NOT NULL DEFAULT '0.00',
  `products_packaging` tinyint(1) NOT NULL DEFAULT '0',
  `products_sort_order` int(11) NOT NULL DEFAULT '0',
  `products_quantity_alert` int(4) NOT NULL DEFAULT '0',
  `products_only_shop` tinyint(1) NOT NULL DEFAULT '0',
  `products_download_filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_download_public` tinyint(1) NOT NULL DEFAULT '0',
  `products_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_attributes`
--

DROP TABLE IF EXISTS `clic_products_attributes`;
CREATE TABLE `clic_products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
  `products_options_sort_order` int(3) DEFAULT '1',
  `products_attributes_reference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `products_attributes_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_attributes_download`
--

DROP TABLE IF EXISTS `clic_products_attributes_download`;
CREATE TABLE `clic_products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_description`
--

DROP TABLE IF EXISTS `clic_products_description`;
CREATE TABLE `clic_products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `products_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0',
  `products_head_title_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_head_desc_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_head_keywords_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_head_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_shipping_delay` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `products_description_summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_discount_quantity`
--

DROP TABLE IF EXISTS `clic_products_discount_quantity`;
CREATE TABLE `clic_products_discount_quantity` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL,
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `discount_quantity` int(11) NOT NULL,
  `discount_supplier_price` decimal(10,2) NOT NULL,
  `discount_customer` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_favorites`
--

DROP TABLE IF EXISTS `clic_products_favorites`;
CREATE TABLE `clic_products_favorites` (
  `products_favorites_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL DEFAULT '0',
  `products_favorites_date_added` datetime DEFAULT NULL,
  `products_favorites_last_modified` datetime DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `customers_group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_featured`
--

DROP TABLE IF EXISTS `clic_products_featured`;
CREATE TABLE `clic_products_featured` (
  `products_featured_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL DEFAULT '0',
  `products_featured_date_added` datetime DEFAULT NULL,
  `products_featured_last_modified` datetime DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `customers_group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_groups`
--

DROP TABLE IF EXISTS `clic_products_groups`;
CREATE TABLE `clic_products_groups` (
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `customers_group_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `products_id` int(11) NOT NULL DEFAULT '0',
  `products_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `price_group_view` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `products_group_view` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `orders_group_view` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `products_quantity_unit_id_group` int(5) NOT NULL DEFAULT '0',
  `products_model_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_quantity_fixed_group` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_images`
--

DROP TABLE IF EXISTS `clic_products_images`;
CREATE TABLE `clic_products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `htmlcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_length_classes`
--

DROP TABLE IF EXISTS `clic_products_length_classes`;
CREATE TABLE `clic_products_length_classes` (
  `products_length_class_id` int(11) NOT NULL,
  `products_length_class_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `products_length_class_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_products_length_classes`
--

INSERT INTO `clic_products_length_classes` VALUES(1, 'mm', 1, 'Millimeter(s)');
INSERT INTO `clic_products_length_classes` VALUES(1, 'mm', 2, 'millimètre(s)');
INSERT INTO `clic_products_length_classes` VALUES(2, 'cm', 1, 'Centimeter(s)');
INSERT INTO `clic_products_length_classes` VALUES(2, 'cm', 2, 'Centimètre(s)');
INSERT INTO `clic_products_length_classes` VALUES(3, 'm', 1, 'meter(s)');
INSERT INTO `clic_products_length_classes` VALUES(3, 'm', 2, 'mètre(s)');
INSERT INTO `clic_products_length_classes` VALUES(4, 'in', 1, 'Inch(s)');
INSERT INTO `clic_products_length_classes` VALUES(4, 'in', 2, 'Pouce(s)');

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_length_classes_rules`
--

DROP TABLE IF EXISTS `clic_products_length_classes_rules`;
CREATE TABLE `clic_products_length_classes_rules` (
  `products_length_class_from_id` int(11) NOT NULL,
  `products_length_class_to_id` int(11) NOT NULL,
  `products_length_class_rule` decimal(15,5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_products_length_classes_rules`
--

INSERT INTO `clic_products_length_classes_rules` VALUES(1, 2, '0.10000');
INSERT INTO `clic_products_length_classes_rules` VALUES(1, 3, '0.00100');
INSERT INTO `clic_products_length_classes_rules` VALUES(1, 4, '0.03937');
INSERT INTO `clic_products_length_classes_rules` VALUES(2, 1, '10.00000');
INSERT INTO `clic_products_length_classes_rules` VALUES(2, 3, '0.01000');
INSERT INTO `clic_products_length_classes_rules` VALUES(2, 4, '0.39370');
INSERT INTO `clic_products_length_classes_rules` VALUES(3, 1, '1000.00000');
INSERT INTO `clic_products_length_classes_rules` VALUES(3, 2, '100.00000');
INSERT INTO `clic_products_length_classes_rules` VALUES(3, 4, '39.37007');
INSERT INTO `clic_products_length_classes_rules` VALUES(4, 1, '25.40000');
INSERT INTO `clic_products_length_classes_rules` VALUES(4, 2, '2.54000');
INSERT INTO `clic_products_length_classes_rules` VALUES(4, 3, '0.02540');

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_notifications`
--

DROP TABLE IF EXISTS `clic_products_notifications`;
CREATE TABLE `clic_products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_options`
--

DROP TABLE IF EXISTS `clic_products_options`;
CREATE TABLE `clic_products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_options_sort_order` int(3) NOT NULL DEFAULT '1',
  `products_options_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_options_values`
--

DROP TABLE IF EXISTS `clic_products_options_values`;
CREATE TABLE `clic_products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_options_values_to_products_options`
--

DROP TABLE IF EXISTS `clic_products_options_values_to_products_options`;
CREATE TABLE `clic_products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_quantity_unit`
--

DROP TABLE IF EXISTS `clic_products_quantity_unit`;
CREATE TABLE `clic_products_quantity_unit` (
  `products_quantity_unit_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `products_quantity_unit_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_products_quantity_unit`
--

INSERT INTO `clic_products_quantity_unit` VALUES(4, 2, 'douzaine');
INSERT INTO `clic_products_quantity_unit` VALUES(4, 1, 'dozen');
INSERT INTO `clic_products_quantity_unit` VALUES(2, 1, 'kg');
INSERT INTO `clic_products_quantity_unit` VALUES(2, 2, 'kg');
INSERT INTO `clic_products_quantity_unit` VALUES(3, 1, 'liter');
INSERT INTO `clic_products_quantity_unit` VALUES(3, 2, 'litre');
INSERT INTO `clic_products_quantity_unit` VALUES(5, 2, 'pcs');
INSERT INTO `clic_products_quantity_unit` VALUES(5, 1, 'pièces');
INSERT INTO `clic_products_quantity_unit` VALUES(1, 1, 'unit');
INSERT INTO `clic_products_quantity_unit` VALUES(1, 2, 'unité');

-- --------------------------------------------------------

--
-- Structure de la table `clic_products_to_categories`
--

DROP TABLE IF EXISTS `clic_products_to_categories`;
CREATE TABLE `clic_products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_reviews`
--

DROP TABLE IF EXISTS `clic_reviews`;
CREATE TABLE `clic_reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_read` int(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `customers_group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_reviews_description`
--

DROP TABLE IF EXISTS `clic_reviews_description`;
CREATE TABLE `clic_reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_sec_directory_whitelist`
--

DROP TABLE IF EXISTS `clic_sec_directory_whitelist`;
CREATE TABLE `clic_sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_sec_directory_whitelist`
--

INSERT INTO `clic_sec_directory_whitelist` VALUES(1, 'ClicShoppingAdmin/includes/backups');
INSERT INTO `clic_sec_directory_whitelist` VALUES(2, 'ClicShoppingAdmin/images');
INSERT INTO `clic_sec_directory_whitelist` VALUES(4, 'sources');
INSERT INTO `clic_sec_directory_whitelist` VALUES(5, 'sources/images');
INSERT INTO `clic_sec_directory_whitelist` VALUES(6, 'pub');
INSERT INTO `clic_sec_directory_whitelist` VALUES(7, 'includes/Work');

-- --------------------------------------------------------

--
-- Structure de la table `clic_sessions`
--

DROP TABLE IF EXISTS `clic_sessions`;
CREATE TABLE `clic_sessions` (
  `sesskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_specials`
--

DROP TABLE IF EXISTS `clic_specials`;
CREATE TABLE `clic_specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `scheduled_date` datetime DEFAULT NULL,
  `customers_group_id` int(11) NOT NULL DEFAULT '0',
  `flash_discount` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_submit_description`
--

DROP TABLE IF EXISTS `clic_submit_description`;
CREATE TABLE `clic_submit_description` (
  `submit_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `submit_defaut_language_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_defaut_language_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submit_defaut_language_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_defaut_language_footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submit_language_products_info_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_products_info_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submit_language_products_info_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_products_new_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_products_new_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submit_language_products_new_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_special_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_special_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submit_language_special_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_reviews_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_reviews_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submit_language_reviews_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_favorites_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_favorites_keywords` text COLLATE utf8mb4_unicode_ci,
  `submit_language_favorites_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_featured_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_language_featured_keywords` text COLLATE utf8mb4_unicode_ci,
  `submit_language_featured_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_submit_description`
--

INSERT INTO submit_description VALUES(1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO submit_description VALUES(1, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `clic_suppliers`
--

DROP TABLE IF EXISTS `clic_suppliers`;
CREATE TABLE `clic_suppliers` (
  `suppliers_id` int(11) NOT NULL,
  `suppliers_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `suppliers_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `suppliers_manager` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_email_address` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_fax` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_suburb` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_postcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_states` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppliers_country_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suppliers_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_suppliers_info`
--

DROP TABLE IF EXISTS `clic_suppliers_info`;
CREATE TABLE `clic_suppliers_info` (
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `languages_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_clicked` int(5) DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_tax_class`
--

DROP TABLE IF EXISTS `clic_tax_class`;
CREATE TABLE `clic_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_tax_class`
--

INSERT INTO `clic_tax_class` VALUES(1, 'TVA 20', 'TVA France 20', '2015-02-09 16:13:40', '2006-04-09 16:13:48');
INSERT INTO `clic_tax_class` VALUES(2, 'TVA 5.5', 'TVA France 5.5', '2008-09-03 13:33:35', '2006-04-16 00:30:06');
INSERT INTO `clic_tax_class` VALUES(3, 'Biens taxables Canada', 'Biens taxables Canada', NULL, '2008-09-16 15:02:29');
INSERT INTO `clic_tax_class` VALUES(4, 'Taxe hamonisée Québec', 'Taxe hamonisée Québec', NULL, '2015-01-25 01:23:07');

-- --------------------------------------------------------

--
-- Structure de la table `clic_tax_rates`
--

DROP TABLE IF EXISTS `clic_tax_rates`;
CREATE TABLE `clic_tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `code_tax_erp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_tax_rates`
--

INSERT INTO `clic_tax_rates` VALUES(1, 1, 1, 1, '20.0000', 'TVA 20%', '2015-02-09 16:14:24', '2006-04-09 16:13:48', '20.0');
INSERT INTO `clic_tax_rates` VALUES(2, 1, 2, 0, '5.5000', 'TVA 5.5%', '2015-02-09 17:01:13', '2006-04-16 00:30:21', '5.5');
INSERT INTO `clic_tax_rates` VALUES(3, 9, 3, 1, '9.9750', 'Zone TVH 9.975', '2015-02-09 16:16:14', '2008-09-16 15:04:49', 'TVQ');
INSERT INTO `clic_tax_rates` VALUES(5, 7, 3, 1, '5.0000', 'Zone TPS 5%', '2015-02-09 16:16:55', '2008-09-16 15:05:48', 'TPS_SALE');
INSERT INTO `clic_tax_rates` VALUES(6, 15, 4, 1, '14.9750', 'Taxe hamonisée Québec', '2015-02-09 17:00:14', '2015-01-25 01:25:11', 'TPSTVQ_SALE');
INSERT INTO `clic_tax_rates` VALUES(7, 11, 3, 1, '13.0000', 'Zone TVH 13%', '2015-02-09 16:18:27', '2015-02-09 16:15:01', 'TVH13_SALE');
INSERT INTO `clic_tax_rates` VALUES(8, 12, 3, 1, '14.0000', 'Zone fédérale 14%', '2015-02-09 16:18:38', '2015-02-09 16:17:18', 'TVH14_SALE');
INSERT INTO `clic_tax_rates` VALUES(9, 8, 3, 1, '12.0000', 'Zone Fédérale 12%', '2015-02-09 16:18:46', '2015-02-09 16:17:47', 'TVH12_SALE');

-- --------------------------------------------------------

--
-- Structure de la table `clic_template_email`
--

DROP TABLE IF EXISTS `clic_template_email`;
CREATE TABLE `clic_template_email` (
  `template_email_id` int(11) NOT NULL,
  `template_email_variable` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_group_id` int(2) NOT NULL DEFAULT '0',
  `template_email_type` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_template_email`
--

INSERT INTO `clic_template_email` VALUES(1, 'TEMPLATE_EMAIL_WELCOME', 0, 0);
INSERT INTO `clic_template_email` VALUES(2, 'TEMPLATE_EMAIL_TEXT_FOOTER', 0, 0);
INSERT INTO `clic_template_email` VALUES(3, 'TEMPLATE_EMAIL_WELCOME_ADMIN', 0, 0);
INSERT INTO `clic_template_email` VALUES(4, 'TEMPLATE_EMAIL_TEXT_COUPON', 0, 0);
INSERT INTO `clic_template_email` VALUES(5, 'TEMPLATE_EMAIL_SIGNATURE', 0, 0);
INSERT INTO `clic_template_email` VALUES(6, 'TEMPLATE_EMAIL_INTRO_COMMAND', 0, 0);
INSERT INTO `clic_template_email` VALUES(7, 'TEMPLATE_EMAIL_NEWSLETTER_TEXT_FOOTER', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `clic_template_email_description`
--

DROP TABLE IF EXISTS `clic_template_email_description`;
CREATE TABLE `clic_template_email_description` (
  `template_email_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `template_email_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_email_short_description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_email_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_template_email_description`
--

INSERT INTO `clic_template_email_description` VALUES(1, 1, 'Welcome message on catalogue', 'Catalog - welcome message for a new customer', '<div align=\"justify\"> Thank you for the trust you place in us by registering as a new customer on site {{http_shop}}.</div>\r\n\r\n<div align=\"justify\"> Following your request to open an account on {{store_name}} we confirm its validity. You can now log on {{store_name}}.</div>\r\n\r\n<div align=\"justify\">We are delighted to count you among our new clients and we remain at your service to make shopping easy! !</div>\r\n\r\n<div align=\"justify\"> \'<strong>Your links :</strong>\'</div>\r\n\r\n<div align=\"justify\"> 1) To access your account, change your address, your delivery address and / or billing,  {{http_shop}}index.php?Account&Main</div>\r\n\r\n<div align=\"justify\">2) To go directly to track your orders, {{http_shop}}index.php?Account&History</div>\r\n\r\n<div align=\"justify\">3) Recover lost password : {{http_shop}}index.php?Account&PasswordForgotten</div>\r\n\r\n<div align=\"justify\">To access all the above, you should check before your login..</div>\r\n\r\n<div align=\"justify\"> </div>\r\n\r\n<div align=\"justify\">For assistance on our services, please contact our customer service: {{store_owner_email_address}} :  {{store_owner_email_address}}</div>\r\n');
INSERT INTO `clic_template_email_description` VALUES(1, 2, 'Message de bienvenue catalogue', 'Catalogue -Message de bienvenue lors de l\'inscription du client', '<div align=\"justify\"> Nous vous remercions pour la confiance que vous nous témoigniez en vous enregistrant comme nouveau client sur le site {{http_shop}}.</div>\r\n\r\n<div align=\"justify\"> Comme suite à  votre demande d\'ouverture de compte sur {{store_name}} nous vous confirmons sa validation. Vous pouvez dès a présent vous connecter sur {{store_name}}.</div>\r\n\r\n<div align=\"justify\">Nous sommes ravis de vous compter parmi nos nouveaux clients et nous restons à  votre service pour vous faciliter vos achats !</div>\r\n\r\n<div align=\"justify\"> \'<strong>Vos liens utiles :</strong>\'</div>\r\n\r\n<div align=\"justify\"> 1) Pour accéder à  votre compte client, modifier vos coordonnées, vos adresses de livraison et/ou facturation, {{http_shop}}index.php?Account&Main</div>\r\n\r\n<div>2) Pour accéder directement au suivi de vos commandes, {{http_shop}}index.php?Account&History</div>\r\n\r\n<div align=\"justify\">3) Retrouver son mot de passe oublié :  {{http_shop}}index.php?Account&PasswordForgotten</div>\r\n\r\n<div align=\"justify\">Pour tous les accès précités, vous devrez renseigner au préalable vos identifiants.</div>\r\n\r\n<div align=\"justify\"> </div>\r\n\r\n<div align=\"justify\">Pour toute aide sur nos services, n\'hésitez pas à  contacter notre service clientèle :  {{store_owner_email_address}}</div>\r\n');
INSERT INTO `clic_template_email_description` VALUES(2, 1, 'Confidentialities', 'Regulation : footer for all email sending except newsletter', 'This e-mail and any files transmitted with it are confidential and intended solely for the use of the individual to whom it is addressed. If you have received this email in error please send it back to the person that sent it to you. Any views or opinions presented are solely those of its author and do not necessarily represent those of {{store_name}} or any of its subsidiary companies. Unauthorized publication, use, dissemination, forwarding, printing or copying of this email and its associated attachments is strictly prohibited.<br /><br />.Pursuant to the Act in the country of residence of the company operating the store {{store_name}}, you are entitled to the correction of your personal data at any time or upon request by email at {{store_owner_email_address}} .<p> </p>');
INSERT INTO `clic_template_email_description` VALUES(2, 2, 'Avis de confidentialité', 'Législation : pied de page pour tous les emails envoyés sauf newsletter', '<p> <u>Avis de confidentialité :</u><br />Ce message ainsi que les documents qui seraient joints en annexe sont adressés exclusivement à  leur destinataire et pourraient contenir une information confidentielle soumise au secret professionnel ou dont la divulgation est interdite en vertu de la législation en vigueur. De ce fait, nous avertissons la personne qui le recevrait sans àªtre le destinataire ou une personne autorisée, que cette information est confidentielle et que toute utilisation, copie, archive ou divulgation en est interdite. Si vous avez reà§u ce message, nous vous prions de bien vouloir nous le communiquer par courriel :  {{store_owner_email_address}} et de procéder directement à  sa destruction.</p><p>Conformément à  la Loi dans le pays de résidence de la société exploitant la boutique {{store_name}}, vous avez droit à  la rectification de vos données personnelles à  tout moment ou sur simple demande par email. {{store_owner_email_address}}</p>');
INSERT INTO `clic_template_email_description` VALUES(3, 1, 'Customer create account', 'Admin : Welcome message - Customer create account', '<div align=\"justify\"> </div><div align=\"justify\">We just create an account following an order by you (by phone or otherwise) on site {{store_name}} .</div><div align=\"justify\"> </div><div align=\"justify\">By logging on {{store_name}} (after retrieving your password), we can enjoy a range of services..</div><div align=\"justify\"> </div><div align=\"justify\">We are delighted to count you among our new clients and we remain at your service to make shopping easy! !</div><div align=\"justify\"> </div><div align=\"justify\"><strong>Your links :</strong>\'</div><div align=\"justify\"> 1) To access your account, change your address, your delivery address and / or billing, {{http_shop}}index.php?Account&Main</div><div align=\"justify\">2) To go directly to track your orders, {{http_shop}}index.php?Account&History</div><div align=\"justify\">3) Recover lost password : {{http_shop}}index.php?Account&PasswordForgotten</div><div align=\"justify\">To access all the above, you should check before your login..</div><div align=\"justify\"> </div><div align=\"justify\">For assistance on our services, please contact our customer service: {{store_owner_email_address}}</div>');
INSERT INTO `clic_template_email_description` VALUES(3, 2, 'Création du compte client', 'Admin : Message de bienvenue lors de la création du comte client', '<div align=\"justify\"> </div><div align=\"justify\">Nous venons de vous créer un compte suite à  une commande de votre part (par téléphone ou autre) sur le site {{store_name}} .</div><div align=\"justify\"> </div><div align=\"justify\">En vous connectant sur {{store_name}} (apr&egrave;s avoir récupéré votre mot de passe), nous pourrez bénéficier d\'un ensemble de services.</div><div align=\"justify\"> </div><div align=\"justify\">Nous sommes ravis de vous compter parmi nos nouveaux clients et nous restons à  votre service pour vous faciliter vos achats !</div><div align=\"justify\"> </div><div align=\"justify\"><strong>Vos liens utiles :</strong></div><div align=\"justify\"> </div><div>1) Pour accéder à  votre compte client, modifier vos coordonnées, vos adresses de livraison et/ou facturation : {{http_shop}}index.php?Account&Main</div><div>2) Pour accéder directement au suivi de vos commandes : {{http_shop}}index.php?Account&History</div><div>3) Retrouver son mot de passe oublié : {{http_shop}}index.php?Account&PasswordFogotten<br />4) Pour contacter notre service apr&egrave;s vente concernant une commande, veuillez éditer votre commande dans votre espace et cliquez sur support.</div><div align=\"justify\">Pour tous les acc&egrave;s précités, vous devrez renseigner au préalable vos identifiants.</div><div>Pour toute aide sur nos services, n\'hésitez pas à contacter notre service client&egrave;le :  {{store_owner_email_address}}</div>');
INSERT INTO `clic_template_email_description` VALUES(4, 1, 'Customer coupon', 'Give a coupon during the creation a customer account', '<p>{{store_name}} is pleased to offer you a discount on your next order coupon that you can use anytime Store. To know the rules for applying the coupon, please visit our online help. .</p><p>The coupon number is: :</p>');
INSERT INTO `clic_template_email_description` VALUES(4, 2, 'Coupon Client', 'Offrir un coupon lors de la création d\'un compte client', '<p>{{store_name}} se fait un plaisir de vous offrir un coupon remise sur votre prochaine commande que vous pourrez utiliser n\'importe quand sur la boutique. Pour connaitre les modalités d\'application du coupon, veuillez consulter notre aide en ligne.</p><p>Le numéro du coupon est :</p>');
INSERT INTO `clic_template_email_description` VALUES(5, 1, 'Signature', 'Signature at the bottom of the message', '<p>---------------------</p><p>Regards,</p><p>{{store_name}} team</p>');
INSERT INTO `clic_template_email_description` VALUES(5, 2, 'Signature', 'Qui sera associé au bas d\'un mail envoyé : signature', '<p>---------------------</p><p>Cordialement,</p><p>L\'équipe {{store_name}}</p>');
INSERT INTO `clic_template_email_description` VALUES(6, 1, 'Order status', 'Order status email', 'Email sent after an update statusp>Hello,<br /><br /> The status of your order has been updated..<br /><br /> For all subsequent requests, please log into your administration area..<br /><br /> - View your orders and your order history : {{http_shop}}index.php?Account&History<br /> - We send a message regarding this order (click edit your order and contact our support)<br /> - Print, download an order, an invoice (edit your order and click on the PDF icon invoice)</p>');
INSERT INTO `clic_template_email_description` VALUES(6, 2, 'Statut commande', 'Mail concernant le statut commande', 'Email envoyé suite à  une MAJ d\'un statut<p> Bonjour,<br /><br /> Le statut de votre commande a été mis à  jour.<br /><br /> Pour toutes les demandes suivantes, veuillez vous connecter à  votre espace d\'administration.<br /><br /> - Consulter vos commandes ou votre historique de commande : {{http_shop}}index.php?Account&History<br /> - Nous envoyer un message concernant cette commande (éditer votre commande et cliquez contacter notre support)<br /> - Imprimer, télécharger une commande, une facture (éditer votre commande et cliquez sur l\'icone PDF facture)<br /> </p>');
INSERT INTO `clic_template_email_description` VALUES(7, 1, 'Newsletter regulation', 'Regulation footer text', 'In accordance with the <strong>Law of the </strong>{{store_name}}, you are entitled to change your personal data or on request by email.<br />To unsubscribe from our newsletter, send us an email or just click on the following link: {{http_shop}}?Account&Newsletters');
INSERT INTO `clic_template_email_description` VALUES(7, 2, 'Législation newsletter', 'text bas de page législation newsletter', 'Conformément aux <strong>Lois</strong> en vigueur dans le pays de la boutique {{store_name}}, vous avez droit à  la rectification de vos données personnelles à  tout moment ou sur simple demande par email.<br />Pour se désabonner de notre Newsletter, veuillez recopier  sur le lien suivant : {{http_shop}}index.php?Account&Newsletters');

-- --------------------------------------------------------

--
-- Structure de la table `clic_weight_classes`
--

DROP TABLE IF EXISTS `clic_weight_classes`;
CREATE TABLE `clic_weight_classes` (
  `weight_class_id` int(11) NOT NULL,
  `weight_class_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `weight_class_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_weight_classes`
--

INSERT INTO `clic_weight_classes` VALUES(1, 'g', 1, 'Gram(s)');
INSERT INTO `clic_weight_classes` VALUES(1, 'g', 2, 'Gramme(s)');
INSERT INTO `clic_weight_classes` VALUES(2, 'kg', 1, 'Kilogram(s)');
INSERT INTO `clic_weight_classes` VALUES(2, 'kg', 2, 'Kilogramme(s)');
INSERT INTO `clic_weight_classes` VALUES(3, 'oz', 1, 'Ounce(s)');
INSERT INTO `clic_weight_classes` VALUES(3, 'oz', 2, 'Ounce(s)');
INSERT INTO `clic_weight_classes` VALUES(4, 'lb', 1, 'Pound(s)');
INSERT INTO `clic_weight_classes` VALUES(4, 'lb', 2, 'Pound(s)');

-- --------------------------------------------------------

--
-- Structure de la table `clic_weight_classes_rules`
--

DROP TABLE IF EXISTS `clic_weight_classes_rules`;
CREATE TABLE `clic_weight_classes_rules` (
  `weight_class_from_id` int(11) NOT NULL,
  `weight_class_to_id` int(11) NOT NULL,
  `weight_class_rule` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_weight_classes_rules`
--

INSERT INTO `clic_weight_classes_rules` VALUES(1, 2, '0.0010');
INSERT INTO `clic_weight_classes_rules` VALUES(1, 3, '0.0352');
INSERT INTO `clic_weight_classes_rules` VALUES(1, 4, '0.0022');
INSERT INTO `clic_weight_classes_rules` VALUES(2, 1, '1000.0000');
INSERT INTO `clic_weight_classes_rules` VALUES(2, 3, '10.0000');
INSERT INTO `clic_weight_classes_rules` VALUES(2, 4, '2.2046');
INSERT INTO `clic_weight_classes_rules` VALUES(3, 1, '28.3495');
INSERT INTO `clic_weight_classes_rules` VALUES(3, 2, '4.0000');
INSERT INTO `clic_weight_classes_rules` VALUES(3, 4, '0.0625');
INSERT INTO `clic_weight_classes_rules` VALUES(4, 1, '453.5923');
INSERT INTO `clic_weight_classes_rules` VALUES(4, 2, '0.4535');
INSERT INTO `clic_weight_classes_rules` VALUES(4, 3, '16.0000');

-- --------------------------------------------------------

--
-- Structure de la table `clic_whos_online`
--

DROP TABLE IF EXISTS `clic_whos_online`;
CREATE TABLE `clic_whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_entry` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_last_click` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_page_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_referer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_agent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clic_zones`
--

DROP TABLE IF EXISTS `clic_zones`;
CREATE TABLE `clic_zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_zones`
--

INSERT INTO `clic_zones` VALUES(1, 223, 'AL', 'Alabama', 0);
INSERT INTO `clic_zones` VALUES(2, 223, 'AK', 'Alaska', 0);
INSERT INTO `clic_zones` VALUES(3, 223, 'AS', 'American Samoa', 0);
INSERT INTO `clic_zones` VALUES(4, 223, 'AZ', 'Arizona', 0);
INSERT INTO `clic_zones` VALUES(5, 223, 'AR', 'Arkansas', 0);
INSERT INTO `clic_zones` VALUES(6, 223, 'AF', 'Armed Forces Africa', 0);
INSERT INTO `clic_zones` VALUES(7, 223, 'AA', 'Armed Forces Americas', 0);
INSERT INTO `clic_zones` VALUES(8, 223, 'AC', 'Armed Forces Canada', 0);
INSERT INTO `clic_zones` VALUES(9, 223, 'AE', 'Armed Forces Europe', 0);
INSERT INTO `clic_zones` VALUES(10, 223, 'AM', 'Armed Forces Middle East', 0);
INSERT INTO `clic_zones` VALUES(11, 223, 'AP', 'Armed Forces Pacific', 0);
INSERT INTO `clic_zones` VALUES(12, 223, 'CA', 'California', 0);
INSERT INTO `clic_zones` VALUES(13, 223, 'CO', 'Colorado', 0);
INSERT INTO `clic_zones` VALUES(14, 223, 'CT', 'Connecticut', 0);
INSERT INTO `clic_zones` VALUES(15, 223, 'DE', 'Delaware', 0);
INSERT INTO `clic_zones` VALUES(16, 223, 'DC', 'District of Columbia', 0);
INSERT INTO `clic_zones` VALUES(17, 223, 'FM', 'Federated States Of Micronesia', 0);
INSERT INTO `clic_zones` VALUES(18, 223, 'FL', 'Florida', 0);
INSERT INTO `clic_zones` VALUES(19, 223, 'GA', 'Georgia', 0);
INSERT INTO `clic_zones` VALUES(20, 223, 'GU', 'Guam', 0);
INSERT INTO `clic_zones` VALUES(21, 223, 'HI', 'Hawaii', 0);
INSERT INTO `clic_zones` VALUES(22, 223, 'ID', 'Idaho', 0);
INSERT INTO `clic_zones` VALUES(23, 223, 'IL', 'Illinois', 0);
INSERT INTO `clic_zones` VALUES(24, 223, 'IN', 'Indiana', 0);
INSERT INTO `clic_zones` VALUES(25, 223, 'IA', 'Iowa', 0);
INSERT INTO `clic_zones` VALUES(26, 223, 'KS', 'Kansas', 0);
INSERT INTO `clic_zones` VALUES(27, 223, 'KY', 'Kentucky', 0);
INSERT INTO `clic_zones` VALUES(28, 223, 'LA', 'Louisiana', 0);
INSERT INTO `clic_zones` VALUES(29, 223, 'ME', 'Maine', 0);
INSERT INTO `clic_zones` VALUES(30, 223, 'MH', 'Marshall Islands', 0);
INSERT INTO `clic_zones` VALUES(31, 223, 'MD', 'Maryland', 0);
INSERT INTO `clic_zones` VALUES(32, 223, 'MA', 'Massachusetts', 0);
INSERT INTO `clic_zones` VALUES(33, 223, 'MI', 'Michigan', 0);
INSERT INTO `clic_zones` VALUES(34, 223, 'MN', 'Minnesota', 0);
INSERT INTO `clic_zones` VALUES(35, 223, 'MS', 'Mississippi', 0);
INSERT INTO `clic_zones` VALUES(36, 223, 'MO', 'Missouri', 0);
INSERT INTO `clic_zones` VALUES(37, 223, 'MT', 'Montana', 0);
INSERT INTO `clic_zones` VALUES(38, 223, 'NE', 'Nebraska', 0);
INSERT INTO `clic_zones` VALUES(39, 223, 'NV', 'Nevada', 0);
INSERT INTO `clic_zones` VALUES(40, 223, 'NH', 'New Hampshire', 0);
INSERT INTO `clic_zones` VALUES(41, 223, 'NJ', 'New Jersey', 0);
INSERT INTO `clic_zones` VALUES(42, 223, 'NM', 'New Mexico', 0);
INSERT INTO `clic_zones` VALUES(43, 223, 'NY', 'New York', 0);
INSERT INTO `clic_zones` VALUES(44, 223, 'NC', 'North Carolina', 0);
INSERT INTO `clic_zones` VALUES(45, 223, 'ND', 'North Dakota', 0);
INSERT INTO `clic_zones` VALUES(46, 223, 'MP', 'Northern Mariana Islands', 0);
INSERT INTO `clic_zones` VALUES(47, 223, 'OH', 'Ohio', 0);
INSERT INTO `clic_zones` VALUES(48, 223, 'OK', 'Oklahoma', 0);
INSERT INTO `clic_zones` VALUES(49, 223, 'OR', 'Oregon', 0);
INSERT INTO `clic_zones` VALUES(50, 223, 'PW', 'Palau', 0);
INSERT INTO `clic_zones` VALUES(51, 223, 'PA', 'Pennsylvania', 0);
INSERT INTO `clic_zones` VALUES(52, 223, 'PR', 'Puerto Rico', 0);
INSERT INTO `clic_zones` VALUES(53, 223, 'RI', 'Rhode Island', 0);
INSERT INTO `clic_zones` VALUES(54, 223, 'SC', 'South Carolina', 0);
INSERT INTO `clic_zones` VALUES(55, 223, 'SD', 'South Dakota', 0);
INSERT INTO `clic_zones` VALUES(56, 223, 'TN', 'Tennessee', 0);
INSERT INTO `clic_zones` VALUES(57, 223, 'TX', 'Texas', 0);
INSERT INTO `clic_zones` VALUES(58, 223, 'UT', 'Utah', 0);
INSERT INTO `clic_zones` VALUES(59, 223, 'VT', 'Vermont', 0);
INSERT INTO `clic_zones` VALUES(60, 223, 'VI', 'Virgin Islands', 0);
INSERT INTO `clic_zones` VALUES(61, 223, 'VA', 'Virginia', 0);
INSERT INTO `clic_zones` VALUES(62, 223, 'WA', 'Washington', 0);
INSERT INTO `clic_zones` VALUES(63, 223, 'WV', 'West Virginia', 0);
INSERT INTO `clic_zones` VALUES(64, 223, 'WI', 'Wisconsin', 0);
INSERT INTO `clic_zones` VALUES(65, 223, 'WY', 'Wyoming', 0);
INSERT INTO `clic_zones` VALUES(66, 38, 'AB', 'Alberta', 0);
INSERT INTO `clic_zones` VALUES(67, 38, 'BC', 'British Columbia', 0);
INSERT INTO `clic_zones` VALUES(68, 38, 'MB', 'Manitoba', 0);
INSERT INTO `clic_zones` VALUES(69, 38, 'NF', 'Newfoundland', 0);
INSERT INTO `clic_zones` VALUES(70, 38, 'NB', 'New Brunswick', 0);
INSERT INTO `clic_zones` VALUES(71, 38, 'NS', 'Nova Scotia', 0);
INSERT INTO `clic_zones` VALUES(72, 38, 'NT', 'Northwest Territories', 0);
INSERT INTO `clic_zones` VALUES(73, 38, 'NU', 'Nunavut', 0);
INSERT INTO `clic_zones` VALUES(74, 38, 'ON', 'Ontario', 0);
INSERT INTO `clic_zones` VALUES(75, 38, 'PE', 'Prince Edward Island', 0);
INSERT INTO `clic_zones` VALUES(76, 38, 'QC', 'Quebec', 0);
INSERT INTO `clic_zones` VALUES(77, 38, 'SK', 'Saskatchewan', 0);
INSERT INTO `clic_zones` VALUES(78, 38, 'YT', 'Yukon Territory', 0);
INSERT INTO `clic_zones` VALUES(79, 81, 'NDS', 'Niedersachsen', 0);
INSERT INTO `clic_zones` VALUES(80, 81, 'BAW', 'Baden-Württemberg', 0);
INSERT INTO `clic_zones` VALUES(81, 81, 'BAY', 'Bayern', 0);
INSERT INTO `clic_zones` VALUES(82, 81, 'BER', 'Berlin', 0);
INSERT INTO `clic_zones` VALUES(83, 81, 'BRG', 'Brandenburg', 0);
INSERT INTO `clic_zones` VALUES(84, 81, 'BRE', 'Bremen', 0);
INSERT INTO `clic_zones` VALUES(85, 81, 'HAM', 'Hamburg', 0);
INSERT INTO `clic_zones` VALUES(86, 81, 'HES', 'Hessen', 0);
INSERT INTO `clic_zones` VALUES(87, 81, 'MEC', 'Mecklenburg-Vorpommern', 0);
INSERT INTO `clic_zones` VALUES(88, 81, 'NRW', 'Nordrhein-Westfalen', 0);
INSERT INTO `clic_zones` VALUES(89, 81, 'RHE', 'Rheinland-Pfalz', 0);
INSERT INTO `clic_zones` VALUES(90, 81, 'SAR', 'Saarland', 0);
INSERT INTO `clic_zones` VALUES(91, 81, 'SAS', 'Sachsen', 0);
INSERT INTO `clic_zones` VALUES(92, 81, 'SAC', 'Sachsen-Anhalt', 0);
INSERT INTO `clic_zones` VALUES(93, 81, 'SCN', 'Schleswig-Holstein', 0);
INSERT INTO `clic_zones` VALUES(94, 81, 'THE', 'Thüringen', 0);
INSERT INTO `clic_zones` VALUES(95, 14, 'WI', 'Wien', 0);
INSERT INTO `clic_zones` VALUES(96, 14, 'NO', 'Niederösterreich', 0);
INSERT INTO `clic_zones` VALUES(97, 14, 'OO', 'Oberösterreich', 0);
INSERT INTO `clic_zones` VALUES(98, 14, 'SB', 'Salzburg', 0);
INSERT INTO `clic_zones` VALUES(99, 14, 'KN', 'Kärnten', 0);
INSERT INTO `clic_zones` VALUES(100, 14, 'ST', 'Steiermark', 0);
INSERT INTO `clic_zones` VALUES(101, 14, 'TI', 'Tirol', 0);
INSERT INTO `clic_zones` VALUES(102, 14, 'BL', 'Burgenland', 0);
INSERT INTO `clic_zones` VALUES(103, 14, 'VB', 'Voralberg', 0);
INSERT INTO `clic_zones` VALUES(104, 204, 'AG', 'Aargau', 0);
INSERT INTO `clic_zones` VALUES(105, 204, 'AI', 'Appenzell Innerrhoden', 0);
INSERT INTO `clic_zones` VALUES(106, 204, 'AR', 'Appenzell Ausserrhoden', 0);
INSERT INTO `clic_zones` VALUES(107, 204, 'BE', 'Bern', 0);
INSERT INTO `clic_zones` VALUES(108, 204, 'BL', 'Basel-Landschaft', 0);
INSERT INTO `clic_zones` VALUES(109, 204, 'BS', 'Basel-Stadt', 0);
INSERT INTO `clic_zones` VALUES(110, 204, 'FR', 'Freiburg', 0);
INSERT INTO `clic_zones` VALUES(111, 204, 'GE', 'Genf', 0);
INSERT INTO `clic_zones` VALUES(112, 204, 'GL', 'Glarus', 0);
INSERT INTO `clic_zones` VALUES(113, 204, 'JU', 'Graubünden', 0);
INSERT INTO `clic_zones` VALUES(114, 204, 'JU', 'Jura', 0);
INSERT INTO `clic_zones` VALUES(115, 204, 'LU', 'Luzern', 0);
INSERT INTO `clic_zones` VALUES(116, 204, 'NE', 'Neuenburg', 0);
INSERT INTO `clic_zones` VALUES(117, 204, 'NW', 'Nidwalden', 0);
INSERT INTO `clic_zones` VALUES(118, 204, 'OW', 'Obwalden', 0);
INSERT INTO `clic_zones` VALUES(119, 204, 'SG', 'St. Gallen', 0);
INSERT INTO `clic_zones` VALUES(120, 204, 'SH', 'Schaffhausen', 0);
INSERT INTO `clic_zones` VALUES(121, 204, 'SO', 'Solothurn', 0);
INSERT INTO `clic_zones` VALUES(122, 204, 'SZ', 'Schwyz', 0);
INSERT INTO `clic_zones` VALUES(123, 204, 'TG', 'Thurgau', 0);
INSERT INTO `clic_zones` VALUES(124, 204, 'TI', 'Tessin', 0);
INSERT INTO `clic_zones` VALUES(125, 204, 'UR', 'Uri', 0);
INSERT INTO `clic_zones` VALUES(126, 204, 'VD', 'Waadt', 0);
INSERT INTO `clic_zones` VALUES(127, 204, 'VS', 'Wallis', 0);
INSERT INTO `clic_zones` VALUES(128, 204, 'ZG', 'Zug', 0);
INSERT INTO `clic_zones` VALUES(129, 204, 'ZH', 'Zürich', 0);
INSERT INTO `clic_zones` VALUES(130, 195, 'A Coruna', 'A Coruna', 0);
INSERT INTO `clic_zones` VALUES(131, 195, 'Alava', 'Alava', 0);
INSERT INTO `clic_zones` VALUES(132, 195, 'Albacete', 'Albacete', 0);
INSERT INTO `clic_zones` VALUES(133, 195, 'Alicante', 'Alicante', 0);
INSERT INTO `clic_zones` VALUES(134, 195, 'Almeria', 'Almeria', 0);
INSERT INTO `clic_zones` VALUES(135, 195, 'Asturias', 'Asturias', 0);
INSERT INTO `clic_zones` VALUES(136, 195, 'Avila', 'Avila', 0);
INSERT INTO `clic_zones` VALUES(137, 195, 'Badajoz', 'Badajoz', 0);
INSERT INTO `clic_zones` VALUES(138, 195, 'Baleares', 'Baleares', 0);
INSERT INTO `clic_zones` VALUES(139, 195, 'Barcelona', 'Barcelona', 0);
INSERT INTO `clic_zones` VALUES(140, 195, 'Burgos', 'Burgos', 0);
INSERT INTO `clic_zones` VALUES(141, 195, 'Caceres', 'Caceres', 0);
INSERT INTO `clic_zones` VALUES(142, 195, 'Cadiz', 'Cadiz', 0);
INSERT INTO `clic_zones` VALUES(143, 195, 'Cantabria', 'Cantabria', 0);
INSERT INTO `clic_zones` VALUES(144, 195, 'Castellon', 'Castellon', 0);
INSERT INTO `clic_zones` VALUES(145, 195, 'Ceuta', 'Ceuta', 0);
INSERT INTO `clic_zones` VALUES(146, 195, 'Ciudad Real', 'Ciudad Real', 0);
INSERT INTO `clic_zones` VALUES(147, 195, 'Cordoba', 'Cordoba', 0);
INSERT INTO `clic_zones` VALUES(148, 195, 'Cuenca', 'Cuenca', 0);
INSERT INTO `clic_zones` VALUES(149, 195, 'Girona', 'Girona', 0);
INSERT INTO `clic_zones` VALUES(150, 195, 'Granada', 'Granada', 0);
INSERT INTO `clic_zones` VALUES(151, 195, 'Guadalajara', 'Guadalajara', 0);
INSERT INTO `clic_zones` VALUES(152, 195, 'Guipuzcoa', 'Guipuzcoa', 0);
INSERT INTO `clic_zones` VALUES(153, 195, 'Huelva', 'Huelva', 0);
INSERT INTO `clic_zones` VALUES(154, 195, 'Huesca', 'Huesca', 0);
INSERT INTO `clic_zones` VALUES(155, 195, 'Jaen', 'Jaen', 0);
INSERT INTO `clic_zones` VALUES(156, 195, 'La Rioja', 'La Rioja', 0);
INSERT INTO `clic_zones` VALUES(157, 195, 'Las Palmas', 'Las Palmas', 0);
INSERT INTO `clic_zones` VALUES(158, 195, 'Leon', 'Leon', 0);
INSERT INTO `clic_zones` VALUES(159, 195, 'Lleida', 'Lleida', 0);
INSERT INTO `clic_zones` VALUES(160, 195, 'Lugo', 'Lugo', 0);
INSERT INTO `clic_zones` VALUES(161, 195, 'Madrid', 'Madrid', 0);
INSERT INTO `clic_zones` VALUES(162, 195, 'Malaga', 'Malaga', 0);
INSERT INTO `clic_zones` VALUES(163, 195, 'Melilla', 'Melilla', 0);
INSERT INTO `clic_zones` VALUES(164, 195, 'Murcia', 'Murcia', 0);
INSERT INTO `clic_zones` VALUES(165, 195, 'Navarra', 'Navarra', 0);
INSERT INTO `clic_zones` VALUES(166, 195, 'Ourense', 'Ourense', 0);
INSERT INTO `clic_zones` VALUES(167, 195, 'Palencia', 'Palencia', 0);
INSERT INTO `clic_zones` VALUES(168, 195, 'Pontevedra', 'Pontevedra', 0);
INSERT INTO `clic_zones` VALUES(169, 195, 'Salamanca', 'Salamanca', 0);
INSERT INTO `clic_zones` VALUES(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 0);
INSERT INTO `clic_zones` VALUES(171, 195, 'Segovia', 'Segovia', 0);
INSERT INTO `clic_zones` VALUES(172, 195, 'Sevilla', 'Sevilla', 0);
INSERT INTO `clic_zones` VALUES(173, 195, 'Soria', 'Soria', 0);
INSERT INTO `clic_zones` VALUES(174, 195, 'Tarragona', 'Tarragona', 0);
INSERT INTO `clic_zones` VALUES(175, 195, 'Teruel', 'Teruel', 0);
INSERT INTO `clic_zones` VALUES(176, 195, 'Toledo', 'Toledo', 0);
INSERT INTO `clic_zones` VALUES(177, 195, 'Valencia', 'Valencia', 0);
INSERT INTO `clic_zones` VALUES(178, 195, 'Valladolid', 'Valladolid', 0);
INSERT INTO `clic_zones` VALUES(179, 195, 'Vizcaya', 'Vizcaya', 0);
INSERT INTO `clic_zones` VALUES(180, 195, 'Zamora', 'Zamora', 0);
INSERT INTO `clic_zones` VALUES(181, 73, 'Et', 'Etranger', 0);
INSERT INTO `clic_zones` VALUES(182, 73, '01', 'Ain', 0);
INSERT INTO `clic_zones` VALUES(183, 73, '02', 'Aisne', 0);
INSERT INTO `clic_zones` VALUES(184, 73, '03', 'Allier', 0);
INSERT INTO `clic_zones` VALUES(185, 73, '04', 'Alpes de Haute Provence', 0);
INSERT INTO `clic_zones` VALUES(186, 73, '05', 'Hautes-Alpes', 0);
INSERT INTO `clic_zones` VALUES(187, 73, '06', 'Alpes Maritimes', 0);
INSERT INTO `clic_zones` VALUES(188, 73, '07', 'Ardèche', 0);
INSERT INTO `clic_zones` VALUES(189, 73, '08', 'Ardennes', 0);
INSERT INTO `clic_zones` VALUES(190, 73, '09', 'Ariège', 0);
INSERT INTO `clic_zones` VALUES(191, 73, '10', 'Aube', 0);
INSERT INTO `clic_zones` VALUES(192, 73, '11', 'Aude', 0);
INSERT INTO `clic_zones` VALUES(193, 73, '12', 'Aveyron', 0);
INSERT INTO `clic_zones` VALUES(194, 73, '13', 'Bouches du Rhône', 0);
INSERT INTO `clic_zones` VALUES(195, 73, '14', 'Calvados', 0);
INSERT INTO `clic_zones` VALUES(196, 73, '15', 'Cantal', 0);
INSERT INTO `clic_zones` VALUES(197, 73, '16', 'Charente', 0);
INSERT INTO `clic_zones` VALUES(198, 73, '17', 'Charente Maritime', 0);
INSERT INTO `clic_zones` VALUES(199, 73, '18', 'Cher', 0);
INSERT INTO `clic_zones` VALUES(200, 73, '19', 'Corrèze', 0);
INSERT INTO `clic_zones` VALUES(201, 73, '2A', 'Corse du Sud', 0);
INSERT INTO `clic_zones` VALUES(202, 73, '2B', 'Haute Corse', 0);
INSERT INTO `clic_zones` VALUES(203, 73, '21', 'Cote d\'or', 0);
INSERT INTO `clic_zones` VALUES(204, 73, '22', 'Cotes d\'Armor', 0);
INSERT INTO `clic_zones` VALUES(205, 73, '23', 'Creuse', 0);
INSERT INTO `clic_zones` VALUES(206, 73, '24', 'Dordogne', 0);
INSERT INTO `clic_zones` VALUES(207, 73, '25', 'Doubs', 0);
INSERT INTO `clic_zones` VALUES(208, 73, '26', 'Drôme', 0);
INSERT INTO `clic_zones` VALUES(209, 73, '27', 'Eure', 0);
INSERT INTO `clic_zones` VALUES(210, 73, '28', 'Eure et Loir', 0);
INSERT INTO `clic_zones` VALUES(211, 73, '29', 'Finistère', 0);
INSERT INTO `clic_zones` VALUES(212, 73, '30', 'Gard', 0);
INSERT INTO `clic_zones` VALUES(213, 73, '31', 'Haute Garonne', 0);
INSERT INTO `clic_zones` VALUES(214, 73, '32', 'Gers', 0);
INSERT INTO `clic_zones` VALUES(215, 73, '33', 'Gironde', 0);
INSERT INTO `clic_zones` VALUES(216, 73, '34', 'Hérault', 0);
INSERT INTO `clic_zones` VALUES(217, 73, '35', 'Ille et Vilaine', 0);
INSERT INTO `clic_zones` VALUES(218, 73, '36', 'Indre', 0);
INSERT INTO `clic_zones` VALUES(219, 73, '37', 'Indre et Loire', 0);
INSERT INTO `clic_zones` VALUES(220, 73, '38', 'Isère', 0);
INSERT INTO `clic_zones` VALUES(221, 73, '39', 'Jura', 0);
INSERT INTO `clic_zones` VALUES(222, 73, '40', 'Landes', 0);
INSERT INTO `clic_zones` VALUES(223, 73, '41', 'Loir et Cher', 0);
INSERT INTO `clic_zones` VALUES(224, 73, '42', 'Loire', 0);
INSERT INTO `clic_zones` VALUES(225, 73, '43', 'Haute Loire', 0);
INSERT INTO `clic_zones` VALUES(226, 73, '44', 'Loire Atlantique', 0);
INSERT INTO `clic_zones` VALUES(227, 73, '45', 'Loiret', 0);
INSERT INTO `clic_zones` VALUES(228, 73, '46', 'Lot', 0);
INSERT INTO `clic_zones` VALUES(229, 73, '47', 'Lot et Garonne', 0);
INSERT INTO `clic_zones` VALUES(230, 73, '48', 'Lozère', 0);
INSERT INTO `clic_zones` VALUES(231, 73, '49', 'Maine et Loire', 0);
INSERT INTO `clic_zones` VALUES(232, 73, '50', 'Manche', 0);
INSERT INTO `clic_zones` VALUES(233, 73, '51', 'Marne', 0);
INSERT INTO `clic_zones` VALUES(234, 73, '52', 'Haute Marne', 0);
INSERT INTO `clic_zones` VALUES(235, 73, '53', 'Mayenne', 0);
INSERT INTO `clic_zones` VALUES(236, 73, '54', 'Meurthe et Moselle', 0);
INSERT INTO `clic_zones` VALUES(237, 73, '55', 'Meuse', 0);
INSERT INTO `clic_zones` VALUES(238, 73, '56', 'Morbihan', 0);
INSERT INTO `clic_zones` VALUES(239, 73, '57', 'Moselle', 0);
INSERT INTO `clic_zones` VALUES(240, 73, '58', 'Nièvre', 0);
INSERT INTO `clic_zones` VALUES(241, 73, '59', 'Nord', 0);
INSERT INTO `clic_zones` VALUES(242, 73, '60', 'Oise', 0);
INSERT INTO `clic_zones` VALUES(243, 73, '61', 'Orne', 0);
INSERT INTO `clic_zones` VALUES(244, 73, '62', 'Pas de Calais', 0);
INSERT INTO `clic_zones` VALUES(245, 73, '63', 'Puy de Dôme', 0);
INSERT INTO `clic_zones` VALUES(246, 73, '64', 'Pyrénées Atlantiques', 0);
INSERT INTO `clic_zones` VALUES(247, 73, '65', 'Hautes Pyrénées', 0);
INSERT INTO `clic_zones` VALUES(248, 73, '66', 'Pyrénées Orientales', 0);
INSERT INTO `clic_zones` VALUES(249, 73, '67', 'Bas Rhin', 0);
INSERT INTO `clic_zones` VALUES(250, 73, '68', 'Haut Rhin', 0);
INSERT INTO `clic_zones` VALUES(251, 73, '69', 'Rhone', 0);
INSERT INTO `clic_zones` VALUES(252, 73, '70', 'Haute Saône', 0);
INSERT INTO `clic_zones` VALUES(253, 73, '71', 'Saône et Loire', 0);
INSERT INTO `clic_zones` VALUES(254, 73, '72', 'Sarthe', 0);
INSERT INTO `clic_zones` VALUES(255, 73, '73', 'Savoie', 0);
INSERT INTO `clic_zones` VALUES(256, 73, '74', 'Haute Savoie', 0);
INSERT INTO `clic_zones` VALUES(257, 73, '75', 'Paris', 0);
INSERT INTO `clic_zones` VALUES(258, 73, '76', 'Seine Maritime', 0);
INSERT INTO `clic_zones` VALUES(259, 73, '77', 'Seine et Marne', 0);
INSERT INTO `clic_zones` VALUES(260, 73, '78', 'Yvelines', 0);
INSERT INTO `clic_zones` VALUES(261, 73, '79', 'Deux Sèvres', 0);
INSERT INTO `clic_zones` VALUES(262, 73, '80', 'Somme', 0);
INSERT INTO `clic_zones` VALUES(263, 73, '81', 'Tarn', 0);
INSERT INTO `clic_zones` VALUES(264, 73, '82', 'Tarn et Garonne', 0);
INSERT INTO `clic_zones` VALUES(265, 73, '83', 'Var', 0);
INSERT INTO `clic_zones` VALUES(266, 73, '84', 'Vaucluse', 0);
INSERT INTO `clic_zones` VALUES(267, 73, '85', 'Vendée', 0);
INSERT INTO `clic_zones` VALUES(268, 73, '86', 'Vienne', 0);
INSERT INTO `clic_zones` VALUES(269, 73, '87', 'Haute Vienne', 0);
INSERT INTO `clic_zones` VALUES(270, 73, '88', 'Vosges', 0);
INSERT INTO `clic_zones` VALUES(271, 73, '89', 'Yonne', 0);
INSERT INTO `clic_zones` VALUES(272, 73, '90', 'Territoire de Belfort', 0);
INSERT INTO `clic_zones` VALUES(273, 73, '91', 'Essonne', 0);
INSERT INTO `clic_zones` VALUES(274, 73, '92', 'Hauts de Seine', 0);
INSERT INTO `clic_zones` VALUES(275, 73, '93', 'Seine St-Denis', 0);
INSERT INTO `clic_zones` VALUES(276, 73, '94', 'Val de Marne', 0);
INSERT INTO `clic_zones` VALUES(277, 73, '95', 'Val d\'Oise', 0);
INSERT INTO `clic_zones` VALUES(278, 73, '971 (DOM)', 'Guadeloupe', 0);
INSERT INTO `clic_zones` VALUES(279, 73, '972 (DOM)', 'Martinique', 0);
INSERT INTO `clic_zones` VALUES(280, 73, '973 (DOM)', 'Guyane', 0);
INSERT INTO `clic_zones` VALUES(281, 73, '974 (DOM)', 'Saint Denis', 0);
INSERT INTO `clic_zones` VALUES(282, 73, '975 (DOM)', 'St-Pierre de Miquelon', 0);
INSERT INTO `clic_zones` VALUES(283, 73, '976 (TOM)', 'Mayotte', 0);
INSERT INTO `clic_zones` VALUES(284, 73, '984 (TOM)', 'Terres australes et Antartiques ', 0);
INSERT INTO `clic_zones` VALUES(285, 73, '985 (TOM)', 'Nouvelle Calédonie', 0);
INSERT INTO `clic_zones` VALUES(286, 73, '986 (TOM)', 'Wallis et Futuna', 0);
INSERT INTO `clic_zones` VALUES(287, 73, '987 (TOM)', 'Polynésie fran&ccedil;aise', 0);
INSERT INTO `clic_zones` VALUES(288, 21, 'Anvers', 'Anvers', 0);
INSERT INTO `clic_zones` VALUES(289, 21, 'Limbourg', 'Limbourg', 0);
INSERT INTO `clic_zones` VALUES(290, 21, 'Hainaut', 'Hainaut', 0);
INSERT INTO `clic_zones` VALUES(291, 21, 'Brabant Flamand', 'Brabant Flamand', 0);
INSERT INTO `clic_zones` VALUES(292, 21, 'Brabant Wallon', 'Brabant Wallon', 0);
INSERT INTO `clic_zones` VALUES(293, 21, 'Liege', 'Liege', 0);
INSERT INTO `clic_zones` VALUES(294, 21, 'Namur', 'Namur', 0);
INSERT INTO `clic_zones` VALUES(295, 21, 'Luxembourg', 'Luxembourg', 0);
INSERT INTO `clic_zones` VALUES(296, 21, 'Flandre Occidental', 'Namen', 0);
INSERT INTO `clic_zones` VALUES(297, 21, 'Flandre Orientale', 'Flandre Orientale', 0);
INSERT INTO `clic_zones` VALUES(298, 105, 'AG', 'Agrigento', 0);
INSERT INTO `clic_zones` VALUES(299, 105, 'AL', 'Alessandria', 0);
INSERT INTO `clic_zones` VALUES(300, 105, 'AN', 'Ancona', 0);
INSERT INTO `clic_zones` VALUES(301, 105, 'AO', 'Aosta', 0);
INSERT INTO `clic_zones` VALUES(302, 105, 'AR', 'Arezzo', 0);
INSERT INTO `clic_zones` VALUES(303, 105, 'AP', 'Ascoli Piceno', 0);
INSERT INTO `clic_zones` VALUES(304, 105, 'AT', 'Asti', 0);
INSERT INTO `clic_zones` VALUES(305, 105, 'AV', 'Avellino', 0);
INSERT INTO `clic_zones` VALUES(306, 105, 'BA', 'Bari', 0);
INSERT INTO `clic_zones` VALUES(307, 105, 'BL', 'Belluno', 0);
INSERT INTO `clic_zones` VALUES(308, 105, 'BN', 'Benevento', 0);
INSERT INTO `clic_zones` VALUES(309, 105, 'BG', 'Bergamo', 0);
INSERT INTO `clic_zones` VALUES(310, 105, 'BI', 'Biella', 0);
INSERT INTO `clic_zones` VALUES(311, 105, 'BO', 'Bologna', 0);
INSERT INTO `clic_zones` VALUES(312, 105, 'BZ', 'Bolzano', 0);
INSERT INTO `clic_zones` VALUES(313, 105, 'BS', 'Brescia', 0);
INSERT INTO `clic_zones` VALUES(314, 105, 'BR', 'Brindisi', 0);
INSERT INTO `clic_zones` VALUES(315, 105, 'CA', 'Cagliari', 0);
INSERT INTO `clic_zones` VALUES(316, 105, 'CL', 'Caltanissetta', 0);
INSERT INTO `clic_zones` VALUES(317, 105, 'CB', 'Campobasso', 0);
INSERT INTO `clic_zones` VALUES(318, 105, 'CE', 'Caserta', 0);
INSERT INTO `clic_zones` VALUES(319, 105, 'CT', 'Catania', 0);
INSERT INTO `clic_zones` VALUES(320, 105, 'CZ', 'Catanzaro', 0);
INSERT INTO `clic_zones` VALUES(321, 105, 'CH', 'Chieti', 0);
INSERT INTO `clic_zones` VALUES(322, 105, 'CO', 'Como', 0);
INSERT INTO `clic_zones` VALUES(323, 105, 'CS', 'Cosenza', 0);
INSERT INTO `clic_zones` VALUES(324, 105, 'CR', 'Cremona', 0);
INSERT INTO `clic_zones` VALUES(325, 105, 'KR', 'Crotone', 0);
INSERT INTO `clic_zones` VALUES(326, 105, 'CN', 'Cuneo', 0);
INSERT INTO `clic_zones` VALUES(327, 105, 'EN', 'Enna', 0);
INSERT INTO `clic_zones` VALUES(328, 105, 'FE', 'Ferrara', 0);
INSERT INTO `clic_zones` VALUES(329, 105, 'FI', 'Firenze', 0);
INSERT INTO `clic_zones` VALUES(330, 105, 'FG', 'Foggia', 0);
INSERT INTO `clic_zones` VALUES(331, 105, 'FO', 'Forlì', 0);
INSERT INTO `clic_zones` VALUES(332, 105, 'FR', 'Frosinone', 0);
INSERT INTO `clic_zones` VALUES(333, 105, 'GE', 'Genova', 0);
INSERT INTO `clic_zones` VALUES(334, 105, 'GO', 'Gorizia', 0);
INSERT INTO `clic_zones` VALUES(335, 105, 'GR', 'Grosseto', 0);
INSERT INTO `clic_zones` VALUES(336, 105, 'IM', 'Imperia', 0);
INSERT INTO `clic_zones` VALUES(337, 105, 'IS', 'Isernia', 0);
INSERT INTO `clic_zones` VALUES(338, 105, 'AQ', 'Aquila', 0);
INSERT INTO `clic_zones` VALUES(339, 105, 'SP', 'La Spezia', 0);
INSERT INTO `clic_zones` VALUES(340, 105, 'LT', 'Latina', 0);
INSERT INTO `clic_zones` VALUES(341, 105, 'LE', 'Lecce', 0);
INSERT INTO `clic_zones` VALUES(342, 105, 'LC', 'Lecco', 0);
INSERT INTO `clic_zones` VALUES(343, 105, 'LI', 'Livorno', 0);
INSERT INTO `clic_zones` VALUES(344, 105, 'LO', 'Lodi', 0);
INSERT INTO `clic_zones` VALUES(345, 105, 'LU', 'Lucca', 0);
INSERT INTO `clic_zones` VALUES(346, 105, 'MC', 'Macerata', 0);
INSERT INTO `clic_zones` VALUES(347, 105, 'MN', 'Mantova', 0);
INSERT INTO `clic_zones` VALUES(348, 105, 'MS', 'Massa-Carrara', 0);
INSERT INTO `clic_zones` VALUES(349, 105, 'MT', 'Matera', 0);
INSERT INTO `clic_zones` VALUES(350, 105, 'ME', 'Messina', 0);
INSERT INTO `clic_zones` VALUES(351, 105, 'MI', 'Milano', 0);
INSERT INTO `clic_zones` VALUES(352, 105, 'MO', 'Modena', 0);
INSERT INTO `clic_zones` VALUES(353, 105, 'NA', 'Napoli', 0);
INSERT INTO `clic_zones` VALUES(354, 105, 'NO', 'Novara', 0);
INSERT INTO `clic_zones` VALUES(355, 105, 'NU', 'Nuoro', 0);
INSERT INTO `clic_zones` VALUES(356, 105, 'OR', 'Oristano', 0);
INSERT INTO `clic_zones` VALUES(357, 105, 'PD', 'Padova', 0);
INSERT INTO `clic_zones` VALUES(358, 105, 'PA', 'Palermo', 0);
INSERT INTO `clic_zones` VALUES(359, 105, 'PR', 'Parma', 0);
INSERT INTO `clic_zones` VALUES(360, 105, 'PG', 'Perugia', 0);
INSERT INTO `clic_zones` VALUES(361, 105, 'PV', 'Pavia', 0);
INSERT INTO `clic_zones` VALUES(362, 105, 'PS', 'Pesaro e Urbino', 0);
INSERT INTO `clic_zones` VALUES(363, 105, 'PE', 'Pescara', 0);
INSERT INTO `clic_zones` VALUES(364, 105, 'PC', 'Piacenza', 0);
INSERT INTO `clic_zones` VALUES(365, 105, 'PI', 'Pisa', 0);
INSERT INTO `clic_zones` VALUES(366, 105, 'PT', 'Pistoia', 0);
INSERT INTO `clic_zones` VALUES(367, 105, 'PN', 'Pordenone', 0);
INSERT INTO `clic_zones` VALUES(368, 105, 'PZ', 'Potenza', 0);
INSERT INTO `clic_zones` VALUES(369, 105, 'PO', 'Prato', 0);
INSERT INTO `clic_zones` VALUES(370, 105, 'RG', 'Ragusa', 0);
INSERT INTO `clic_zones` VALUES(371, 105, 'RA', 'Ravenna', 0);
INSERT INTO `clic_zones` VALUES(372, 105, 'RC', 'Reggio di Calabria', 0);
INSERT INTO `clic_zones` VALUES(373, 105, 'RE', 'Reggio Emilia', 0);
INSERT INTO `clic_zones` VALUES(374, 105, 'RI', 'Rieti', 0);
INSERT INTO `clic_zones` VALUES(375, 105, 'RN', 'Rimini', 0);
INSERT INTO `clic_zones` VALUES(376, 105, 'RM', 'Roma', 0);
INSERT INTO `clic_zones` VALUES(377, 105, 'RO', 'Rovigo', 0);
INSERT INTO `clic_zones` VALUES(378, 105, 'SA', 'Salerno', 0);
INSERT INTO `clic_zones` VALUES(379, 105, 'SS', 'Sassari', 0);
INSERT INTO `clic_zones` VALUES(380, 105, 'SV', 'Savona', 0);
INSERT INTO `clic_zones` VALUES(381, 105, 'SI', 'Siena', 0);
INSERT INTO `clic_zones` VALUES(382, 105, 'SR', 'Siracusa', 0);
INSERT INTO `clic_zones` VALUES(383, 105, 'SO', 'Sondrio', 0);
INSERT INTO `clic_zones` VALUES(384, 105, 'TA', 'Taranto', 0);
INSERT INTO `clic_zones` VALUES(385, 105, 'TE', 'Teramo', 0);
INSERT INTO `clic_zones` VALUES(386, 105, 'TR', 'Terni', 0);
INSERT INTO `clic_zones` VALUES(387, 105, 'TO', 'Torino', 0);
INSERT INTO `clic_zones` VALUES(388, 105, 'TP', 'Trapani', 0);
INSERT INTO `clic_zones` VALUES(389, 105, 'TN', 'Trento', 0);
INSERT INTO `clic_zones` VALUES(390, 105, 'TV', 'Treviso', 0);
INSERT INTO `clic_zones` VALUES(391, 105, 'TS', 'Trieste', 0);
INSERT INTO `clic_zones` VALUES(392, 105, 'UD', 'Udine', 0);
INSERT INTO `clic_zones` VALUES(393, 105, 'VA', 'Varese', 0);
INSERT INTO `clic_zones` VALUES(394, 105, 'VE', 'Venezia', 0);
INSERT INTO `clic_zones` VALUES(395, 105, 'VB', 'Verbania', 0);
INSERT INTO `clic_zones` VALUES(396, 105, 'VC', 'Vercelli', 0);
INSERT INTO `clic_zones` VALUES(397, 105, 'VR', 'Verona', 0);
INSERT INTO `clic_zones` VALUES(398, 105, 'VV', 'Vibo Valentia', 0);
INSERT INTO `clic_zones` VALUES(399, 105, 'VI', 'Vicenza', 0);
INSERT INTO `clic_zones` VALUES(400, 105, 'VT', 'Viterbo', 0);
INSERT INTO `clic_zones` VALUES(401, 182, 'RSM', 'Acquaviva', 0);
INSERT INTO `clic_zones` VALUES(402, 182, 'RSM', 'Borgo Maggiore', 0);
INSERT INTO `clic_zones` VALUES(403, 182, 'RSM', 'Ca\'Rigo', 0);
INSERT INTO `clic_zones` VALUES(404, 182, 'RSM', 'Cailungo', 0);
INSERT INTO `clic_zones` VALUES(405, 182, 'RSM', 'Casole', 0);
INSERT INTO `clic_zones` VALUES(406, 182, 'RSM', 'Cerbaiola', 0);
INSERT INTO `clic_zones` VALUES(407, 182, 'RSM', 'Chiesanuova', 0);
INSERT INTO `clic_zones` VALUES(408, 182, 'RSM', 'Dogana', 0);
INSERT INTO `clic_zones` VALUES(409, 182, 'RSM', 'Domagnano', 0);
INSERT INTO `clic_zones` VALUES(410, 182, 'RSM', 'Faetano', 0);
INSERT INTO `clic_zones` VALUES(411, 182, 'RSM', 'Falciano', 0);
INSERT INTO `clic_zones` VALUES(412, 182, 'RSM', 'Fiorentino', 0);
INSERT INTO `clic_zones` VALUES(413, 182, 'RSM', 'Fiorina', 0);
INSERT INTO `clic_zones` VALUES(414, 182, 'RSM', 'Galazzano', 0);
INSERT INTO `clic_zones` VALUES(415, 182, 'RSM', 'Gualdicciolo', 0);
INSERT INTO `clic_zones` VALUES(416, 182, 'RSM', 'Montegiardino', 0);
INSERT INTO `clic_zones` VALUES(417, 182, 'RSM', 'Murata', 0);
INSERT INTO `clic_zones` VALUES(418, 182, 'RSM', 'Rovereta', 0);
INSERT INTO `clic_zones` VALUES(419, 182, 'RSM', 'S.Giovanni', 0);
INSERT INTO `clic_zones` VALUES(420, 182, 'RSM', 'S.ta Mustiola', 0);
INSERT INTO `clic_zones` VALUES(421, 182, 'RSM', 'SanMarino', 0);
INSERT INTO `clic_zones` VALUES(422, 182, 'RSM', 'Serravalle', 0);
INSERT INTO `clic_zones` VALUES(423, 182, 'RSM', 'Teglio', 0);
INSERT INTO `clic_zones` VALUES(424, 182, 'RSM', 'Torraccia', 0);
INSERT INTO `clic_zones` VALUES(425, 182, 'RSM', 'Valdragone', 0);
INSERT INTO `clic_zones` VALUES(426, 182, 'RSM', 'Ventoso', 0);
INSERT INTO `clic_zones` VALUES(427, 97, 'BUD', 'Budapest', 0);
INSERT INTO `clic_zones` VALUES(428, 97, 'BAR', 'Baranya', 0);
INSERT INTO `clic_zones` VALUES(429, 97, 'BKK', 'Bacs-Kiskun', 0);
INSERT INTO `clic_zones` VALUES(430, 97, 'Békés', 'Békés', 0);
INSERT INTO `clic_zones` VALUES(431, 97, 'BAZ', 'Borsod-Abaúj-Zemplén', 0);
INSERT INTO `clic_zones` VALUES(432, 97, 'CSO', 'Csongrad', 0);
INSERT INTO `clic_zones` VALUES(433, 97, 'FEJ', 'Fejér', 0);
INSERT INTO `clic_zones` VALUES(434, 97, 'GYS', 'GyÃƒÂµr-Sopron', 0);
INSERT INTO `clic_zones` VALUES(435, 97, 'HAB', 'HajdÃƒÂº-Bihar', 0);
INSERT INTO `clic_zones` VALUES(436, 97, 'HEV', 'Heves', 0);
INSERT INTO `clic_zones` VALUES(437, 97, 'JNS', 'Jasz-Nagykun-Szolnok', 0);
INSERT INTO `clic_zones` VALUES(438, 97, 'KOE', 'Komarom-Esztergom', 0);
INSERT INTO `clic_zones` VALUES(439, 97, 'NOG', 'NÃƒÂ³grad', 0);
INSERT INTO `clic_zones` VALUES(440, 97, 'PES', 'Pest', 0);
INSERT INTO `clic_zones` VALUES(441, 97, 'SOM', 'Somogy', 0);
INSERT INTO `clic_zones` VALUES(442, 97, 'SSB', 'Szabolcs-Szatmar-Bereg', 0);
INSERT INTO `clic_zones` VALUES(443, 97, 'TOL', 'Tolna', 0);
INSERT INTO `clic_zones` VALUES(444, 97, 'VAS', 'Vas', 0);
INSERT INTO `clic_zones` VALUES(445, 97, 'VES', 'Veszprém', 0);
INSERT INTO `clic_zones` VALUES(446, 97, 'ZAL', 'Zala', 0);
INSERT INTO `clic_zones` VALUES(447, 103, 'CAR', 'Carlow', 0);
INSERT INTO `clic_zones` VALUES(448, 103, 'CAV', 'Cavan', 0);
INSERT INTO `clic_zones` VALUES(449, 103, 'CLA', 'Clare', 0);
INSERT INTO `clic_zones` VALUES(450, 103, 'COR', 'Cork', 0);
INSERT INTO `clic_zones` VALUES(451, 103, 'DON', 'Donegal', 0);
INSERT INTO `clic_zones` VALUES(452, 103, 'DUB', 'Dublin', 0);
INSERT INTO `clic_zones` VALUES(453, 103, 'GAL', 'Galway', 0);
INSERT INTO `clic_zones` VALUES(454, 103, 'KER', 'Kerry', 0);
INSERT INTO `clic_zones` VALUES(455, 103, 'KID', 'Kildare', 0);
INSERT INTO `clic_zones` VALUES(456, 103, 'KIK', 'Kilkenny', 0);
INSERT INTO `clic_zones` VALUES(457, 103, 'LET', 'Leitrim', 0);
INSERT INTO `clic_zones` VALUES(458, 103, 'LEX', 'Leix', 0);
INSERT INTO `clic_zones` VALUES(459, 103, 'LIM', 'Limerick', 0);
INSERT INTO `clic_zones` VALUES(460, 103, 'LOG', 'Longford', 0);
INSERT INTO `clic_zones` VALUES(461, 103, 'LOU', 'Louth', 0);
INSERT INTO `clic_zones` VALUES(462, 103, 'MAY', 'Mayo', 0);
INSERT INTO `clic_zones` VALUES(463, 103, 'MEA', 'Meath', 0);
INSERT INTO `clic_zones` VALUES(464, 103, 'MOG', 'Monaghan', 0);
INSERT INTO `clic_zones` VALUES(465, 103, 'OFF', 'Offaly', 0);
INSERT INTO `clic_zones` VALUES(466, 103, 'ROS', 'Roscommon', 0);
INSERT INTO `clic_zones` VALUES(467, 103, 'SLI', 'Sligo', 0);
INSERT INTO `clic_zones` VALUES(468, 103, 'TIP', 'Tipperary', 0);
INSERT INTO `clic_zones` VALUES(469, 103, 'WAT', 'Waterford', 0);
INSERT INTO `clic_zones` VALUES(470, 103, 'WEM', 'Westmeath', 0);
INSERT INTO `clic_zones` VALUES(471, 103, 'WEX', 'Wexford', 0);
INSERT INTO `clic_zones` VALUES(472, 103, 'WIC', 'Wicklow', 0);
INSERT INTO `clic_zones` VALUES(473, 56, 'B', 'Jihomoravsky', 0);
INSERT INTO `clic_zones` VALUES(474, 56, 'C', 'Jihoèesky', 0);
INSERT INTO `clic_zones` VALUES(475, 56, 'J', 'Vysoèina', 0);
INSERT INTO `clic_zones` VALUES(476, 56, 'K', 'Karlovarsky kraj', 0);
INSERT INTO `clic_zones` VALUES(477, 56, 'H', 'Kralovéhradecky kraj', 0);
INSERT INTO `clic_zones` VALUES(478, 56, 'L', 'Liberecky kraj', 0);
INSERT INTO `clic_zones` VALUES(479, 56, 'M', 'Olomoucky kraj', 0);
INSERT INTO `clic_zones` VALUES(480, 56, 'P', 'Plzeosky kraj', 0);
INSERT INTO `clic_zones` VALUES(481, 56, 'A', 'Hlavní město Praha', 0);
INSERT INTO `clic_zones` VALUES(482, 56, 'S', 'Středočeský', 0);
INSERT INTO `clic_zones` VALUES(483, 56, 'U', 'Ustecky kraj', 0);
INSERT INTO `clic_zones` VALUES(484, 56, 'Z', 'Zlínský', 0);
INSERT INTO `clic_zones` VALUES(485, 56, 'T', 'Moravskoslezsky', 0);
INSERT INTO `clic_zones` VALUES(486, 56, 'E', 'Pardubicky', 0);
INSERT INTO `clic_zones` VALUES(487, 160, 'OSL', 'Oslo', 0);
INSERT INTO `clic_zones` VALUES(488, 160, 'AKE', 'Akershus', 0);
INSERT INTO `clic_zones` VALUES(489, 160, 'AUA', 'Aust-Agder', 0);
INSERT INTO `clic_zones` VALUES(490, 160, 'BUS', 'Buskerud', 0);
INSERT INTO `clic_zones` VALUES(491, 160, 'FIN', 'Finnmark', 0);
INSERT INTO `clic_zones` VALUES(492, 160, 'HED', 'Hedmark', 0);
INSERT INTO `clic_zones` VALUES(493, 160, 'HOR', 'Hordaland', 0);
INSERT INTO `clic_zones` VALUES(494, 160, 'MOR', 'Nord-Trøndelag', 0);
INSERT INTO `clic_zones` VALUES(495, 160, 'NOR', 'Nordland', 0);
INSERT INTO `clic_zones` VALUES(496, 160, 'NTR', 'Nord-Trøndelag', 0);
INSERT INTO `clic_zones` VALUES(497, 160, 'OPP', 'Oppland', 0);
INSERT INTO `clic_zones` VALUES(498, 160, 'ROG', 'Rogaland', 0);
INSERT INTO `clic_zones` VALUES(499, 160, 'SOF', 'Sogn og Fjordane', 0);
INSERT INTO `clic_zones` VALUES(500, 160, 'STR', 'Sør-Trøndelag', 0);
INSERT INTO `clic_zones` VALUES(501, 160, 'TEL', 'Telemark', 0);
INSERT INTO `clic_zones` VALUES(502, 160, 'TRO', 'Troms', 0);
INSERT INTO `clic_zones` VALUES(503, 160, 'VEA', 'Vest-Agder', 0);
INSERT INTO `clic_zones` VALUES(504, 160, 'OST', 'Ostfold', 0);
INSERT INTO `clic_zones` VALUES(505, 160, 'SVA', 'Svalbard', 0);
INSERT INTO `clic_zones` VALUES(506, 203, 'AB', 'Stockholm', 0);
INSERT INTO `clic_zones` VALUES(507, 203, 'C', 'Uppsala', 0);
INSERT INTO `clic_zones` VALUES(508, 203, 'D', 'Södermanland', 0);
INSERT INTO `clic_zones` VALUES(509, 203, 'E', 'Östergötland', 0);
INSERT INTO `clic_zones` VALUES(510, 203, 'F', 'Jönköping', 0);
INSERT INTO `clic_zones` VALUES(511, 203, 'G', 'Kronoberg', 0);
INSERT INTO `clic_zones` VALUES(512, 203, 'H', 'Kalmar', 0);
INSERT INTO `clic_zones` VALUES(513, 203, 'I', 'Gotland', 0);
INSERT INTO `clic_zones` VALUES(514, 203, 'K', 'Blekinge', 0);
INSERT INTO `clic_zones` VALUES(515, 203, 'M', 'Skane', 0);
INSERT INTO `clic_zones` VALUES(516, 203, 'N', 'Halland', 0);
INSERT INTO `clic_zones` VALUES(517, 203, 'O', 'Västra Götaland', 0);
INSERT INTO `clic_zones` VALUES(518, 203, 'S', 'Värmland', 0);
INSERT INTO `clic_zones` VALUES(519, 203, 'T', 'Örebro', 0);
INSERT INTO `clic_zones` VALUES(520, 203, 'U', 'Västmanland', 0);
INSERT INTO `clic_zones` VALUES(521, 203, 'W', 'Dalarna', 0);
INSERT INTO `clic_zones` VALUES(522, 203, 'X', 'Gävleborg', 0);
INSERT INTO `clic_zones` VALUES(523, 203, 'Y', 'Västernorrland', 0);
INSERT INTO `clic_zones` VALUES(524, 203, 'Z', 'Jämtland', 0);
INSERT INTO `clic_zones` VALUES(525, 203, 'AC', 'Västerbotten', 0);
INSERT INTO `clic_zones` VALUES(526, 203, 'BD', 'Norrbotten', 0);
INSERT INTO `clic_zones` VALUES(527, 222, 'Avon', 'England - Avon', 0);
INSERT INTO `clic_zones` VALUES(528, 222, 'Bath and Northeast Somerset', 'England - Bath and Northeast Som', 0);
INSERT INTO `clic_zones` VALUES(529, 222, 'Bedfordshire', 'England - Bedfordshire', 0);
INSERT INTO `clic_zones` VALUES(530, 222, 'Bristol', 'England - Bristol', 0);
INSERT INTO `clic_zones` VALUES(531, 222, 'Buckinghamshire', 'England - Buckinghamshire', 0);
INSERT INTO `clic_zones` VALUES(532, 222, 'Cambridgeshire', 'England - Cambridgeshire', 0);
INSERT INTO `clic_zones` VALUES(533, 222, 'Cheshire', 'England - Cheshire', 0);
INSERT INTO `clic_zones` VALUES(534, 222, 'Cleveland', 'England - Cleveland', 0);
INSERT INTO `clic_zones` VALUES(535, 222, 'Cornwall', 'England - Cornwall', 0);
INSERT INTO `clic_zones` VALUES(536, 222, 'Cumbria', 'England - Cumbria', 0);
INSERT INTO `clic_zones` VALUES(537, 222, 'Derbyshire', 'England - Derbyshire', 0);
INSERT INTO `clic_zones` VALUES(538, 222, 'Devon', 'England - Devon', 0);
INSERT INTO `clic_zones` VALUES(539, 222, 'Dorset', 'England - Dorset', 0);
INSERT INTO `clic_zones` VALUES(540, 222, 'Durham', 'England - Durham', 0);
INSERT INTO `clic_zones` VALUES(541, 222, 'E. Riding', 'England - East Riding of Yorkshi', 0);
INSERT INTO `clic_zones` VALUES(542, 222, 'E. Sussex', 'England - East Sussex', 0);
INSERT INTO `clic_zones` VALUES(543, 222, 'Essex', 'England - Essex', 0);
INSERT INTO `clic_zones` VALUES(544, 222, 'Gloucestershire', 'England - Gloucestershire', 0);
INSERT INTO `clic_zones` VALUES(545, 222, 'Gr. Manchester', 'England - Greater Manchester', 0);
INSERT INTO `clic_zones` VALUES(546, 222, 'Hampshire', 'England - Hampshire', 0);
INSERT INTO `clic_zones` VALUES(547, 222, 'Herefordshire', 'England - Herefordshire', 0);
INSERT INTO `clic_zones` VALUES(548, 222, 'Hertfordshire', 'England - Hertfordshire', 0);
INSERT INTO `clic_zones` VALUES(549, 222, 'Humberside', 'England - Humberside', 0);
INSERT INTO `clic_zones` VALUES(550, 222, 'Isle of Wight', 'England - Isle of Wight', 0);
INSERT INTO `clic_zones` VALUES(551, 222, 'Isles of Scilly', 'England - Isles of Scilly', 0);
INSERT INTO `clic_zones` VALUES(552, 222, 'Kent', 'England - Kent', 0);
INSERT INTO `clic_zones` VALUES(553, 222, 'Lancashire', 'England - Lancashire', 0);
INSERT INTO `clic_zones` VALUES(554, 222, 'Leicestershire', 'England - Leicestershire', 0);
INSERT INTO `clic_zones` VALUES(555, 222, 'Lincolnshire', 'England - Lincolnshire', 0);
INSERT INTO `clic_zones` VALUES(556, 222, 'London', 'England - London', 0);
INSERT INTO `clic_zones` VALUES(557, 222, 'Merseyside', 'England - Merseyside', 0);
INSERT INTO `clic_zones` VALUES(558, 222, 'Middlesex', 'England - Middlesex', 0);
INSERT INTO `clic_zones` VALUES(559, 222, 'Norfolk', 'England - Norfolk', 0);
INSERT INTO `clic_zones` VALUES(560, 222, 'N. Yorkshire', 'England - North Yorkshire', 0);
INSERT INTO `clic_zones` VALUES(561, 222, 'Northamptonshire', 'England - Northamptonshire', 0);
INSERT INTO `clic_zones` VALUES(562, 222, 'Northumberland', 'England - Northumberland', 0);
INSERT INTO `clic_zones` VALUES(563, 222, 'Nottinghamshire', 'England - Nottinghamshire', 0);
INSERT INTO `clic_zones` VALUES(564, 222, 'Oxfordshire', 'England - Oxfordshire', 0);
INSERT INTO `clic_zones` VALUES(565, 222, 'Rutland', 'England - Rutland', 0);
INSERT INTO `clic_zones` VALUES(566, 222, 'Shropshire', 'England - Shropshire', 0);
INSERT INTO `clic_zones` VALUES(567, 222, 'Somerset', 'England - Somerset', 0);
INSERT INTO `clic_zones` VALUES(568, 222, 'S. Gloucestershire', 'England - South Gloucestershire', 0);
INSERT INTO `clic_zones` VALUES(569, 222, 'S. Yorkshire', 'England - South Yorkshire', 0);
INSERT INTO `clic_zones` VALUES(570, 222, 'Staffordshire', 'England - Staffordshire', 0);
INSERT INTO `clic_zones` VALUES(571, 222, 'Suffolk', 'England - Suffolk', 0);
INSERT INTO `clic_zones` VALUES(572, 222, 'Surrey', 'England - Surrey', 0);
INSERT INTO `clic_zones` VALUES(573, 222, 'Tyne and Wear', 'England - Tyne and Wear', 0);
INSERT INTO `clic_zones` VALUES(574, 222, 'Warwickshire', 'England - Warwickshire', 0);
INSERT INTO `clic_zones` VALUES(575, 222, 'W. Midlands', 'England - West Midlands', 0);
INSERT INTO `clic_zones` VALUES(576, 222, 'W. Sussex', 'England - West Sussex', 0);
INSERT INTO `clic_zones` VALUES(577, 222, 'W. Yorkshire', 'England - West Yorkshire', 0);
INSERT INTO `clic_zones` VALUES(578, 222, 'Wiltshire', 'England - Wiltshire', 0);
INSERT INTO `clic_zones` VALUES(579, 222, 'Worcestershire', 'England - Worcestershire', 0);
INSERT INTO `clic_zones` VALUES(580, 222, 'Antrim', 'N. Ireland - Antrim', 0);
INSERT INTO `clic_zones` VALUES(581, 222, 'Armagh', 'N. Ireland - Armagh', 0);
INSERT INTO `clic_zones` VALUES(582, 222, 'Down', 'N. Ireland - Down', 0);
INSERT INTO `clic_zones` VALUES(583, 222, 'Fermanagh', 'N. Ireland - Fermanagh', 0);
INSERT INTO `clic_zones` VALUES(584, 222, 'Londonderry', 'N. Ireland - Londonderry', 0);
INSERT INTO `clic_zones` VALUES(585, 222, 'Tyrone', 'N. Ireland - Tyrone', 0);
INSERT INTO `clic_zones` VALUES(586, 222, 'Aberdeen City', 'Scotland - Aberdeen City', 0);
INSERT INTO `clic_zones` VALUES(587, 222, 'Aberdeenshire', 'Scotland - Aberdeenshire', 0);
INSERT INTO `clic_zones` VALUES(588, 222, 'Angus', 'Scotland - Angus', 0);
INSERT INTO `clic_zones` VALUES(589, 222, 'Argyll and Bute', 'Scotland - Argyll and Bute', 0);
INSERT INTO `clic_zones` VALUES(590, 222, 'Borders', 'Scotland - Borders', 0);
INSERT INTO `clic_zones` VALUES(591, 222, 'Clackmannan', 'Scotland - Clackmannan', 0);
INSERT INTO `clic_zones` VALUES(592, 222, 'Dumfries and Galloway', 'Scotland - Dumfries and Galloway', 0);
INSERT INTO `clic_zones` VALUES(593, 222, 'E. Ayrshire', 'Scotland - East Ayrshire', 0);
INSERT INTO `clic_zones` VALUES(594, 222, 'E. Dunbartonshire', 'Scotland - East Dunbartonshire', 0);
INSERT INTO `clic_zones` VALUES(595, 222, 'E. Lothian', 'Scotland - East Lothian', 0);
INSERT INTO `clic_zones` VALUES(596, 222, 'E. Renfrewshire', 'Scotland - East Renfrewshire', 0);
INSERT INTO `clic_zones` VALUES(597, 222, 'Edinburgh City', 'Scotland - Edinburgh City', 0);
INSERT INTO `clic_zones` VALUES(598, 222, 'Falkirk', 'Scotland - Falkirk', 0);
INSERT INTO `clic_zones` VALUES(599, 222, 'Fife', 'Scotland - Fife', 0);
INSERT INTO `clic_zones` VALUES(600, 222, 'Glasgow', 'Scotland - Glasgow', 0);
INSERT INTO `clic_zones` VALUES(601, 222, 'Highland', 'Scotland - Highland', 0);
INSERT INTO `clic_zones` VALUES(602, 222, 'Inverclyde', 'Scotland - Inverclyde', 0);
INSERT INTO `clic_zones` VALUES(603, 222, 'Midlothian', 'Scotland - Midlothian', 0);
INSERT INTO `clic_zones` VALUES(604, 222, 'Moray', 'Scotland - Moray', 0);
INSERT INTO `clic_zones` VALUES(605, 222, 'North Ayrshire', 'Scotland - North Ayrshire', 0);
INSERT INTO `clic_zones` VALUES(606, 222, 'North Lanarkshire', 'Scotland - North Lanarkshire', 0);
INSERT INTO `clic_zones` VALUES(607, 222, 'Orkney', 'Scotland - Orkney', 0);
INSERT INTO `clic_zones` VALUES(608, 222, 'Perthshire and Kinross', 'Scotland - Perthshire and Kinros', 0);
INSERT INTO `clic_zones` VALUES(609, 222, 'Renfrewshire', 'Scotland - Renfrewshire', 0);
INSERT INTO `clic_zones` VALUES(610, 222, 'Shetland', 'Scotland - Shetland', 0);
INSERT INTO `clic_zones` VALUES(611, 222, 'South Ayrshire', 'Scotland - South Ayrshire', 0);
INSERT INTO `clic_zones` VALUES(612, 222, 'South Lanarkshire', 'Scotland - South Lanarkshire', 0);
INSERT INTO `clic_zones` VALUES(613, 222, 'Stirling', 'Scotland - Stirling', 0);
INSERT INTO `clic_zones` VALUES(614, 222, 'West Dunbartonshire', 'Scotland - West Dunbartonshire', 0);
INSERT INTO `clic_zones` VALUES(615, 222, 'West Lothian', 'Scotland - West Lothian', 0);
INSERT INTO `clic_zones` VALUES(616, 222, 'Western Isles', 'Scotland - Western Isles', 0);
INSERT INTO `clic_zones` VALUES(617, 222, 'Blaenau Gwent', 'UA Wales - Blaenau Gwent', 0);
INSERT INTO `clic_zones` VALUES(618, 222, 'Bridgend', 'UA Wales - Bridgend', 0);
INSERT INTO `clic_zones` VALUES(619, 222, 'Caerphilly', 'UA Wales - Caerphilly', 0);
INSERT INTO `clic_zones` VALUES(620, 222, 'Cardiff', 'UA Wales - Cardiff', 0);
INSERT INTO `clic_zones` VALUES(621, 222, 'Carmarthenshire', 'UA Wales - Carmarthenshire', 0);
INSERT INTO `clic_zones` VALUES(622, 222, 'Ceredigion', 'UA Wales - Ceredigion', 0);
INSERT INTO `clic_zones` VALUES(623, 222, 'Conwy', 'UA Wales - Conwy', 0);
INSERT INTO `clic_zones` VALUES(624, 222, 'Denbighshire', 'UA Wales - Denbighshire', 0);
INSERT INTO `clic_zones` VALUES(625, 222, 'Flintshire', 'UA Wales - Flintshire', 0);
INSERT INTO `clic_zones` VALUES(626, 222, 'Gwynedd', 'UA Wales - Gwynedd', 0);
INSERT INTO `clic_zones` VALUES(627, 222, 'Isle of Anglesey', 'UA Wales - Isle of Anglesey', 0);
INSERT INTO `clic_zones` VALUES(628, 222, 'Merthyr Tydfil', 'UA Wales - Merthyr Tydfil', 0);
INSERT INTO `clic_zones` VALUES(629, 222, 'Monmouthshire', 'UA Wales - Monmouthshire', 0);
INSERT INTO `clic_zones` VALUES(630, 222, 'Neath Port Talbot', 'UA Wales - Neath Port Talbot', 0);
INSERT INTO `clic_zones` VALUES(631, 222, 'Newport', 'UA Wales - Newport', 0);
INSERT INTO `clic_zones` VALUES(632, 222, 'Pembrokeshire', 'UA Wales - Pembrokeshire', 0);
INSERT INTO `clic_zones` VALUES(633, 222, 'Powys', 'UA Wales - Powys', 0);
INSERT INTO `clic_zones` VALUES(634, 222, 'Rhondda Cynon Taff', 'UA Wales - Rhondda Cynon Taff', 0);
INSERT INTO `clic_zones` VALUES(635, 222, 'Swansea', 'UA Wales - Swansea', 0);
INSERT INTO `clic_zones` VALUES(636, 222, 'Torfaen', 'UA Wales - Torfaen', 0);
INSERT INTO `clic_zones` VALUES(637, 222, 'The Vale of Glamorgan', 'UA Wales - The Vale of Glamorgan', 0);
INSERT INTO `clic_zones` VALUES(638, 222, 'Wrexham', 'UA Wales - Wrexham', 0);
INSERT INTO `clic_zones` VALUES(639, 222, 'Channel Islands', 'UK Offshore Dependencies - Chann', 0);
INSERT INTO `clic_zones` VALUES(640, 222, 'Isle of Man', 'UK Offshore Dependencies - Isle ', 0);
INSERT INTO `clic_zones` VALUES(641, 195, 'Zaragoza', 'Zaragoza', 0);

-- --------------------------------------------------------

--
-- Structure de la table `clic_zones_to_geo_zones`
--

DROP TABLE IF EXISTS `clic_zones_to_geo_zones`;
CREATE TABLE `clic_zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clic_zones_to_geo_zones`
--

INSERT INTO `clic_zones_to_geo_zones` VALUES(2, 73, 0, 2, NULL, '2006-04-11 18:48:48');
INSERT INTO `clic_zones_to_geo_zones` VALUES(4, 81, 0, 3, NULL, '2006-05-04 10:29:41');
INSERT INTO `clic_zones_to_geo_zones` VALUES(5, 14, 0, 3, NULL, '2006-05-04 10:31:27');
INSERT INTO `clic_zones_to_geo_zones` VALUES(6, 21, 0, 3, NULL, '2006-05-04 10:31:49');
INSERT INTO `clic_zones_to_geo_zones` VALUES(7, 55, 0, 3, NULL, '2006-05-04 10:32:32');
INSERT INTO `clic_zones_to_geo_zones` VALUES(8, 57, 0, 3, NULL, '2006-05-04 10:32:47');
INSERT INTO `clic_zones_to_geo_zones` VALUES(9, 67, 0, 3, NULL, '2006-05-04 10:33:17');
INSERT INTO `clic_zones_to_geo_zones` VALUES(10, 72, 0, 3, NULL, '2006-05-04 10:33:31');
INSERT INTO `clic_zones_to_geo_zones` VALUES(12, 84, 0, 3, NULL, '2006-05-04 10:33:56');
INSERT INTO `clic_zones_to_geo_zones` VALUES(14, 103, 0, 3, NULL, '2006-05-04 10:35:42');
INSERT INTO `clic_zones_to_geo_zones` VALUES(15, 105, 0, 3, NULL, '2006-05-04 10:35:57');
INSERT INTO `clic_zones_to_geo_zones` VALUES(16, 117, 0, 3, NULL, '2006-05-04 10:36:50');
INSERT INTO `clic_zones_to_geo_zones` VALUES(17, 123, 0, 3, NULL, '2006-05-04 10:37:26');
INSERT INTO `clic_zones_to_geo_zones` VALUES(18, 124, 0, 3, NULL, '2006-05-04 10:37:53');
INSERT INTO `clic_zones_to_geo_zones` VALUES(19, 132, 0, 3, NULL, '2006-05-04 10:38:21');
INSERT INTO `clic_zones_to_geo_zones` VALUES(20, 150, 0, 3, NULL, '2006-05-04 10:39:27');
INSERT INTO `clic_zones_to_geo_zones` VALUES(21, 170, 0, 3, NULL, '2006-05-04 10:39:43');
INSERT INTO `clic_zones_to_geo_zones` VALUES(22, 171, 0, 3, NULL, '2006-05-04 10:40:22');
INSERT INTO `clic_zones_to_geo_zones` VALUES(23, 56, 0, 3, NULL, '2006-05-04 10:41:04');
INSERT INTO `clic_zones_to_geo_zones` VALUES(24, 222, 0, 3, NULL, '2006-05-04 10:41:39');
INSERT INTO `clic_zones_to_geo_zones` VALUES(25, 189, 0, 3, NULL, '2006-05-04 10:42:32');
INSERT INTO `clic_zones_to_geo_zones` VALUES(26, 190, 0, 3, NULL, '2006-05-04 10:43:00');
INSERT INTO `clic_zones_to_geo_zones` VALUES(27, 203, 0, 3, NULL, '2006-05-04 10:43:41');
INSERT INTO `clic_zones_to_geo_zones` VALUES(28, 195, 0, 3, NULL, '2006-05-04 10:45:45');
INSERT INTO `clic_zones_to_geo_zones` VALUES(30, 0, 0, 3, NULL, '2006-07-08 17:51:18');
INSERT INTO `clic_zones_to_geo_zones` VALUES(60, 38, 66, 7, NULL, '2008-09-15 21:52:33');
INSERT INTO `clic_zones_to_geo_zones` VALUES(63, 38, 72, 7, NULL, '2008-09-15 21:53:08');
INSERT INTO `clic_zones_to_geo_zones` VALUES(71, 38, 67, 8, NULL, '2015-02-09 16:04:56');
INSERT INTO `clic_zones_to_geo_zones` VALUES(72, 38, 70, 11, NULL, '2015-02-09 16:05:57');
INSERT INTO `clic_zones_to_geo_zones` VALUES(73, 38, 69, 11, NULL, '2015-02-09 16:06:12');
INSERT INTO `clic_zones_to_geo_zones` VALUES(74, 38, 74, 11, NULL, '2015-02-09 16:06:26');
INSERT INTO `clic_zones_to_geo_zones` VALUES(75, 38, 75, 12, NULL, '2015-02-09 16:07:25');
INSERT INTO `clic_zones_to_geo_zones` VALUES(76, 38, 71, 13, NULL, '2015-02-09 16:08:19');
INSERT INTO `clic_zones_to_geo_zones` VALUES(77, 38, 76, 7, NULL, '2015-02-09 16:10:12');
INSERT INTO `clic_zones_to_geo_zones` VALUES(78, 38, 78, 7, NULL, '2015-02-09 16:10:29');
INSERT INTO `clic_zones_to_geo_zones` VALUES(79, 38, 68, 7, NULL, '2015-02-09 16:10:46');
INSERT INTO `clic_zones_to_geo_zones` VALUES(80, 38, 77, 7, NULL, '2015-02-09 16:11:01');
INSERT INTO `clic_zones_to_geo_zones` VALUES(81, 38, 68, 14, NULL, '2015-02-09 16:12:03');
INSERT INTO `clic_zones_to_geo_zones` VALUES(82, 38, 77, 14, NULL, '2015-02-09 16:12:14');
INSERT INTO `clic_zones_to_geo_zones` VALUES(83, 38, 76, 9, NULL, '2015-02-09 18:53:27');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clic_action_recorder`
--
ALTER TABLE `clic_action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`(250)),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`(250)),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Index pour la table `clic_address_book`
--
ALTER TABLE `clic_address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Index pour la table `clic_address_format`
--
ALTER TABLE `clic_address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Index pour la table `clic_administrators`
--
ALTER TABLE `clic_administrators`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clic_administrator_menu`
--
ALTER TABLE `clic_administrator_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Index pour la table `clic_administrator_menu_description`
--
ALTER TABLE `clic_administrator_menu_description`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `idx_label` (`label`(250));

--
-- Index pour la table `clic_banners`
--
ALTER TABLE `clic_banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`(250));

--
-- Index pour la table `clic_banners_history`
--
ALTER TABLE `clic_banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Index pour la table `clic_categories`
--
ALTER TABLE `clic_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Index pour la table `clic_categories_description`
--
ALTER TABLE `clic_categories_description`
  ADD PRIMARY KEY (`categories_id`,`language_id`),
  ADD KEY `idx_categories_name` (`categories_name`(250));

--
-- Index pour la table `clic_configuration`
--
ALTER TABLE `clic_configuration`
  ADD PRIMARY KEY (`configuration_id`);

--
-- Index pour la table `clic_configuration_group`
--
ALTER TABLE `clic_configuration_group`
  ADD PRIMARY KEY (`configuration_group_id`);

--
-- Index pour la table `clic_countries`
--
ALTER TABLE `clic_countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`(250));

--
-- Index pour la table `clic_currencies`
--
ALTER TABLE `clic_currencies`
  ADD PRIMARY KEY (`currencies_id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Index pour la table `clic_customers`
--
ALTER TABLE `clic_customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD KEY `idx_customers_email_address` (`customers_email_address`(250));

--
-- Index pour la table `clic_customers_basket`
--
ALTER TABLE `clic_customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Index pour la table `clic_customers_basket_attributes`
--
ALTER TABLE `clic_customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Index pour la table `clic_customers_gdpr`
--
ALTER TABLE `clic_customers_gdpr`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clic_customers_groups`
--
ALTER TABLE `clic_customers_groups`
  ADD PRIMARY KEY (`customers_group_id`),
  ADD KEY `idx_customers_group_name` (`customers_group_name`);

--
-- Index pour la table `clic_customers_info`
--
ALTER TABLE `clic_customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Index pour la table `clic_customers_notes`
--
ALTER TABLE `clic_customers_notes`
  ADD PRIMARY KEY (`customers_notes_id`);

--
-- Index pour la table `clic_geo_zones`
--
ALTER TABLE `clic_geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Index pour la table `clic_groups_to_categories`
--
ALTER TABLE `clic_groups_to_categories`
  ADD PRIMARY KEY (`customers_group_id`,`categories_id`);

--
-- Index pour la table `clic_information_email_customers`
--
ALTER TABLE `clic_information_email_customers`
  ADD PRIMARY KEY (`information_email_customers_id`);

--
-- Index pour la table `clic_languages`
--
ALTER TABLE `clic_languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `idx_languages_name` (`name`(250));

--
-- Index pour la table `clic_languages_definitions`
--
ALTER TABLE `clic_languages_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_languages_definitions_languages_id` (`languages_id`),
  ADD KEY `idx_languages_definitions_groups` (`content_group`(250));

--
-- Index pour la table `clic_manufacturers`
--
ALTER TABLE `clic_manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `idx_manufacturers_name` (`manufacturers_name`);

--
-- Index pour la table `clic_manufacturers_info`
--
ALTER TABLE `clic_manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Index pour la table `clic_newsletters`
--
ALTER TABLE `clic_newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Index pour la table `clic_orders`
--
ALTER TABLE `clic_orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Index pour la table `clic_orders_pages_manager`
--
ALTER TABLE `clic_orders_pages_manager`
  ADD PRIMARY KEY (`orders_page_manager_id`,`orders_id`);

--
-- Index pour la table `clic_orders_products`
--
ALTER TABLE `clic_orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Index pour la table `clic_orders_products_attributes`
--
ALTER TABLE `clic_orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Index pour la table `clic_orders_products_download`
--
ALTER TABLE `clic_orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Index pour la table `clic_orders_status`
--
ALTER TABLE `clic_orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`(250));

--
-- Index pour la table `clic_orders_status_history`
--
ALTER TABLE `clic_orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Index pour la table `clic_orders_status_invoice`
--
ALTER TABLE `clic_orders_status_invoice`
  ADD PRIMARY KEY (`orders_status_invoice_id`,`language_id`),
  ADD KEY `idx_orders_status_invoice_name` (`orders_status_invoice_name`);

--
-- Index pour la table `clic_orders_status_support`
--
ALTER TABLE `clic_orders_status_support`
  ADD PRIMARY KEY (`orders_status_support_id`,`language_id`),
  ADD KEY `idx_orders_status_support_name` (`orders_status_support_name`);

--
-- Index pour la table `clic_orders_total`
--
ALTER TABLE `clic_orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Index pour la table `clic_pages_manager`
--
ALTER TABLE `clic_pages_manager`
  ADD PRIMARY KEY (`pages_id`);

--
-- Index pour la table `clic_pages_manager_description`
--
ALTER TABLE `clic_pages_manager_description`
  ADD PRIMARY KEY (`pages_id`,`language_id`),
  ADD KEY `idx_pages_title` (`pages_title`(250));

--
-- Index pour la table `clic_products`
--
ALTER TABLE `clic_products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`(250)),
  ADD KEY `idx_products_date_added` (`products_date_added`),
  ADD KEY `idx_products_parent_id` (`parent_id`),
  ADD KEY `idx_products_weight_class_id` (`products_weight_class_id`);

--
-- Index pour la table `clic_products_attributes`
--
ALTER TABLE `clic_products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Index pour la table `clic_products_attributes_download`
--
ALTER TABLE `clic_products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Index pour la table `clic_products_description`
--
ALTER TABLE `clic_products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`(250));

--
-- Index pour la table `clic_products_discount_quantity`
--
ALTER TABLE `clic_products_discount_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clic_products_favorites`
--
ALTER TABLE `clic_products_favorites`
  ADD PRIMARY KEY (`products_favorites_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Index pour la table `clic_products_featured`
--
ALTER TABLE `clic_products_featured`
  ADD PRIMARY KEY (`products_featured_id`),
  ADD KEY `idx_products_featured_id` (`products_id`);

--
-- Index pour la table `clic_products_images`
--
ALTER TABLE `clic_products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Index pour la table `clic_products_length_classes`
--
ALTER TABLE `clic_products_length_classes`
  ADD PRIMARY KEY (`products_length_class_id`,`language_id`),
  ADD KEY `idx_products_length_classes_language_id` (`language_id`);

--
-- Index pour la table `clic_products_length_classes_rules`
--
ALTER TABLE `clic_products_length_classes_rules`
  ADD PRIMARY KEY (`products_length_class_from_id`,`products_length_class_to_id`),
  ADD KEY `idx_products_length_class_from_id` (`products_length_class_from_id`),
  ADD KEY `idx_products_length_class_to_id` (`products_length_class_to_id`);

--
-- Index pour la table `clic_products_notifications`
--
ALTER TABLE `clic_products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Index pour la table `clic_products_options`
--
ALTER TABLE `clic_products_options`
  ADD PRIMARY KEY (`products_options_id`,`language_id`);

--
-- Index pour la table `clic_products_options_values`
--
ALTER TABLE `clic_products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`language_id`);

--
-- Index pour la table `clic_products_options_values_to_products_options`
--
ALTER TABLE `clic_products_options_values_to_products_options`
  ADD PRIMARY KEY (`products_options_values_to_products_options_id`);

--
-- Index pour la table `clic_products_quantity_unit`
--
ALTER TABLE `clic_products_quantity_unit`
  ADD PRIMARY KEY (`products_quantity_unit_id`,`language_id`),
  ADD KEY `idx_products_quantity_unit_title` (`products_quantity_unit_title`);

--
-- Index pour la table `clic_products_to_categories`
--
ALTER TABLE `clic_products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Index pour la table `clic_reviews`
--
ALTER TABLE `clic_reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Index pour la table `clic_reviews_description`
--
ALTER TABLE `clic_reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Index pour la table `clic_sec_directory_whitelist`
--
ALTER TABLE `clic_sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clic_sessions`
--
ALTER TABLE `clic_sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Index pour la table `clic_specials`
--
ALTER TABLE `clic_specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Index pour la table `clic_submit_description`
--
ALTER TABLE `clic_submit_description`
  ADD PRIMARY KEY (`submit_id`,`language_id`);

--
-- Index pour la table `clic_suppliers`
--
ALTER TABLE `clic_suppliers`
  ADD PRIMARY KEY (`suppliers_id`),
  ADD KEY `idx_suppliers_name` (`suppliers_name`);

--
-- Index pour la table `clic_suppliers_info`
--
ALTER TABLE `clic_suppliers_info`
  ADD PRIMARY KEY (`suppliers_id`,`languages_id`);

--
-- Index pour la table `clic_tax_class`
--
ALTER TABLE `clic_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Index pour la table `clic_tax_rates`
--
ALTER TABLE `clic_tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Index pour la table `clic_template_email`
--
ALTER TABLE `clic_template_email`
  ADD PRIMARY KEY (`template_email_id`),
  ADD KEY `idx_customers_group_id` (`customers_group_id`);

--
-- Index pour la table `clic_template_email_description`
--
ALTER TABLE `clic_template_email_description`
  ADD PRIMARY KEY (`template_email_id`,`language_id`),
  ADD KEY `idx_template_email_name` (`template_email_name`);

--
-- Index pour la table `clic_weight_classes`
--
ALTER TABLE `clic_weight_classes`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`),
  ADD KEY `idx_weight_classes_language_id` (`language_id`);

--
-- Index pour la table `clic_weight_classes_rules`
--
ALTER TABLE `clic_weight_classes_rules`
  ADD PRIMARY KEY (`weight_class_from_id`,`weight_class_to_id`),
  ADD KEY `idx_weight_class_from_id` (`weight_class_from_id`),
  ADD KEY `idx_weight_class_to_id` (`weight_class_to_id`);

--
-- Index pour la table `clic_whos_online`
--
ALTER TABLE `clic_whos_online`
  ADD KEY `idx_whos_online_session_id` (`session_id`(250));

--
-- Index pour la table `clic_zones`
--
ALTER TABLE `clic_zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Index pour la table `clic_zones_to_geo_zones`
--
ALTER TABLE `clic_zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clic_action_recorder`
--
ALTER TABLE `clic_action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_address_book`
--
ALTER TABLE `clic_address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_address_format`
--
ALTER TABLE `clic_address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `clic_administrators`
--
ALTER TABLE `clic_administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_administrator_menu`
--
ALTER TABLE `clic_administrator_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;

--
-- AUTO_INCREMENT pour la table `clic_banners`
--
ALTER TABLE `clic_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `clic_banners_history`
--
ALTER TABLE `clic_banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_categories`
--
ALTER TABLE `clic_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_configuration`
--
ALTER TABLE `clic_configuration`
  MODIFY `configuration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1543;

--
-- AUTO_INCREMENT pour la table `clic_configuration_group`
--
ALTER TABLE `clic_configuration_group`
  MODIFY `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `clic_countries`
--
ALTER TABLE `clic_countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT pour la table `clic_currencies`
--
ALTER TABLE `clic_currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `clic_customers`
--
ALTER TABLE `clic_customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_customers_basket`
--
ALTER TABLE `clic_customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_customers_basket_attributes`
--
ALTER TABLE `clic_customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_customers_gdpr`
--
ALTER TABLE `clic_customers_gdpr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_customers_groups`
--
ALTER TABLE `clic_customers_groups`
  MODIFY `customers_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `clic_customers_notes`
--
ALTER TABLE `clic_customers_notes`
  MODIFY `customers_notes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_geo_zones`
--
ALTER TABLE `clic_geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `clic_languages`
--
ALTER TABLE `clic_languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clic_languages_definitions`
--
ALTER TABLE `clic_languages_definitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_manufacturers`
--
ALTER TABLE `clic_manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_newsletters`
--
ALTER TABLE `clic_newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_orders`
--
ALTER TABLE `clic_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_orders_pages_manager`
--
ALTER TABLE `clic_orders_pages_manager`
  MODIFY `orders_page_manager_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_orders_products`
--
ALTER TABLE `clic_orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_orders_products_attributes`
--
ALTER TABLE `clic_orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_orders_products_download`
--
ALTER TABLE `clic_orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_orders_status_history`
--
ALTER TABLE `clic_orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_orders_total`
--
ALTER TABLE `clic_orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_pages_manager`
--
ALTER TABLE `clic_pages_manager`
  MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `clic_products`
--
ALTER TABLE `clic_products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_products_attributes`
--
ALTER TABLE `clic_products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_products_description`
--
ALTER TABLE `clic_products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_products_discount_quantity`
--
ALTER TABLE `clic_products_discount_quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_products_favorites`
--
ALTER TABLE `clic_products_favorites`
  MODIFY `products_favorites_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_products_featured`
--
ALTER TABLE `clic_products_featured`
  MODIFY `products_featured_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_products_images`
--
ALTER TABLE `clic_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_products_options_values_to_products_options`
--
ALTER TABLE `clic_products_options_values_to_products_options`
  MODIFY `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_reviews`
--
ALTER TABLE `clic_reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_sec_directory_whitelist`
--
ALTER TABLE `clic_sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `clic_specials`
--
ALTER TABLE `clic_specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_suppliers`
--
ALTER TABLE `clic_suppliers`
  MODIFY `suppliers_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clic_tax_class`
--
ALTER TABLE `clic_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `clic_tax_rates`
--
ALTER TABLE `clic_tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `clic_template_email`
--
ALTER TABLE `clic_template_email`
  MODIFY `template_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `clic_zones`
--
ALTER TABLE `clic_zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=642;

--
-- AUTO_INCREMENT pour la table `clic_zones_to_geo_zones`
--
ALTER TABLE `clic_zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
