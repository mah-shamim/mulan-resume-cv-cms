<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Requested_appointments extends CIF_Controller {

    public $layout = 'full';
    public $module = 'appointments';
    public $model = 'Requested_appointments_model';

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
        $config['base_url'] = site_url('admin/appointments/requested_appointments');
        $config['per_page'] = config('pagination_limit');
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();

        if ($this->uri->segment(4))
            $this->{$this->model}->offset = $this->uri->segment(4);

        $data['total'] = $config['total_rows'];
        $this->{$this->model}->limit = config('pagination_limit');
        $this->db->order_by('requested_appointment_id', 'DESC');
        $data['items'] = $this->{$this->model}->get();
        $this->load->view($this->module . '/requested_appointments', $data);
    }

    public function view($id = FALSE) {
        $data = array();
        if (!$id)
            show_404();
        $this->{$this->model}->{$this->_primary_key} = $id;

        $data['item'] = $this->{$this->model}->get();
        if (!$data['item'])
            show_404();

        $this->load->view($this->module . '/view', $data);
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

}
