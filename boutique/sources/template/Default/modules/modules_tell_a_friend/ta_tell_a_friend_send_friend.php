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
  use ClicShopping\OM\HTML;
  use ClicShopping\OM\CLICSHOPPING;

  class ta_tell_a_friend_send_friend {
    public $code;
    public $group;
    public $title;
    public $description;
    public $sort_order;
    public $enabled = false;

    public function __construct() {
      $this->code = get_class($this);
      $this->group = basename(__DIR__);

      $this->title = CLICSHOPPING::getDef('modules_tell_a_friend_send_friend_title');
      $this->description = CLICSHOPPING::getDef('modules_tell_a_friend_send_friend_description');

      if ( defined('MODULES_TELL_A_FRIEND_SEND_FRIEND_STATUS') ) {
        $this->sort_order = MODULES_TELL_A_FRIEND_SEND_FRIEND_SORT_ORDER;
        $this->enabled = MODULES_TELL_A_FRIEND_SEND_FRIEND_STATUS;
      }
    }

    public function execute() {

      $CLICSHOPPING_Template = Registry::get('Template');
      $content_width = (int)MODULES_TELL_A_FRIEND_SEND_FRIEND_CONTENT_WIDTH;

      if (isset($_GET['Products']) && isset($_GET['TellAFriend'])) {

        $name = HTML::inputField('to_name', NULL, 'required aria-required="true" id="inputToName" placeholder="' . CLICSHOPPING::getDef('modules_tell_a_friend_field_friend_name') . '" minlength="'. ENTRY_FIRST_NAME_MIN_LENGTH .'"');
        $customer_email = HTML::inputField('to_email_address', NULL, 'rel="txtTooltipEmailAddress" title="' . CLICSHOPPING::getDef('modules_tell_a_friend_message_email_send_to_dgrp') . '" data-toggle="tooltip" data-placement="right" required aria-required="true" id="inputFromEmail" placeholder="' . CLICSHOPPING::getDef('modules_tell_a_friend_field_friend_email') . '"', 'email');
        
        $data = '<!-- ta_tell_a_friend_send_friend start -->' . "\n";

        ob_start();
        require($CLICSHOPPING_Template->getTemplateModules($this->group . '/content/tell_a_friend_send_friend'));

        $data .= ob_get_clean();

        $data .= '<!-- ta_tell_a_friend_send_friend end -->' . "\n";

        $CLICSHOPPING_Template->addBlock($data, $this->group);
      }
    } // public function execute

    public function isEnabled() {
      return $this->enabled;
    }

    public function check() {
      return defined('MODULES_TELL_A_FRIEND_SEND_FRIEND_STATUS');
    }

    public function install() {
      $CLICSHOPPING_Db = Registry::get('Db');

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Do you want activate this module ?',
          'configuration_key' => 'MODULES_TELL_A_FRIEND_SEND_FRIEND_STATUS',
          'configuration_value' => 'True',
          'configuration_description' => 'Do you want activate this module in your shop ?',
          'configuration_group_id' => '6',
          'sort_order' => '1',
          'set_function' => 'clic_cfg_set_boolean_value(array(\'True\', \'False\'))',
          'date_added' => 'now()'
        ]
      );

      $CLICSHOPPING_Db->save('configuration', [
          'configuration_title' => 'Please select the width of the module',
          'configuration_key' => 'MODULES_TELL_A_FRIEND_SEND_FRIEND_CONTENT_WIDTH',
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
          'configuration_key' => 'MODULES_TELL_A_FRIEND_SEND_FRIEND_SORT_ORDER',
          'configuration_value' => '20',
          'configuration_description' => 'Sort order of display. Lowest is displayed first',
          'configuration_group_id' => '6',
          'sort_order' => '4',
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
      return array('MODULES_TELL_A_FRIEND_SEND_FRIEND_STATUS',
                   'MODULES_TELL_A_FRIEND_SEND_FRIEND_CONTENT_WIDTH',
                   'MODULES_TELL_A_FRIEND_SEND_FRIEND_SORT_ORDER'
                  );
    }
  }
