<?php
  /**
   *
   * @copyright 2008 - https://www.clicshopping.org
   * @Brand : ClicShopping(Tm) at Inpi all right Reserved
   * @Licence GPL 2 & MIT
   * @licence MIT - Portion of osCommerce 2.4
   * @Info : https://www.clicshopping.org/forum/trademark/
   *
   */

  use ClicShopping\OM\HTML;
  use ClicShopping\OM\CLICSHOPPING;
  use ClicShopping\OM\Registry;

  $CLICSHOPPING_Template = Registry::get('TemplateAdmin');
  $CLICSHOPPING_Language = Registry::get('Language');
  $CLICSHOPPING_Image = Registry::get('Image');
  $CLICSHOPPING_Products = Registry::get('Products');

  $CLICSHOPPING_Page = Registry::get('Site')->getPage();

  $page = (isset($_GET['page']) && is_numeric($_GET['page'])) ? (int)$_GET['page'] : 1;

  $rows = 0;
  echo HTML::form('stats_products_viewed', $CLICSHOPPING_Products->link('Products&UpdateStatsProductsViewed&resetViewed=0'));
?>
<div class="contentBody">
  <div class="row">
    <div class="col-md-12">
      <div class="card card-block headerCard">
        <div class="row">
          <span
            class="col-md-1 logoHeading"><?php echo HTML::image($CLICSHOPPING_Template->getImageDirectory() . '/categories/stats_products_viewed.gif', $CLICSHOPPING_Products->getDef('heading_title'), '40', '40'); ?></span>
          <span
            class="col-md-4 pageHeading"><?php echo '&nbsp;' . $CLICSHOPPING_Products->getDef('heading_title'); ?></span>
          <span class="col-md-7 text-md-right"><?php echo HTML::button($CLICSHOPPING_Products->getDef('button_delete'), $CLICSHOPPING_Products->link('Products&Update&resetViewed=0&page=' . $page), null, 'danger'); ?></span>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="separator"></div>
  <table border="0" width="100%" cellspacing="0" cellpadding="2">
    <td>
      <table class="table table-sm table-hover table-striped">
        <thead>
        <tr class="dataTableHeadingRow">
          <th width="20"></th>
          <th width="50"></th>
          <th><?php echo $CLICSHOPPING_Products->getDef('table_heading_number'); ?></th>
          <th><?php echo $CLICSHOPPING_Products->getDef('table_heading_products'); ?></th>
          <th class="text-md-center"><?php echo $CLICSHOPPING_Products->getDef('table_heading_viewed'); ?>
            &nbsp;
          </th>
          <th class="text-md-right"><?php echo $CLICSHOPPING_Products->getDef('table_heading_clear'); ?>
            &nbsp;
          </th>
        </tr>
        </thead>
        <tbody>
        <?php
          $Qproducts = $CLICSHOPPING_Products->db->prepare('select  SQL_CALC_FOUND_ROWS  p.products_id,
                                                                                        pd.products_name,
                                                                                        p.products_image,
                                                                                        pd.products_viewed
                                                          from :table_products p,
                                                               :table_products_description pd
                                                          where p.products_id = pd.products_id
                                                          and pd.language_id = :language_id
                                                          and p.products_archive = 0
                                                          and pd.products_viewed > 0
                                                          order by pd.products_viewed DESC
                                                          limit :page_set_offset,
                                                                :page_set_max_results
                                                          ');

          $Qproducts->bindInt(':language_id', $CLICSHOPPING_Language->getId());
          $Qproducts->setPageSet((int)MAX_DISPLAY_SEARCH_RESULTS_ADMIN);
          $Qproducts->execute();

          $listingTotalRow = $Qproducts->getPageSetTotalRows();

          if ($listingTotalRow > 0) {

            while ($products = $Qproducts->fetch()) {
              $rows++;

              if (strlen($rows) < 2) {
                $rows = '0' . $rows;
              }
              ?>
              <tr>
                <td scope="row"
                    width="50px"><?php echo HTML::link(CLICSHOPPING::link(null, 'A&Catalog\Preview&Preview&pID=' . $Qproducts->valueInt('products_id') . '?page=' . $page), HTML::image($CLICSHOPPING_Template->getImageDirectory() . 'icons/preview.gif', $CLICSHOPPING_Products->getDef('icon_preview'))); ?></td>
                <td><?php echo $CLICSHOPPING_Image->getSmallImageAdmin($Qproducts->valueInt('products_id')); ?></td>
                <td><?php echo $rows; ?>.</td>
                <td><?php echo HTML::link(CLICSHOPPING::link(null, 'A&Catalog\Preview&Preview&pID=' . $Qproducts->valueInt('products_id') . '?page=' . $page), $Qproducts->value('products_name')); ?></td>
                <td class="text-md-center"><?php echo $Qproducts->valueInt('products_viewed'); ?>&nbsp;</td>
                <td class="text-md-right"><?php echo HTML::link($CLICSHOPPING_Products->link('Products&UpdateStatsProductsViewed&resetViewed=1&products_id=' . $Qproducts->valueInt('products_id') . '&page=' . $page), HTML::image($CLICSHOPPING_Template->getImageDirectory() . 'icons/delete.gif', $CLICSHOPPING_Products->getDef('image_delete'))); ?></td>
              </tr>
              <?php
            }
          } // end $listingTotalRow
        ?>
        </tbody>
      </table>
    </td>
  </table>
  <?php
    if ($listingTotalRow > 0) {
      ?>
      <div class="row">
        <div class="col-md-12">
          <div
            class="col-md-6 float-md-left pagenumber hidden-xs TextDisplayNumberOfLink"><?php echo $Qproducts->getPageSetLabel($CLICSHOPPING_Products->getDef('text_display_number_of_link')); ?></div>
          <div
            class="float-md-right text-md-right"><?php echo $Qproducts->getPageSetLinks(CLICSHOPPING::getAllGET(array('page', 'info', 'x', 'y'))); ?></div>
        </div>
      </div>
      <?php
    } // end $listingTotalRow
  ?>
</div>
</form>

