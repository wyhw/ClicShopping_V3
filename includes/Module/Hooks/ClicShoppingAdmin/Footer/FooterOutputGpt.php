<?php
/**
 *
 * @copyright 2008 - https://www.clicshopping.org
 * @Brand : ClicShopping(Tm) at Inpi all right Reserved
 * @Licence GPL 2 & MIT
 * @Info : https://www.clicshopping.org/forum/trademark/
 *
 */

namespace ClicShopping\OM\Module\Hooks\ClicShoppingAdmin\Footer;

use ClicShopping\Apps\Configuration\ChatGpt\Classes\ClicShoppingAdmin\ChatGptAdmin;
use function defined;

class FooterOutputGpt
{
  /**
   * @return bool|string
   */
  public function display(): string
  {
    $output = '';

    if (isset($_SESSION['admin'])) {
      if (!defined('CLICSHOPPING_APP_CHATGPT_CH_STATUS') || CLICSHOPPING_APP_CHATGPT_CH_STATUS == 'True') {

        $url = ChatGptAdmin::getAjaxUrl(true);

        $output .= '<!-- Start gpt -->' . "\n";
        $output .= '<script defer>';
        $output .= 'document.addEventListener("DOMContentLoaded", function() {';
        $output .= 'var sendGptButton = document.querySelector("#sendGpt");';
        $output .= 'if (sendGptButton) {';
        $output .= '  sendGptButton.addEventListener("click", function() {';
        $output .= '    let message = document.querySelector("#messageGpt").value;';
        $output .= '    let xhr = new XMLHttpRequest();';
        $output .= '    xhr.open("POST", "' . $url . '");';
        $output .= '    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");';
        $output .= '    xhr.onreadystatechange = function() {';
        $output .= '      if (xhr.readyState === 4 && xhr.status === 200) {';
        $output .= '        document.querySelector("#chatGpt-output").innerHTML = xhr.responseText;';
        $output .= '      }';
        $output .= '    };';
        $output .= '    xhr.send("message=" + message);';
        $output .= '  });';
        $output .= '}';
        $output .= '});';
        $output .= '</script>' . "\n";

        $output .= '<!-- End gpt  -->' . "\n";
      }
    }

    return $output;
  }
}