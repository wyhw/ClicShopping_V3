<?php
  /**
   *
   * @copyright 2008 - https://www.clicshopping.org
   * @Brand : ClicShopping(Tm) at Inpi all right Reserved
   * @Licence GPL 2 & MIT
   * @Info : https://www.clicshopping.org/forum/trademark/
   *
   */

  namespace ClicShopping\Apps\Configuration\Api\Sites\ClicShoppingAdmin\Pages\Home\Actions\Api;

  use ClicShopping\OM\HTML;
  use ClicShopping\OM\Registry;
  
  class Update extends \ClicShopping\OM\PagesActionsAbstract
  {
    protected mixed $app;

    public function __construct()
    {
      $this->app = Registry::get('Api');
    }

    public function execute()
    {
      $page = (isset($_GET['page']) && is_numeric($_GET['page'])) ? (int)$_GET['page'] : 1;

      if (isset($_GET['cID'])) {
        $api_id = HTML::sanitize($_GET['cID']);
      } else {
        $api_id = null;
      }

     if (!\is_null($api_id)) {
       $username = HTML::sanitize($_POST['username']);
       $api_key = HTML::sanitize($_POST['api_key']);
// produts
       if (isset($_POST['get_product_status'])) {
         $get_product_status = HTML::sanitize($_POST['get_product_status']);
       } else {
         $get_product_status = 0;
       }

       if (isset($_POST['update_product_status'])) {
         $update_product_status = HTML::sanitize($_POST['update_product_status']);
       } else {
         $update_product_status = 0;
       }

       if (isset($_POST['insert_product_status'])) {
         $insert_product_status = HTML::sanitize($_POST['insert_product_status']);
       } else {
         $insert_product_status = 0;
       }

       if (isset($_POST['delete_product_status'])) {
         $delete_product_status = HTML::sanitize($_POST['delete_product_status']);
       } else {
         $delete_product_status = 0;
       }

// categories
       if (isset($_POST['get_categories_status'])) {
         $get_categories_status = HTML::sanitize($_POST['get_categories_status']);
       } else {
         $get_categories_status = 0;
       }

       if (isset($_POST['update_categories_status'])) {
         $update_categories_status = HTML::sanitize($_POST['update_categories_status']);
       } else {
         $update_categories_status = 0;
       }

       if (isset($_POST['insert_categories_status'])) {
         $insert_categories_status = HTML::sanitize($_POST['insert_categories_status']);
       } else {
         $insert_categories_status = 0;
       }

       if (isset($_POST['delete_categories_status'])) {
         $delete_categories_status = HTML::sanitize($_POST['delete_categories_status']);
       } else {
         $delete_categories_status = 0;
       }

       $sql_data_array = [
         'username' => $username,
         'api_key' => $api_key,
         'date_modified' => 'now()',
         'get_product_status' => $get_product_status,
         'update_product_status' => $update_product_status,
         'insert_product_status' => $insert_product_status,
         'delete_product_status' => $delete_product_status,
         'get_categories_status' => $get_categories_status,
         'update_categories_status' => $update_categories_status,
         'insert_categories_status' => $insert_categories_status,
         'delete_categories_status' => $delete_categories_status,
       ];

        $this->app->db->save('api', $sql_data_array, ['api_id' => (int)$api_id]);
      }

      $this->app->redirect('Api&page=' . $page . '&cID=' . $api_id . '&#tab2');
    }
  }