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
 * 首页
 */
class IndexController extends HomebaseController {
	
    //首页
	public function index() {
		//--------------------Banner---------------------//
		$banner_model= M("PositionConfig");
		$join = "".C('DB_PREFIX').'slide_cat as b on a.position_id =b.cat_position_id';
		$join2= "".C('DB_PREFIX').'slide as c on b.cid = c.slide_cid';

		$banner=$banner_model->alias("a")->join($join)->join($join2)->where(array( "position_id"=>1,"c.slide_status"=>1))->order("c.listorder asc")->select();
		$this->assign("banner",$banner);
		//------------------解决方案--------------------//
		$term_model= M("TermRelationships");
		$join3= "".C('DB_PREFIX').'posts as b on a.object_id = b.id';

		$scheme = $term_model->alias("a")->join($join3)->where(array( "term_id"=>1,"post_status"=>1,"a.status"=>1))->order("listorder asc,b.id desc")->select();
		$this->assign("scheme",$scheme);
		//------------------纳网的优势------------------//
		$cut_form_model= M("CutForm");
		$advantage = $cut_form_model->where(array("type"=>2))->select();
		$this->assign("advantage",$advantage);
		//------------------友情链接------------------//
		$links_model= M("Links");
		$links= $links_model->where(array("link_status"=>1))->order("listorder asc")->select();
		$this->assign("links",$links);

    	$this->display(":index");
    }
}


