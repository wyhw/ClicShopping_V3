<?php
/**
 *
 * @copyright 2008 - https://www.clicshopping.org
 * @Brand : ClicShoppingAI(TM) at Inpi all right Reserved
 * @Licence GPL 2 & MIT
 * @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

use ClicShopping\OM\HTML;
use ClicShopping\OM\Registry;

$CLICSHOPPING_PageManagerShop = Registry::get('PageManagerShop');

$id = HTML::sanitize($_GET['pagesId']);
$page = $CLICSHOPPING_PageManagerShop->pageManagerDisplayInformation($id);
$page_title = $CLICSHOPPING_PageManagerShop->pageManagerDisplayTitle($id);

const HEADING_TITLE = '';
require_once($CLICSHOPPING_Template->getTemplateFiles('breadcrumb'));
?>
<section class="information" id="information">
  <div class="contentContainer">
    <div class="contentText">
      <div class="page-title pageManagerHeader">
        <h1><?php echo $page_title; ?></h1>
      </div>
      <div class="pageManager"><?php echo $page; ?></div>
      <div class="mt-1"></div>
    </div>
  </div>
</section>