<?php
/**
 * Created by PhpStorm.
 * User: LAL
 * Date: 2015/12/23
 * Time: 16:01
 */

namespace Admin\Controller;

use Common\Controller\AdminbaseController;

class NewsController extends AdminbaseController {
    protected $news_model;

    public function _initialize() {
        parent::_initialize();
        $this->news_model = D("Common/News");
    }

    public function index(){
        $this->_lists();
        $this->display( );
    }

    public function active() {
        $id = intval(I("get.id"));
        if($id){
            $newInfo = $this->news_model->where(array('news_id'=>$id))->find();
            $this->assign("newInfo", $newInfo);
        }
        $this->display();
    }

    public function save_post(){
        if (IS_POST) {
            if ($this->news_model->create()) {
                if($_POST['news_id']){
                    $result = $this->news_model->save();
                }
                else{
                    $result = $this->news_model->add();
                }
                if($result!==false){
                    $this->success("保存成功！", U("news/index"));
                }
                else {
                    $this->error("保存失败！");
                }
            } else {
                $this->error($this->news_model->getError());
            }
        }
    }

    function delete(){

        $id = intval(I("get.id"));
        if (M("News")->where("news_id=$id")->delete($id)!==false) {
            $this->success("删除成功！");
        } else {
            $this->error("删除失败！");
        }
    }

    public function _lists(){
        $count=$this->news_model->count();
        $page = $this->page($count, 10);
        $news =$this->news_model->limit($page->firstRow . ',' . $page->listRows)->order("news_listorder asc")->select();

        $this->assign("Page", $page->show('Admin'));
        $this->assign("news",$news);
    }

} 