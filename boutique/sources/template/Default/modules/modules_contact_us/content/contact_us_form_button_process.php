<?php
  use ClicShopping\OM\HTML;
  use ClicShopping\OM\CLICSHOPPING;
?>
<div class="col-md-<?php echo $content_width; ?>">
  <div class="separator"></div>
  <div class="control-group" id="RowContentButtonProcess1">
    <div class="buttonSet">
      <div class="text-md-right">
        <?php echo HTML::button(CLICSHOPPING::getDef('button_continue'), null, null, 'primary', null, null, null, '"submit"'); ?>
      </div>
    </div>
  </div>
</div>
  <?php echo $endform; ?>