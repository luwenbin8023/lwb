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
 * 关于我们
 */
class ContactController extends HomebaseController {

    function _initialize() {
       parent::_initialize();
       $banner_model= M("PositionConfig");
       $join = "".C('DB_PREFIX').'slide_cat as b on a.position_id =b.cat_position_id';
       $join2= "".C('DB_PREFIX').'slide as c on b.cid = c.slide_cid';
       $banner=$banner_model->alias("a")->join($join)->join($join2)->where(array( "position_id"=>5,"c.slide_status"=>1))->order("c.slide_id desc,position_id asc")->find();
       $this->assign("banner",$banner);
    }

    //公司介绍
	public function introduction() {
        $data=D("Portal/CutForm")->where("id=3")->find();
        $this->assign("data",$data);
    	$this->display();
    }
    //案例
    public function customercase() {
        $data = D("Common/Customer")->order("listorder asc")->select();
        $this->assign("data",$data);
        $this->display();
    }
    //联系我们
    public function contact() {
        $data=D("Portal/CutForm")->where("id=5")->find();
        $this->assign("data",$data);
        $this->display();
    }
    //人才招聘
    public function contactPerson() {
        $data=D("Portal/CutForm")->where("id=4")->find();
        $this->assign("data",$data);
        $this->display();
    }
    //荣誉
    public function honor() {
/*        $honor_cat_model= M("HonorCat");
        $join = "".C('DB_PREFIX').'honor as b on a.cid =b.slide_cid';
        $honor=$honor_cat_model->alias("a")->join($join)->order("a.listorder asc")->where(array("b.slide_status"=>1))->select();
        $this->assign("data",$honor);
        echo "<pre>";print_r($honor);exit;
       // $this->display();*/
        $cat = D("Common/HonorCat")->order("listorder asc")->select();
        $articleModel = D("Common/Honor");
        foreach($cat as $key => $value)
        {
            $article[$key]['cat_name'] = $cat[$key]["cat_name"];
            $where = " slide_cid = " . $cat[$key]["cid"] . " and slide_status = 1 ";
            $article[$key]["article"] = $articleModel->where($where)->order("listorder asc")->select();
        }
        $this->assign("data",$article);
        //echo "<pre>";print_r($article);exit;
        $this->display();
    }
    //动态
    public function newlist() {
        $model = D("Common/News");
        $count = $model->where("news_status = 1")->count();
        $page = $this->page($count, 10);

        $posts=$model->order("news_id desc")->where("news_status = 1")
            ->order("news_listorder asc")
            ->limit($page->firstRow . ',' . $page->listRows)
            ->select();
        $this->assign("posts",$posts);
        $this->assign("Page", $page->show('default'));
        $this->display();
    }
    //动态详情
    public function listcont() {
        $model = D("Common/News");
        $data = $model->where(array("news_id"=>$_GET["id"]))->find();
        $this->assign("data",$data);
        $this->display();
    }

}


