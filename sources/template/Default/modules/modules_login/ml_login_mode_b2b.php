<?php
/**
 *
 *  @copyright 2008 - https://www.clicshopping.org
 *  @Brand : ClicShopping(Tm) at Inpi all right Reserved
 *  @Licence GPL 2 & MIT
 *  @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

  use ClicShopping\OM\Registry;
  use ClicShopping\OM\CLICSHOPPING;

  class ml_login_mode_b2b {
    public string $code;
    public string $group;
    public $title;
    public $description;
    public ?int $sort_order = 0;
    public bool $enabled = false;

    public function __construct() {
      $this->code = get_class($this);
      $this->group = basename(__DIR__);

      $this->title = CLICSHOPPING::getDef('module_login_mode_b2b');
      $this->description = CLICSHOPPING::getDef('module_login_mode_b2b_description');

      if (\defined('MODULE_LOGIN_MODE_B2B_STATUS')) {
        $this->sort_order = (int)MODULE_LOGIN_MODE_B2B_SORT_ORDER ?? 0;
        $this->enabled = (MODULE_LOGIN_MODE_B2B_STATUS == 'True');
      }
     }

    public function execute() {

      $CLICSHOPPING_Template = Registry::get('Template');

      if (isset($_GET['Account'], $_GET['LogIn'])) {

        $content_width = (int)MODULE_LOGIN_MODE_B2B_CONTENT_WIDTH;

        $login_mode_b2b = '<!-- login_mode_b2b start -->' . "\n";

        if (MODE_MANAGEMENT_B2C_B2B == 'B2B' && MODE_B2B_B2C == 'True') {

          ob_start();
          require_once($CLICSHOPPING_Template->getTemplateModules($this->group . '/content/login_mode_b2b'));

          $login_mode_b2b .= ob_get_clean();
        }

        $login_mode_b2b .= '<!-- login_mode_b2b  end-->' . "\n";

        $CLICSHOPPING_Template->addBlock($login_mode_b2b, $this->group);
      }
    } // function execute

    public function isEnabled() {
      return $this->enabled;
    }

    public function check() {
      return \defined('MODULE_LOGIN_MODE_B2B_STATUS');
    }

    public function install() {
      $CLICSHOPPING_Db = Registry::get('Db');

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Do you want to enable this module ?',
          'configuration_key' => 'MODULE_LOGIN_MODE_B2B_STATUS',
          'configuration_value' => 'True',
          'configuration_description' => 'Do you want to activate this module?',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Please select the width of the module ?',
          'configuration_key' => 'MODULE_LOGIN_MODE_B2B_CONTENT_WIDTH',
          'configuration_value' => '12',
          'configuration_description' => 'Select a number between 1 and 12',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_content_module_width_pull_down',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Where Do you want to display the module ?',
          'configuration_key' => 'MODULE_LOGIN_MODE_B2B_POSITION',
          'configuration_value' => 'float-none',
          'configuration_description' => 'Select where you want display the module',
          'configuration_group_id' => '6',
          'sort_order' => '2',
          'set_function' => 'clic_cfg_set_boolean_value(array(\'float-end\', \'float-start\', \'float-none\'))',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Sort order',
          'configuration_key' => 'MODULE_LOGIN_MODE_B2B_SORT_ORDER',
          'configuration_value' => '30',
          'configuration_description' => 'Sort order of display. Lowest is displayed first. The sort order must be different on every module',
          'configuration_group_id' => '6',
          'sort_order' => '4',
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
        'MODULE_LOGIN_MODE_B2B_STATUS',
        'MODULE_LOGIN_MODE_B2B_CONTENT_WIDTH',
        'MODULE_LOGIN_MODE_B2B_POSITION',
        'MODULE_LOGIN_MODE_B2B_SORT_ORDER'
      );
    }
  }
