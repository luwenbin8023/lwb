<?php
return array (
  'app' => 'Admin',
  'model' => 'Index',
  'action' => 'about',
  'data' => '',
  'type' => '1',
  'status' => '1',
  'name' => '关于纳网',
  'icon' => '',
  'remark' => '',
  'listorder' => '0',
  'children' => 
  array (
    array (
      'app' => 'Portal',
      'model' => 'AdminCutForm',
      'action' => 'edit',
      'data' => 'id=3',
      'type' => '1',
      'status' => '1',
      'name' => '公司介绍',
      'icon' => '',
      'remark' => '',
      'listorder' => '0',
      'children' => 
      array (
        array (
          'app' => 'Portal',
          'model' => 'AdminCutForm',
          'action' => 'save_post',
          'data' => 'id=3',
          'type' => '1',
          'status' => '0',
          'name' => '编辑单页提交1',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
        ),
      ),
    ),
    array (
      'app' => 'Portal',
      'model' => 'AdminCutForm',
      'action' => 'edit',
      'data' => 'id=4',
      'type' => '1',
      'status' => '1',
      'name' => '人才招聘',
      'icon' => '',
      'remark' => '',
      'listorder' => '0',
    ),
  ),
);