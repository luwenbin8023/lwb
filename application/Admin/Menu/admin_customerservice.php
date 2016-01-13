<?php
return array (
  'app' => 'Admin',
  'model' => 'CustomerService',
  'action' => 'default',
  'data' => '',
  'type' => '1',
  'status' => '1',
  'name' => '客服管理',
  'icon' => '',
  'remark' => '',
  'listorder' => '0',
  'children' => 
  array (
    array (
      'app' => 'Admin',
      'model' => 'Customerservice',
      'action' => 'index',
      'data' => '',
      'type' => '1',
      'status' => '1',
      'name' => '客服列表',
      'icon' => '',
      'remark' => '',
      'listorder' => '0',
      'children' => 
      array (
        array (
          'app' => 'Admin',
          'model' => 'CustomerService',
          'action' => 'add',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '添加客服',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
          'children' => 
          array (
            array (
              'app' => 'Admin',
              'model' => 'CustomerService',
              'action' => 'add_post',
              'data' => '',
              'type' => '1',
              'status' => '0',
              'name' => '添加客服提交',
              'icon' => '',
              'remark' => '',
              'listorder' => '0',
            ),
          ),
        ),
        array (
          'app' => 'Admin',
          'model' => 'CustomerService',
          'action' => 'edit',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '编辑客服',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
          'children' => 
          array (
            array (
              'app' => 'Admin',
              'model' => 'CustomerService',
              'action' => 'edit_post',
              'data' => '',
              'type' => '1',
              'status' => '0',
              'name' => '编辑客服提交',
              'icon' => '',
              'remark' => '',
              'listorder' => '0',
            ),
          ),
        ),
        array (
          'app' => 'Admin',
          'model' => 'Customerservice',
          'action' => 'delete',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '客服删除',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
        ),
      ),
    ),
  ),
);