<?php
namespace Common\Model;
use Common\Model\CommonModel;
class NewsModel extends CommonModel{

    protected $_validate = array(
        //array(验证字段,验证规则,错误提示,验证条件,附加规则,验证时间)
        array('news_title', 'require', '标题不能为空！', 1, 'regex', 3),
//        array('cat_idname', 'require', '分类标识不能为空！', 1, 'regex', 3),
    );

	protected function _before_write(&$data) {
		parent::_before_write($data);
	}
}
