<?php 
class ControllerModuleQqConnect extends Controller{
	private $error = array();
	
	public function index(){
		$this->load->language('module/qq_connect');
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');
		
		if(($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()){
			$this->model_setting_setting->editSetting('qq_connect',$this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('extension/module','token=' . $this->session->data['token'],'SSL'));
		}
		
		$language_texts = array('button_save','button_cancel','heading_title','text_edit','entry_qq_connect_appid','entry_qq_connect_appkey','entry_status','text_disabled','text_enabled','entry_qq_connect_return_url');
		foreach($language_texts as $language_text){
			$data[$language_text] = $this->language->get($language_text);
		}
		$data['cancel'] = $this->url->link('extension/module','token=' . $this->session->data['token'],'SSL');
		$data['action'] = $this->url->link('module/qq_connect','token=' . $this->session->data['token'],'SSL');
		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home','token=' . $this->session->data['token'],'SSL')
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module','token=' . $this->session->data['token'],'SSL')
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/qq_connect','token=' . $this->session->data['token'],'SSL')
		);
		
		if(isset($this->error['warning'])){
			$data['error_warning'] = $this->error['warning'];
		}else{
			$data['error_warning'] = '';
		}
		
		if(isset($this->error['qq_connect_appid'])){
			$data['error_qq_connect_appid'] = $this->error['qq_connect_appid'];
		}else{
			$data['error_qq_connect_appid'] = '';
		}
		
		if(isset($this->error['qq_connect_appkey'])){
			$data['error_qq_connect_appkey'] = $this->error['qq_connect_appkey'];
		}else{
			$data['error_qq_connect_appkey'] = '';
		}
		
		if(isset($this->error['qq_connect_return_url'])){
			$data['error_qq_connect_return_url'] = $this->error['qq_connect_return_url'];
		}else{
			$data['error_qq_connect_return_url'] = '';
		}
		
		if(isset($this->request->post['qq_connect_appid'])){
			$data['qq_connect_appid'] = $this->request->post['qq_connect_appid'];
		}else{
			$data['qq_connect_appid'] = $this->config->get('qq_connect_appid');
		}
		
		if(isset($this->request->post['qq_connect_appkey'])){
			$data['qq_connect_appkey'] = $this->request->post['qq_connect_appkey'];
		}else{
			$data['qq_connect_appkey'] = $this->config->get('qq_connect_appkey');
		}
		
		if(isset($this->request->post['qq_connect_return_url'])){
			$data['qq_connect_return_url'] = $this->request->post['qq_connect_return_url'];
		}else{
			$data['qq_connect_return_url'] = $this->config->get('qq_connect_return_url');
		}
		
		if(isset($this->request->post['qq_connect_status'])){
			$data['qq_connect_status'] = $this->request->post['qq_connect_status'];
		}else{
			$data['qq_connect_status'] = $this->config->get('qq_connect_status');
		}
		
		
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('module/qq_connect.tpl',$data));
		
		
		
	}
	
	protected function validate() {
		if(!$this->user->hasPermission('modify','module/qq_connect')){
			$this->error['warning'] = $this->language->get('error_permission');
		}
		if($this->request->post['qq_connect_appid'] == ''){
			$this->error['qq_connect_appid'] = $this->language->get('error_qq_connect_appid');
		}
		if($this->request->post['qq_connect_appkey'] == ''){
			$this->error['qq_connect_appkey'] = $this->language->get('error_qq_connect_appkey');
		}
		if($this->request->post['qq_connect_return_url'] == ''){
			$this->error['qq_connect_return_url'] = $this->language->get('error_qq_connect_return_url');
		}
		
		return !$this->error;
		
	}
	
	public function install(){
		$this->db->query("CREATE TABLE  IF NOT EXISTS `" . DB_PREFIX . "qq_connect` (
			`connect_id` int(11) NOT NULL AUTO_INCREMENT,
			`customer_id` int(11) NOT NULL,
			`open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
			`nickname` varchar(255) NOT NULL,
			PRIMARY KEY (`connect_id`),
			KEY `customer_id` (`customer_id`)
		)"); 
	}
	

	
}

?>