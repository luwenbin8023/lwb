<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2014 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------
namespace Portal\Controller;
use Common\Controller\HomebaseController;

/**
 * @desc 解决方案，产品介绍
 * Class PostsController
 * @package Portal\Controller
 */
class PostsController extends HomebaseController {


	function _initialize() {
		parent::_initialize();
		//--------------------解决方案Banner---------------------//
		$banner_model= M("PositionConfig");
		$join = "".C('DB_PREFIX').'slide_cat as b on a.position_id =b.cat_position_id';
		$join2= "".C('DB_PREFIX').'slide as c on b.cid = c.slide_cid';
		$banner=$banner_model->alias("a")->join($join)->join($join2)->where(array( "position_id"=>2,"c.slide_status"=>1))->order("c.listorder asc,c.slide_id desc")->find();
		$this->assign("banner",$banner);
	}

	/**
	 * @desc 解决方案
	 */
	public function scheme() {
		//------------------解决方案--------------------//
		$term_model= M("TermRelationships");
		$join3= "".C('DB_PREFIX').'posts as b on a.object_id = b.id';
		$scheme = $term_model->alias("a")->join($join3)->where(array( "term_id"=>1,"post_status"=>1,"a.status"=>1))->order("listorder asc,b.id desc")->select();
		$this->assign("scheme",$scheme);

    	$this->display("scheme");
    }

	/**
	 * @desc 解决方案详情
	 */
	public function schemeInfo(){
		//------------------解决方案--------------------//
		$term_model= M("TermRelationships");
		$join3= "".C('DB_PREFIX').'posts as b on a.object_id = b.id';
		$scheme = $term_model->alias("a")->join($join3)->where(array( "term_id"=>1,"post_status"=>1,"a.status"=>1))->order("listorder asc,b.id desc")->select();
		$this->assign("scheme",$scheme);
		$this->display("schemeInfo");
	}

	function get_page_url(){
		$url = (isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] == '443') ? 'https://' : 'http://';
		$url .= $_SERVER['HTTP_HOST'];
		$url .= isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : urlencode($_SERVER['PHP_SELF']) . '?' . urlencode($_SERVER['QUERY_STRING']);
		return $url;
	}

}


