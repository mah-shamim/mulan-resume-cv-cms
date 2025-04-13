<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sitemap extends CI_Controller {

    public $model = 'Projects_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    function index() {
        $data['projects'] = $this->{$this->model}->get();
        $data['posts'] = $this->db->get('blog')->result();
        header("Content-Type: text/xml;charset=utf-8");
       $this->load->view("sitemap", $data);
    }

}
