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
 * 代理
 */
class AgentController extends HomebaseController {
	
    //代理首页
	public function index() {
        $banner_model= M("PositionConfig");
        $join = "".C('DB_PREFIX').'slide_cat as b on a.position_id =b.cat_position_id';
        $join2= "".C('DB_PREFIX').'slide as c on b.cid = c.slide_cid';
        $banner=$banner_model->alias("a")->join($join)->join($join2)->where(array( "position_id"=>4,"c.slide_status"=>1))->order("c.listorder asc,c.slide_id desc")->find();
        $this->assign("banner",$banner);

        $Model = D("Portal/CutForm");
        $hezuo = $Model->where("id = 10")->find();
        $this->assign('hezuo',$hezuo);
        $fuwu = $Model->where("id = 11")->find();
        $this->assign('fuwu',$fuwu);
        $liucheng = $Model->where("id = 12")->find();
        $this->assign('liucheng',$liucheng);
    	$this->display();
    }

}


