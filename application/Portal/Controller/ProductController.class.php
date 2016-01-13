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

class ProductController extends HomebaseController {

    function _initialize() {
        parent::_initialize();
        //--------------------产品Banner---------------------//
        $banner_model= M("PositionConfig");
        $join = "".C('DB_PREFIX').'slide_cat as b on a.position_id =b.cat_position_id';
        $join2= "".C('DB_PREFIX').'slide as c on b.cid = c.slide_cid';
        $banner=$banner_model->alias("a")->join($join)->join($join2)->where(array( "position_id"=>3,"c.slide_status"=>1))->order("c.listorder asc,c.slide_id desc")->select();
        $this->assign("banner",$banner);
    }
	
    //产品首页
	public function index() {
        //------------------产品--------------------//
        $term_model= M("TermRelationships");
        $join3= "".C('DB_PREFIX').'posts as b on a.object_id = b.id';
        $scheme = $term_model->alias("a")->join($join3)->where(array( "term_id"=>2,"post_status"=>1,"a.status"=>1))->order("listorder asc,b.id desc")->select();
        $this->assign("product",$scheme);

    	$this->display();
    }
    
    public function productInfo() {
		//------------------产品介绍--------------------//
        $term_model= M("TermRelationships");
        $join3= "".C('DB_PREFIX').'posts as b on a.object_id = b.id';
        $scheme = $term_model->alias("a")->join($join3)->where(array( "term_id"=>2,"post_status"=>1,"a.status"=>1))->order("listorder asc,b.id desc")->select();
        $this->assign("product",$scheme);
        $this->assign("selectID", $_GET[id] );
		$this->display("productInfo");
	}
}


