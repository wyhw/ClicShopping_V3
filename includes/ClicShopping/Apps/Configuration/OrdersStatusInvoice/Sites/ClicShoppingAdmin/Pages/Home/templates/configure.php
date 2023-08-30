<?php
/**
 *
 * @copyright 2008 - https://www.clicshopping.org
 * @Brand : ClicShopping(Tm) at Inpi all right Reserved
 * @Licence GPL 2 & MIT
 * @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

use ClicShopping\OM\HTML;
use ClicShopping\OM\Registry;

$CLICSHOPPING_MessageStack = Registry::get('MessageStack');
$CLICSHOPPING_OrdersStatusInvoice = Registry::get('OrdersStatusInvoice');

$CLICSHOPPING_Page = Registry::get('Site')->getPage();

$current_module = $CLICSHOPPING_Page->data['current_module'];

$CLICSHOPPING_OrdersStatusInvoice_Config = Registry::get('OrdersStatusInvoiceAdminConfig' . $current_module);

if ($CLICSHOPPING_MessageStack->exists('OrdersStatusInvoice')) {
  echo $CLICSHOPPING_MessageStack->get('OrdersStatusInvoice');
}
?>

<div class="contentBody">
  <div class="row">
    <div class="col-md-12">
      <div class="card card-block headerCard">
        <div class="row">
          <span
            class="col-md-1 logoHeading"><?php echo HTML::image($CLICSHOPPING_Template->getImageDirectory() . 'categories/configuration_26.gif', $CLICSHOPPING_OrdersStatusInvoice->getDef('heading_title'), '40', '40'); ?></span>
          <span
            class="col-md-4 pageHeading"><?php echo '&nbsp;' . $CLICSHOPPING_OrdersStatusInvoice->getDef('heading_title'); ?></span>
          <span class="col-md-7 text-end">
            <?php echo HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_orders_status_invoice'), null, $CLICSHOPPING_OrdersStatusInvoice->link('OrdersStatusInvoice'), 'success'); ?>
            <?php echo HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_back'), null, $CLICSHOPPING_OrdersStatusInvoice->link(null, 'A&Configuration\OrdersStatusInvoice'), 'primary'); ?>
        </div>
      </div>
    </div>
  </div>
  <div class="separator"></div>
  <ul class="nav nav-tabs flex-column flex-sm-row" role="tablist" id="appOrdersStatusInvoiceToolbar">
    <li class="nav-item">
      <?php
      foreach ($CLICSHOPPING_OrdersStatusInvoice->getConfigModules() as $m) {

        if ($CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($m, 'is_installed') === true) {
          echo '<li class="nav-link active" data-module="' . $m . '"><a href="' . $CLICSHOPPING_OrdersStatusInvoice->link('Configure&module=' . $m) . '">' . $CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($m, 'short_title') . '</a></li>';
        }
      }
      ?>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true"
         aria-expanded="false">Install</a>
      <div class="dropdown-menu">
        <?php
        foreach ($CLICSHOPPING_OrdersStatusInvoice->getConfigModules() as $m) {
          if ($CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($m, 'is_installed') === false) {
            echo '<a class="dropdown-item" href="' . $CLICSHOPPING_OrdersStatusInvoice->link('Configure&module=' . $m) . '">' . $CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($m, 'title') . '</a>';
          }
        }
        ?>
      </div>
    </li>
  </ul>
  <?php
  if ($CLICSHOPPING_OrdersStatusInvoice_Config->is_installed === true) {
    ?>
    <form name="ConfigurationOrdersStatusInvoiceConfigure"
          action="<?php echo $CLICSHOPPING_OrdersStatusInvoice->link('Configure&Process&module=' . $current_module); ?>"
          method="post">

      <div class="mainTitle">
        <?php echo $CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($current_module, 'title'); ?>
      </div>
      <div class="adminformTitle">
        <div class="card-block">

          <p class="card-text">
            <?php
            foreach ($CLICSHOPPING_OrdersStatusInvoice_Config->getInputParameters() as $cfg) {
              echo '<div>' . $cfg . '</div>';
              echo '<div class="separator"></div>';
            }
            ?>
          </p>
        </div>
      </div>

      <div class="separator"></div>
      <div class="col-md-12">
        <?php
        echo HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_save'), null, null, 'success');

        if ($CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($current_module, 'is_uninstallable') === true) {
          echo '<span class="float-end">' . HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_dialog_uninstall'), null, '#', 'warning', ['params' => 'data-bs-toggle="modal" data-bs-target="#ppUninstallModal"']) . '</span>';
        }
        ?>
      </div>
    </form>
    <?php
    if ($CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($current_module, 'is_uninstallable') === true) {
      ?>
      <div id="ppUninstallModal" class="modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
              </button>
              <h4
                class="modal-title"><?php echo $CLICSHOPPING_OrdersStatusInvoice->getDef('dialog_uninstall_title'); ?></h4>
            </div>
            <div class="modal-body">
              <?php echo $CLICSHOPPING_OrdersStatusInvoice->getDef('dialog_uninstall_body'); ?>
            </div>
            <div class="modal-footer">
              <?php echo HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_delete'), null, $CLICSHOPPING_OrdersStatusInvoice->link('Configure&Delete&module=' . $current_module), 'danger'); ?>
              <?php echo HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_uninstall'), null, $CLICSHOPPING_OrdersStatusInvoice->link('Configure&Uninstall&module=' . $current_module), 'danger'); ?>
              <?php echo HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_cancel'), null, '#', 'warning', ['params' => 'data-bs-dismiss="modal"']); ?>
            </div>
          </div>
        </div>
      </div>
      <?php
    }
  } else {
    ?>
    <div class="col-md-12 mainTitle">
      <strong><?php echo $CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($current_module, 'title'); ?></strong>
    </div>
    <div class="adminformTitle">
      <div class="row">
        <div class="separator"></div>
        <div class="col-md-12">
          <div><?php echo $CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($current_module, 'introduction'); ?></div>
          <div class="separator"></div>
          <div><?php echo HTML::button($CLICSHOPPING_OrdersStatusInvoice->getDef('button_install_title', ['title' => $CLICSHOPPING_OrdersStatusInvoice->getConfigModuleInfo($current_module, 'title')]), null, $CLICSHOPPING_OrdersStatusInvoice->link('Configure&Install&module=' . $current_module), 'warning'); ?></div>
        </div>
      </div>
    </div>
    <?php
  }
  ?>
</div>