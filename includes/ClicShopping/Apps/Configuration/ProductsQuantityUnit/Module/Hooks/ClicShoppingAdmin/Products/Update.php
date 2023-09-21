<?php
/**
 *
 * @copyright 2008 - https://www.clicshopping.org
 * @Brand : ClicShoppingAI(TM) at Inpi all right Reserved
 * @Licence GPL 2 & MIT
 * @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

namespace ClicShopping\Apps\Configuration\ProductsQuantityUnit\Module\Hooks\ClicShoppingAdmin\Products;

use ClicShopping\OM\HTML;
use ClicShopping\OM\Registry;

use ClicShopping\Apps\Configuration\ProductsQuantityUnit\ProductsQuantityUnit as ProductsQuantityUnitApp;

class Update implements \ClicShopping\OM\Modules\HooksInterface
{
  protected mixed $app;

  public function __construct()
  {
    if (!Registry::exists('ProductsQuantityUnit')) {
      Registry::set('ProductsQuantityUnit', new ProductsQuantityUnitApp());
    }

    $this->app = Registry::get('ProductsQuantityUnit');
  }

  public function execute()
  {
    if (isset($_GET['Update'], $_GET['pID'], $_POST['products_quantity_unit_id'])) {
      $id = HTML::sanitize($_GET['pID']);

      $Qupdate = $this->app->db->prepare('update :table_products
                                            set products_quantity_unit_id = :products_quantity_unit_id
                                            where products_id = :products_id
                                          ');
      $Qupdate->bindInt(':products_quantity_unit_id', $_POST['products_quantity_unit_id']);
      $Qupdate->bindInt(':products_id', $id);
      $Qupdate->execute();
    }
  }
}