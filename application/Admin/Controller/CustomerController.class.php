<?php
/**
 * Created by PhpStorm.
 * User: lujian
 * Date: 2015/12/16
 * Time: 11:11
 */

namespace Admin\Controller;

use Common\Controller\AdminbaseController;
//class Test {
class CustomerController extends AdminbaseController {

    protected $customer_model;

    function _initialize() {
        parent::_initialize();
        $this->customer_model = D("Common/Customer");
    }

    public function index(){
        $where="";
        $cid=0;
        if(isset($_POST['cid']) && $_POST['cid']!=""){
            $cid=$_POST['cid'];
            $where="slide_cid=$cid";
        }
        $this->assign("slide_cid",$cid);
        $slides=$this->customer_model->where($where)->order("listorder ASC")->select();
        $this->assign('slides',$slides);
        $this->display();
    }

    public function add(){
        $this->display();
    }

    function add_post(){
        if(IS_POST){
            if ($this->customer_model->create()) {
                $_POST['slide_pic']=sp_asset_relative_url($_POST['slide_pic']);
                if ($this->customer_model->add()!==false) {
                    $this->success("添加成功！", U("customer/index"));
                } else {
                    $this->error("添加失败！");
                }
            } else {
                $this->error($this->customer_model->getError());
            }
        }
    }

    function delete(){
        if(isset($_POST['ids'])){
            $ids = implode(",", $_POST['ids']);
            $data['slide_status']=0;
            if ($this->customer_model->where("slide_id in ($ids)")->delete()!==false) {
                $this->success("删除成功！");
            } else {
                $this->error("删除失败！");
            }
        }else{
            $id = intval(I("get.id"));
            if ($this->customer_model->delete($id)!==false) {
                $this->success("删除成功！");
            } else {
                $this->error("删除失败！");
            }
        }

    }
    //排序
    public function listorders() {
        $status = parent::_listorders($this->customer_model);
        if ($status) {
            $this->success("排序更新成功！");
        } else {
            $this->error("排序更新失败！");
        }
    }
    function edit(){
        $id= intval(I("get.id"));
        $slide=$this->customer_model->where("slide_id=$id")->find();
        $this->assign($slide);
        $this->display();
    }

    function edit_post(){
        if(IS_POST){
            if ($this->customer_model->create()) {
                $_POST['slide_pic']=sp_asset_relative_url($_POST['slide_pic']);
                if ($this->customer_model->save()!==false) {
                    $this->success("保存成功！", U("slide/index"));
                } else {
                    $this->error("保存失败！");
                }
            } else {
                $this->error($this->customer_model->getError());
            }

        }
    }



} 