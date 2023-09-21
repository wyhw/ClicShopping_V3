<?php
/**
 *
 * @copyright 2008 - https://www.clicshopping.org
 * @Brand : ClicShoppingAI(TM) at Inpi all right Reserved
 * @Licence GPL 2 & MIT
 * @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

namespace ClicShopping\Apps\Orders\Orders\Sites\ClicShoppingAdmin\Pages\Home\Actions;

use ClicShopping\OM\Registry;

class Invoice extends \ClicShopping\OM\PagesActionsAbstract
{
  public function execute()
  {
    $CLICSHOPPING_Orders = Registry::get('Orders');

    $this->page->setUseSiteTemplate(false); //don't display Header / Footer
    $this->page->setFile('invoice.php');

    $CLICSHOPPING_Orders->loadDefinitions('Sites/ClicShoppingAdmin/invoice');
  }
}