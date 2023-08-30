<?php
/**
 *
 * @copyright 2008 - https://www.clicshopping.org
 * @Brand : ClicShopping(Tm) at Inpi all right Reserved
 * @Licence GPL 2 & MIT
 * @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

namespace ClicShopping\Apps\Configuration\Countries\Sites\ClicShoppingAdmin\Pages\Home\Actions;

use ClicShopping\OM\Registry;

class delete extends \ClicShopping\OM\PagesActionsAbstract
{
  public function execute()
  {
    $CLICSHOPPING_Countries = Registry::get('Countries');

    $this->page->setFile('delete.php');
    $this->page->data['action'] = 'Delete';

    $CLICSHOPPING_Countries->loadDefinitions('Sites/ClicShoppingAdmin/Countries');
  }
}