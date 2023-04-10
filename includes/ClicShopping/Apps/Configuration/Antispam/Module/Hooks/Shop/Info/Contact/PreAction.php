<?php
  /**
   *
   * @copyright 2008 - https://www.clicshopping.org
   * @Brand : ClicShopping(Tm) at Inpi all right Reserved
   * @Licence GPL 2 & MIT
   * @Info : https://www.clicshopping.org/forum/trademark/
   *
   */

  namespace ClicShopping\Apps\Configuration\Antispam\Module\Hooks\Shop\Info\Contact;

  use ClicShopping\OM\Registry;
  use ClicShopping\OM\CLICSHOPPING;

  use ClicShopping\Apps\Configuration\Antispam\Antispam as AntispamApp;
  use ClicShopping\Apps\Configuration\Antispam\Classes\Shop\AntiSpam;

  class PreAction implements \ClicShopping\OM\Modules\HooksInterface
  {
    protected mixed $app;
    public mixed $messageStack;

    public function __construct()
    {
      if (!Registry::exists('Antispam')) {
        Registry::set('Antispam', new AntispamApp());
      }

      $this->app = Registry::get('Antispam');
      $this->messageStack = Registry::get('MessageStack');
    }

    /**
     * @return bool
     */
    private static function checkInvisibleAntispam() :bool
    {
      $error = false;

      if (!\defined('CLICSHOPPING_APP_ANTISPAM_IN_CONTACT') || CLICSHOPPING_APP_ANTISPAM_IN_CONTACT == 'False') {
        $error = true;
      }

      if (!\defined('CLICSHOPPING_APP_ANTISPAM_IN_STATUS') || CLICSHOPPING_APP_ANTISPAM_IN_STATUS == 'False') {
        $error = true;
      }

      if (!isset($_POST['invisible_clicshopping'])) {
        $error = true;
      }

      return $error;
    }

    /**
     * @return bool
     */
    private static function checkNumericAntispam() :bool
    {
      $error = false;

      if (!\defined('CLICSHOPPING_APP_ANTISPAM_AM_CONTACT') || CLICSHOPPING_APP_ANTISPAM_AM_CONTACT == 'False') {
        $error = true;
      }

      if (!\defined('CLICSHOPPING_APP_ANTISPAM_IN_STATUS') || CLICSHOPPING_APP_ANTISPAM_IN_STATUS == 'False') {
        $error = true;
      }

      $error = AntiSpam::checkNumericAntiSpam();


      return $error;
    }

    /**
     * @return bool
     */
    private static function checkGoogleRecaptchaAntispam() :bool
    {
      $error = false;
          
      if (!\defined('CLICSHOPPING_APP_ANTISPAM_GG_STATUS') || CLICSHOPPING_APP_ANTISPAM_GG_STATUS == 'False') {
        $error = false;
      } elseif (!\defined('CLICSHOPPING_APP_ANTISPAM_GG_CONTACT') || CLICSHOPPING_APP_ANTISPAM_GG_STATUS == 'False') {
        $error = false;
      } else {
        $error = AntiSpam::checkGoogleRecaptchaAntispam();
      }

      return $error;
    }

    public function execute()
    {
      if (!\defined('CLICSHOPPING_APP_ANTISPAM_STATUS') || CLICSHOPPING_APP_ANTISPAM_STATUS == 'False') {
        return false;
      }

      if (isset($_GET['Info'], $_GET['Contact'], $_GET['Process'])) {
        $error = false;

        $error_invisible = static::checkInvisibleAntispam();
        $error_numeric = static::checkNumericAntispam();
        $error_recaptcha = static::checkGoogleRecaptchaAntispam();

        if ($error_invisible === true || $error_numeric === true || $error_recaptcha === true) {
          $error = true;
        }

        if ($error === true) {
          $this->messageStack->add(CLICSHOPPING::getDef('text_error_antispam'), 'error');
          CLICSHOPPING::redirect(null, 'Info&Contact');
        }
      }
    }
  }