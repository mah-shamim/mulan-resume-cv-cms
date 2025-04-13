<?php

class Appointments extends CIF_Controller {

    public $layout = 'full';
    public $module = 'appointments';
    public $model = 'Requested_appointments_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index() {
        config('title', lang("global_appointments") . ' - ' . config('title'));
        $data['appointments'] = $this->db->get('appointments')->result();

        //Requested appointments
        $this->load->library('form_validation');
        $this->form_validation->set_rules('name', 'lang:global_Name', 'trim|required');
        $this->form_validation->set_rules('email', 'lang:global_email', 'trim|required|valid_email');
        $this->form_validation->set_rules('phone', 'lang:global_phone', 'trim');
        $this->form_validation->set_rules('date', 'lang:global_date', 'trim|required');
        $this->form_validation->set_rules('time', 'lang:global_time', 'trim|required');
        $this->form_validation->set_rules('subject', 'lang:global_subject', 'trim|required');
        $this->form_validation->set_rules('message', 'lang:global_Message', 'trim|required');

        if ($this->form_validation->run() == TRUE) {
            $_data = [
                'created' => date('Y-m-d H:i:s'),
                'name' => $this->input->post('name'),
                'email' => $this->input->post('email'),
                'phone' => $this->input->post('phone'),
                'date' => $this->input->post('date'),
                'time' => $this->input->post('time'),
                'subject' => $this->input->post('subject'),
                'message' => $this->input->post('message')
            ];
            $this->db->insert('requested_appointments', $_data);
            $id = $this->db->insert_id();
            $data['success'] = true;
        }

        $this->load->view($this->module, $data);
    }

}
