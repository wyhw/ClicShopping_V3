<?php
/**
 *
 *  @copyright 2008 - https://www.clicshopping.org
 *  @Brand : ClicShopping(Tm) at Inpi all right Reserved
 *  @Licence GPL 2 & MIT
 *  @licence MIT - Portion of osCommerce 2.4
 *
 *
 */

  use ClicShopping\OM\Registry;
  use ClicShopping\OM\CLICSHOPPING;

  class as_advanced_search_price {

    public $code;
    public $group;
    public $title;
    public $description;
    public $sort_order;
    public $enabled = false;

    public function __construct() {
      $this->code = get_class($this);
      $this->group = basename(__DIR__);

      $this->title = CLICSHOPPING::getDef('module_advanced_search_price_title');
      $this->description = CLICSHOPPING::getDef('module_advanced_search_price_description');

      if (defined('MODULE_ADVANCED_SEARCH_PRICE_STATUS')) {
        $this->sort_order = MODULE_ADVANCED_SEARCH_PRICE_SORT_ORDER;
        $this->enabled = MODULE_ADVANCED_SEARCH_PRICE_STATUS;
      }
    }

    public function execute() {
      $CLICSHOPPING_Template = Registry::get('Template');

      if (isset($_GET['AdvancedSearch'])) {

        $advanced_search_price = '<!-- Start advanced search price -->' . "\n";

        ob_start();
        require($CLICSHOPPING_Template->getTemplateModules($this->group . '/content/advanced_search_price'));
        $advanced_search_price .= ob_get_clean();

        $advanced_search_price .= '<!-- end advanced search price -->' . "\n";

        $CLICSHOPPING_Template->addBlock($advanced_search_price, $this->group);
      }
    } // function execute

    public function isEnabled() {
      return $this->enabled;
    }

    public function check() {
      return defined('MODULE_ADVANCED_SEARCH_PRICE_STATUS');
    }

    public function install() {
      $CLICSHOPPING_Db = Registry::get('Db');

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Do you want activate this module ?',
          'configuration_key' => 'MODULE_ADVANCED_SEARCH_PRICE_STATUS',
          'configuration_value' => 'True',
          'configuration_description' => 'Do you want activate this module in your shop ?',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Sort order',
          'configuration_key' => 'MODULE_ADVANCED_SEARCH_PRICE_SORT_ORDER',
          'configuration_value' => '40',
          'configuration_description' => 'Sort order of display. Lowest is displayed first',
          'configuration_group_id' => '6',
          'sort_order' => '2',
          'set_function' => '',
          'date_added' => 'now()'
        ]
      );

      return $CLICSHOPPING_Db->save('configuration', ['configuration_value' => '1'],
                                               ['configuration_key' => 'WEBSITE_MODULE_INSTALLED']
      );
    }

    public function remove() {
      return Registry::get('Db')->exec('delete from :table_configuration where configuration_key in ("' . implode('", "', $this->keys()) . '")');
    }

    public function keys() {
      return array (
        'MODULE_ADVANCED_SEARCH_PRICE_STATUS',
        'MODULE_ADVANCED_SEARCH_PRICE_SORT_ORDER'
      );
    }
  }
