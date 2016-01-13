<?php
namespace Portal\Controller;
use Common\Controller\AdminbaseController;
class AdminCutFormController extends AdminbaseController {

	protected $cut_form_model;

	function _initialize() {
		parent::_initialize();
		$this->cut_form_model = D("Portal/CutForm");
	}
	function index(){
		$this->_lists();
		$this->display();
	}

	private  function _lists($status=1){
		$where = array('status'=>$status);
		$data = $this->cut_form_model->where($where)->select();
		$this->assign("cutForm",$data);
	}
	
	function add(){
		$this->display();
	}
	
	function save_post(){
		if (IS_POST) {
			$data=I("post.post");
			$data['content']=htmlspecialchars_decode($data['content']);
			if($data['id']){
				$result=$this->cut_form_model->save($data);
			}
			else{
				$data['status'] = 1;
				$result=$this->cut_form_model->add($data);
			}
			if ($result) {
				$this->success("保存成功！");
			} else {
				$this->error("保存失败！");
			}
		}
	}
	
	public function edit(){
		$id = intval(I("get.id"));
		$data=$this->cut_form_model->where("id=$id")->find();
		$this->assign("data",$data);
		$this->display();
	}

	function delete(){
		if(isset($_GET['id'])){
			$id = intval(I("get.id"));
			$data['status']=0;
			if ($this->cut_form_model->where("id=$id")->save($data)) {
				$this->success("删除成功！");
			} else {
				$this->error("删除失败！");
			}
		}
	}
}