<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Appointments extends CIF_Controller {

    public $layout = 'full';
    public $module = 'appointments';
    public $model = 'Appointments_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
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
        $this->form_validation->set_rules('sa_status', 'lang:global_status', 'trim');
        $this->form_validation->set_rules('sa_st_time', 'lang:global_start_time', 'trim');
        $this->form_validation->set_rules('sa_en_time', 'lang:global_end_time', 'trim');
        $this->form_validation->set_rules('su_status', 'lang:global_status', 'trim');
        $this->form_validation->set_rules('su_st_time', 'lang:global_start_time', 'trim');
        $this->form_validation->set_rules('su_en_time', 'lang:global_end_time', 'trim');
        $this->form_validation->set_rules('mo_status', 'lang:global_status', 'trim');
        $this->form_validation->set_rules('mo_st_rime', 'lang:global_start_time', 'trim');
        $this->form_validation->set_rules('mo_en_time', 'lang:global_end_time', 'trim');
        $this->form_validation->set_rules('tu_status', 'lang:global_status', 'trim');
        $this->form_validation->set_rules('tu_st_rime', 'lang:global_start_time', 'trim');
        $this->form_validation->set_rules('tu_en_time', 'lang:global_end_time', 'trim');
        $this->form_validation->set_rules('we_status', 'lang:global_status', 'trim');
        $this->form_validation->set_rules('we_st_rime', 'lang:global_start_time', 'trim');
        $this->form_validation->set_rules('we_en_time', 'lang:global_end_time', 'trim');
        $this->form_validation->set_rules('th_status', 'lang:global_status', 'trim');
        $this->form_validation->set_rules('th_st_rime', 'lang:global_start_time', 'trim');
        $this->form_validation->set_rules('th_en_time', 'lang:global_end_time', 'trim');
        $this->form_validation->set_rules('fr_status', 'lang:global_status', 'trim');
        $this->form_validation->set_rules('fr_st_rime', 'lang:global_start_time', 'trim');
        $this->form_validation->set_rules('fr_en_time', 'lang:global_end_time', 'trim');

        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {
            $this->{$this->model}->sa_status = $this->input->post('sa_status');
            $this->{$this->model}->sa_st_time = $this->input->post('sa_st_time');
            $this->{$this->model}->sa_en_time = $this->input->post('sa_en_time');
            $this->{$this->model}->su_status = $this->input->post('su_status');
            $this->{$this->model}->su_st_time = $this->input->post('su_st_time');
            $this->{$this->model}->su_en_time = $this->input->post('su_en_time');
            $this->{$this->model}->mo_status = $this->input->post('mo_status');
            $this->{$this->model}->mo_st_time = $this->input->post('mo_st_time');
            $this->{$this->model}->mo_en_time = $this->input->post('mo_en_time');
            $this->{$this->model}->tu_status = $this->input->post('tu_status');
            $this->{$this->model}->tu_st_time = $this->input->post('tu_st_time');
            $this->{$this->model}->tu_en_time = $this->input->post('tu_en_time');
            $this->{$this->model}->we_status = $this->input->post('we_status');
            $this->{$this->model}->we_st_time = $this->input->post('we_st_time');
            $this->{$this->model}->we_en_time = $this->input->post('we_en_time');
            $this->{$this->model}->th_status = $this->input->post('th_status');
            $this->{$this->model}->th_st_time = $this->input->post('th_st_time');
            $this->{$this->model}->th_en_time = $this->input->post('th_en_time');
            $this->{$this->model}->fr_status = $this->input->post('fr_status');
            $this->{$this->model}->fr_st_time = $this->input->post('fr_st_time');
            $this->{$this->model}->fr_en_time = $this->input->post('fr_en_time');
            $this->{$this->model}->save();
            redirect('admin/appointments/manage/1');
        }
    }


}
