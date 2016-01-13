<?php
return array (
  'app' => 'Admin',
  'model' => 'Slide',
  'action' => 'default',
  'data' => '',
  'type' => '1',
  'status' => '1',
  'name' => '幻灯片',
  'icon' => '',
  'remark' => '',
  'listorder' => '1',
  'children' => 
  array (
    array (
      'app' => 'Admin',
      'model' => 'Slide',
      'action' => 'index',
      'data' => '',
      'type' => '1',
      'status' => '1',
      'name' => '幻灯片管理',
      'icon' => '',
      'remark' => '',
      'listorder' => '0',
      'children' => 
      array (
        array (
          'app' => 'Admin',
          'model' => 'Slide',
          'action' => 'listorders',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '幻灯片排序',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slide',
          'action' => 'toggle',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '幻灯片显示切换',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slide',
          'action' => 'ban',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '禁用幻灯片',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slide',
          'action' => 'cancelban',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '启用幻灯片',
          'icon' => '',
          'remark' => '',
          'listorder' => '0',
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slide',
          'action' => 'delete',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '删除幻灯片',
          'icon' => '',
          'remark' => '',
          'listorder' => '1000',
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slide',
          'action' => 'edit',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '编辑幻灯片',
          'icon' => '',
          'remark' => '',
          'listorder' => '1000',
          'children' => 
          array (
            array (
              'app' => 'Admin',
              'model' => 'Slide',
              'action' => 'edit_post',
              'data' => '',
              'type' => '1',
              'status' => '0',
              'name' => '提交编辑',
              'icon' => '',
              'remark' => '',
              'listorder' => '0',
            ),
          ),
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slide',
          'action' => 'add',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '添加幻灯片',
          'icon' => '',
          'remark' => '',
          'listorder' => '1000',
          'children' => 
          array (
            array (
              'app' => 'Admin',
              'model' => 'Slide',
              'action' => 'add_post',
              'data' => '',
              'type' => '1',
              'status' => '0',
              'name' => '提交添加',
              'icon' => '',
              'remark' => '',
              'listorder' => '0',
            ),
          ),
        ),
      ),
    ),
    array (
      'app' => 'Admin',
      'model' => 'Slidecat',
      'action' => 'index',
      'data' => '',
      'type' => '1',
      'status' => '1',
      'name' => '幻灯片分类',
      'icon' => '',
      'remark' => '',
      'listorder' => '0',
      'children' => 
      array (
        array (
          'app' => 'Admin',
          'model' => 'Slidecat',
          'action' => 'delete',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '删除分类',
          'icon' => '',
          'remark' => '',
          'listorder' => '1000',
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slidecat',
          'action' => 'edit',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '编辑分类',
          'icon' => '',
          'remark' => '',
          'listorder' => '1000',
          'children' => 
          array (
            array (
              'app' => 'Admin',
              'model' => 'Slidecat',
              'action' => 'edit_post',
              'data' => '',
              'type' => '1',
              'status' => '0',
              'name' => '提交编辑',
              'icon' => '',
              'remark' => '',
              'listorder' => '0',
            ),
          ),
        ),
        array (
          'app' => 'Admin',
          'model' => 'Slidecat',
          'action' => 'add',
          'data' => '',
          'type' => '1',
          'status' => '0',
          'name' => '添加分类',
          'icon' => '',
          'remark' => '',
          'listorder' => '1000',
          'children' => 
          array (
            array (
              'app' => 'Admin',
              'model' => 'Slidecat',
              'action' => 'add_post',
              'data' => '',
              'type' => '1',
              'status' => '0',
              'name' => '提交添加',
              'icon' => '',
              'remark' => '',
              'listorder' => '0',
            ),
          ),
        ),
      ),
    ),
  ),
);