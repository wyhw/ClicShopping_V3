<?php
/**
 *
 *  @copyright 2008 - https://www.clicshopping.org
 *  @Brand : ClicShopping(Tm) at Inpi all right Reserved
 *  @Licence GPL 2 & MIT
 *  @licence MIT - Portion of osCommerce 2.4
 *  @Info : https://www.clicshopping.org/forum/trademark/
 *
 */


  use ClicShopping\OM\Registry;
  use ClicShopping\OM\CLICSHOPPING;

  class pf_products_featured_title {
    public string $code;
    public string $group;
    public $title;
    public $description;
    public ?int $sort_order = 0;
    public bool $enabled = false;

    public function __construct() {
      $this->code = get_class($this);
      $this->group = basename(__DIR__);

      $this->title = CLICSHOPPING::getDef('module_products_featured_title_tilte');
      $this->description = CLICSHOPPING::getDef('module_products_featured_title_title_description');

      if (\defined('MODULE_PRODUCTS_FEATURED_TITLE_STATUS')) {
        $this->sort_order = MODULE_PRODUCTS_FEATURED_TITLE_SORT_ORDER;
        $this->enabled = (MODULE_PRODUCTS_FEATURED_TITLE_STATUS == 'True');
      }
    }

    public function execute() {
      $CLICSHOPPING_Template = Registry::get('Template');

      if (isset($_GET['Products'], $_GET['Featured'])) {
        $content_width = (int)MODULE_PRODUCTS_FEATURED_CONTENT_WIDTH;
        $text_position = MODULE_PRODUCTS_FEATURED_POSITION;

        $content = '  <!-- Product featured title start -->' . "\n";
        $content .= '<div class="ModulesProductsFeaturedContainer">';

        ob_start();
        require_once($CLICSHOPPING_Template->getTemplateModules($this->group . '/content/products_featured_title'));
        $content .= ob_get_clean();

        $content .= '</div>' . "\n";
        $content .= '<!--  Products featured End -->' . "\n";

        $CLICSHOPPING_Template->addBlock($content, $this->group);

      }
    } // public function execute

    public function isEnabled() {
      return $this->enabled;
    }

    public function check() {
      return \defined('MODULE_PRODUCTS_FEATURED_TITLE_STATUS');
    }

    public function install() {
      $CLICSHOPPING_Db = Registry::get('Db');

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Do you want to enable this module ?',
          'configuration_key' => 'MODULE_PRODUCTS_FEATURED_TITLE_STATUS',
          'configuration_value' => 'True',
          'configuration_description' => 'Do you want to enable this module in your shop ?',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Please select the width of the display?',
          'configuration_key' => 'MODULE_PRODUCTS_FEATURED_CONTENT_WIDTH',
          'configuration_value' => '12',
          'configuration_description' => 'Please enter a number between 1 and 12',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_content_module_width_pull_down',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Where do you want to display the module?',
          'configuration_key' => 'MODULE_PRODUCTS_FEATURED_POSITION',
          'configuration_value' => 'float-none',
          'configuration_description' => 'Display the module on the left or on the right',
          'configuration_group_id' => '6',
          'sort_order' => '2',
          'set_function' => 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))',
          'date_added' => 'now()'
        ]
      );
      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Sort order',
          'configuration_key' => 'MODULE_PRODUCTS_FEATURED_TITLE_SORT_ORDER',
          'configuration_value' => '10',
          'configuration_description' => 'Sort order of display. Lowest is displayed first. The sort order must be different on every module',
          'configuration_group_id' => '6',
          'sort_order' => '12',
          'set_function' => '',
          'date_added' => 'now()'
        ]
      );
    }

    public function remove() {
      return Registry::get('Db')->exec('delete from :table_configuration where configuration_key in ("' . implode('", "', $this->keys()) . '")');
    }

    public function keys() {
      return array(
        'MODULE_PRODUCTS_FEATURED_TITLE_STATUS',
        'MODULE_PRODUCTS_FEATURED_CONTENT_WIDTH',
        'MODULE_PRODUCTS_FEATURED_POSITION',
        'MODULE_PRODUCTS_FEATURED_TITLE_SORT_ORDER'
      );
    }
  }
