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

  class co_contact_us_page_manager {
    public $code;
    public $group;
    public string $title;
    public string $description;
    public ?int $sort_order = 0;
    public bool $enabled = false;

    public function __construct() {
      $this->code = get_class($this);
      $this->group = basename(__DIR__);

      $this->title = CLICSHOPPING::getDef('modules_contact_us_page_manager_title');
      $this->description = CLICSHOPPING::getDef('modules_contact_us_page_manager_description');

      if (defined('MODULES_CONTACT_US_PAGE_MANAGER_STATUS')) {
        $this->sort_order = (int)MODULES_CONTACT_US_PAGE_MANAGER_SORT_ORDER;
        $this->enabled = (MODULES_CONTACT_US_PAGE_MANAGER_STATUS == 'True');
      }
    }

    public function execute() {

      $CLICSHOPPING_Template = Registry::get('Template');
      $CLICSHOPPING_PageManagerShop = Registry::get('PageManagerShop');

      if (isset($_GET['Info']) && isset($_GET['Contact']) && !isset($_GET['Success'])) {

        $content_width = (int)MODULES_CONTACT_US_PAGE_MANAGER_CONTENT_WIDTH;

// Recuperation de la page d'acceuil personnalisee
        $CLICSHOPPING_PageManagerShop->pageManagerDisplayContact();

        if (!empty($CLICSHOPPING_PageManagerShop->pageManagerDisplayContact())) {

          $page_manager_contact = $CLICSHOPPING_PageManagerShop->pageManagerDisplayContact();

          $contact_us_page_manager = '<!--  contact_us_page_manager start -->' . "\n";

          ob_start();
          require_once($CLICSHOPPING_Template->getTemplateModules($this->group . '/content/contact_us_page_manager'));

          $contact_us_page_manager .= ob_get_clean();

          $contact_us_page_manager .= '<!-- contact_us_page_manager end -->' . "\n";

          $CLICSHOPPING_Template->addBlock($contact_us_page_manager, $this->group);
        }
      }
    }

    public function isEnabled() {
      return $this->enabled;
    }

    public function check() {
      return defined('MODULES_CONTACT_US_PAGE_MANAGER_STATUS');
    }

    public function install() {
      $CLICSHOPPING_Db = Registry::get('Db');


      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Do you want to enable this module ?',
          'configuration_key' => 'MODULES_CONTACT_US_PAGE_MANAGER_STATUS',
          'configuration_value' => 'True',
          'configuration_description' => 'Do you want to enable this module in your shop ?',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Please select the width of the module',
          'configuration_key' => 'MODULES_CONTACT_US_PAGE_MANAGER_CONTENT_WIDTH',
          'configuration_value' => '12',
          'configuration_description' => 'Select a number between 1 and 12',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_content_module_width_pull_down',
          'date_added' => 'now()'
        ]
      );


      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Sort order',
          'configuration_key' => 'MODULES_CONTACT_US_PAGE_MANAGER_SORT_ORDER',
          'configuration_value' => '10',
          'configuration_description' => 'Sort order of display. Lowest is displayed first. The sort order must be different on every module',
          'configuration_group_id' => '6',
          'sort_order' => '10',
          'set_function' => '',
          'date_added' => 'now()'
        ]
      );
    }

    public function remove() {
      return Registry::get('Db')->exec('delete from :table_configuration where configuration_key in ("' . implode('", "', $this->keys()) . '")');
    }

    public function keys() {
      return array('MODULES_CONTACT_US_PAGE_MANAGER_STATUS',
                 'MODULES_CONTACT_US_PAGE_MANAGER_CONTENT_WIDTH',
                 'MODULES_CONTACT_US_PAGE_MANAGER_SORT_ORDER'
                );
    }
  }