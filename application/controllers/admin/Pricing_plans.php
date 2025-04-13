<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Pricing_plans extends CIF_Controller {

    public $layout = 'full';
    public $module = 'pricing_plans';
    public $model = 'Pricing_plans_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
    }

    public function index() {
        //Pagination
        $this->load->library('pagination');
        config('pagination_limit', 10);
        $config['total_rows'] = $this->{$this->model}->get(TRUE);
        $config['suffix'] = '?' . http_build_query($_GET);
        $config['base_url'] = site_url('admin/pricing_plans/index');
        $config['per_page'] = config('pagination_limit');
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();

        if ($this->uri->segment(4))
            $this->{$this->model}->offset = $this->uri->segment(4);

        $data['total'] = $config['total_rows'];
        $this->{$this->model}->limit = config('pagination_limit');
        $this->db->order_by('plan_id', 'DESC');
        $data['items'] = $this->{$this->model}->get();
        $this->load->view($this->module . '/index', $data);
    }

    public function manage($id = FALSE) {
        $data = array();

        if ($id) {
            $this->{$this->model}->{$this->_primary_key} = $id;
            $data['item'] = $this->{$this->model}->get();
            if (!$data['item'])
                show_404();
        } else {
            $data['item'] = new Std();
        }
        $this->load->library("form_validation");
        $this->form_validation->set_rules('plan_name', 'lang:plan_name', 'trim|required');
        $this->form_validation->set_rules('plan_price', 'lang:plan_price', 'trim|required');
        $this->form_validation->set_rules('price_duration', 'lang:price_duration', 'trim|required|max_length[100]');
        $this->form_validation->set_rules("plan_currency", 'lang:plan_currency', "trim|required");
        $this->form_validation->set_rules("icon", 'lang:icon', "trim|callback_file[$id]");
        $this->form_validation->set_rules('features', 'lang:features', 'trim|required');
        $this->form_validation->set_rules('is_featured', 'lang:is_featured', 'trim');
        $this->form_validation->set_rules('featured_comment', 'lang:featured_comment', 'trim');
        $this->form_validation->set_rules('display_plan', 'lang:display_plan', 'trim|required');


        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {
            $this->{$this->model}->plan_name = $this->input->post('plan_name');
            $this->{$this->model}->plan_price = $this->input->post('plan_price');
            $this->{$this->model}->price_duration = $this->input->post('price_duration');
            $this->{$this->model}->plan_currency = $this->input->post('plan_currency');
            $this->{$this->model}->features = $this->input->post('features');
            $this->{$this->model}->is_featured = $this->input->post('is_featured');
            $this->{$this->model}->featured_comment = $this->input->post('featured_comment');
            $this->{$this->model}->display_plan = $this->input->post('display_plan');

            $this->{$this->model}->save();
            redirect('admin/' . $this->module);
        }
    }

    public function delete($id = false) {
        if (!$id)
            show_404();
        $this->{$this->model}->{$this->_primary_key} = $id;
        $data['item'] = $this->{$this->model}->get();
        if (!$data['item'])
            show_404();
        $this->{$this->model}->delete();
        redirect('admin/' . $this->module);
    }

    public function file($var, $id) {
        $config['upload_path'] = './cdn/pricing_plans/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if ($this->upload->do_upload('icon')) {
            $data = $this->upload->data();
            if ($data['file_name'])
                $this->{$this->model}->icon = $data['file_name'];
        }
        return true;
    }

}
