<?php
namespace Admin\Controller;
use Common\Controller\AdminbaseController;
class CustomerserviceController extends AdminbaseController{
	protected $customer_service_model;
	
	function _initialize() {
		parent::_initialize();
		$this->customer_service_model = D("Common/CustomerService");
	}
	
	function index(){
		$customerService=$this->customer_service_model->order("listorder asc")->select();
		$this->assign("customerService",$customerService);
		$this->display();
	}
	
	function add(){
		$this->display();
	}
	
	function add_post(){
		if(IS_POST){
			if ($this->customer_service_model->create()){
				if ($this->customer_service_model->add()!==false) {
					$this->success(L('ADD_SUCCESS'), U("customerservice/index"));
				} else {
					$this->error(L('ADD_FAILED'));
				}
			} else {
				$this->error($this->customer_service_model->getError());
			}
		
		}
	}
	
	function edit(){
		$id=I("get.id");
		$customerService=$this->customer_service_model->where("id=$id")->find();
		$this->assign($customerService);
		$this->display();
	}
	
	function edit_post(){
		if (IS_POST) {
			if ($this->customer_service_model->create()) {
				if ($this->customer_service_model->save()!==false) {
					$this->success("保存成功！", U("customerservice/index"));
				} else {
					$this->error("保存失败！");
				}
			} else {
				$this->error($this->customer_service_model->getError());
			}
		}
	}
	
	/**
	 *  删除
	 */
	function delete(){
		$id = I("get.id",0,"intval");
		if ($this->customer_service_model->delete($id)!==false) {
			$this->success("删除成功！");
		} else {
			$this->error("删除失败！");
		}
	}
	
}