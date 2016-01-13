<?php
return array (
  'app' => 'Api',
  'model' => 'Guestbookadmin',
  'action' => 'default',
  'data' => '',
  'type' => '1',
  'status' => '1',
  'name' => '留言管理',
  'icon' => 'envelope-o',
  'remark' => '',
  'listorder' => '0',
  'children' => 
  array (
    array (
      'app' => 'Api',
      'model' => 'Guestbookadmin',
      'action' => 'index',
      'data' => '',
      'type' => '1',
      'status' => '1',
      'name' => '所有留言',
      'icon' => '',
      'remark' => '',
      'listorder' => '0',
      'children' => 
      array (
        array (
          'app' => 'Api',
          'model' => 'Guestbookadmin',
          'action' => 'delete',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '删除网站留言',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
        ),
      ),
    ),
  ),
);