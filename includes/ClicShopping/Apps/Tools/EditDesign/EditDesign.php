<?php
  /**
   *
   * @copyright 2008 - https://www.clicshopping.org
   * @Brand : ClicShopping(Tm) at Inpi all right Reserved
   * @Licence GPL 2 & MIT
   * @Info : https://www.clicshopping.org/forum/trademark/
   *
   */

  namespace ClicShopping\Apps\Tools\EditDesign;

  use ClicShopping\OM\Registry;
  use ClicShopping\OM\CLICSHOPPING;

  class EditDesign extends \ClicShopping\OM\AppAbstract
  {

    protected $api_version = 1;
    protected string $identifier = 'ClicShopping_EditDesign_V1';

    protected function init()
    {
    }

    /**
     * @return array|mixed
     */
    public function getConfigModules(): mixed
    {
      static $result;

      if (!isset($result)) {
        $result = [];

        $directory = CLICSHOPPING::BASE_DIR . 'Apps/Tools/EditDesign/Module/ClicShoppingAdmin/Config';
        $name_space_config = 'ClicShopping\Apps\Tools\EditDesign\Module\ClicShoppingAdmin\Config';
        $trigger_message = 'ClicShopping\Apps\Tools\EditDesign\EditDesign::getConfigModules(): ';

        $this->getConfigApps($result, $directory, $name_space_config, $trigger_message);
      }

      return $result;
    }

    public function getConfigModuleInfo($module, $info)
    {
      if (!Registry::exists('EditDesignAdminConfig' . $module)) {
        $class = 'ClicShopping\Apps\Tools\EditDesign\Module\ClicShoppingAdmin\Config\\' . $module . '\\' . $module;

        Registry::set('EditDesignAdminConfig' . $module, new $class);
      }

      return Registry::get('EditDesignAdminConfig' . $module)->$info;
    }


    public function getApiVersion()
    {
      return $this->api_version;
    }

     /**
     * @return string
     */
    public function getIdentifier() :String
    {
      return $this->identifier;
    }
  }
