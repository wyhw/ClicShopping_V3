<?php
/**
 *
 * @copyright 2008 - https://www.clicshopping.org
 * @Brand : ClicShoppingAI(TM) at Inpi all right Reserved
 * @Licence GPL 2 & MIT
 * @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

use ClicShopping\OM\CLICSHOPPING;
use ClicShopping\OM\HTML;

?>
<div class="col-md-<?php echo $content_width; ?>" id="pricacyCondition1">
  <div class="mt-1"></div>
  <div class="mt-1"></div>
  <div class="modulesContactUsTextPrivacy">
    <ul class="list-group list-group-flush">
      <li class="list-group-item-slider">
        <?php echo CLICSHOPPING::getDef('text_privacy_conditions_description', ['store_name' => STORE_NAME, 'privacy_url' => CLICSHOPPING::link(SHOP_CODE_URL_CONFIDENTIALITY)]); ?>
        <div class="mt-1"></div>
        <?php echo CLICSHOPPING::getDef('text_privacy_conditions_agree'); ?>
        <label class="switch">
          <?php echo HTML::checkboxField('customer_agree_privacy', null, null, 'required aria-required="true" class="success"'); ?>
          <span class="slider"></span>
        </label>
      </li>
    </ul>
  </div>
</div>