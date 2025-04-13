<?php

class Home extends CIF_Controller {

    public $layout = 'full';
    public $module = 'home';
    public $model = 'Projects_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index() {
        $data['testimonials'] = $this->db->get('testimonials')->result();
        $data['clients'] = $this->db->get('clients')->result();
        $data['experiences'] = $this->db->order_by('ISNULL(current), to_date DESC, from_date DESC')->get('experiences')->result();
        $data['education'] = $this->db->order_by('ISNULL(current), to_date DESC, from_date DESC')->get('education')->result();
        $data['services'] = $this->db->get('services')->result();
        $data['skills_cats'] = $this->db->get('skills_categories')->result();
        $data['skills'] = $this->db->get('skills')->result();
        $data['appointments'] = $this->db->get('appointments')->result();
        $data['pricing_plans'] = $this->db->where('display_plan', '1')->get('pricing_plans')->result();

        $data['projects_categories'] = $this->db->select('projects_categories.*, (SELECT COUNT(*) FROM projects where projects_categories.project_category_id = projects.project_category_id) as count')->order_by('title')->get('projects_categories')->result();
        $data['projects_count'] = $this->db
                        ->select("COUNT(*) AS projects_count")
                        ->get('projects')->row()->projects_count;
        $data['projects'] = $this->db
                        ->join('projects_categories', 'projects_categories.project_category_id = projects.project_category_id', 'inner')
                        ->select('projects.*, projects_categories.title as category_project')
                        ->where('display', '1')
                        ->order_by('project_id', 'desc')
                        ->get('projects')->result();
        $data['posts'] = $this->db
                        ->join('blog_categories', 'blog_categories.blog_category_id = blog.blog_category_id', 'inner')
                        ->select('blog.*, blog_categories.title as post_category')
                        ->where('display', '1')
                        ->limit(9)
                        ->order_by('blog_id', 'desc')
                        ->get('blog')->result();
        $data['success'] = FALSE;
        //CONTACT
        $this->load->library('form_validation');
        $this->form_validation->set_rules('name', 'lang:global_Name', 'trim|required');
        $this->form_validation->set_rules('email', 'lang:global_email', 'trim|required|valid_email');
        $this->form_validation->set_rules('message', 'lang:global_Message', 'trim|required');
        $this->form_validation->set_rules('g-recaptcha-response', 'lang:Captcha', 'trim|required|callback_recaptcha');

        if ($this->form_validation->run() == TRUE) {
            $_data = [
                'created' => date('Y-m-d H:i:s'),
                'name' => $this->input->post('name'),
                'email' => $this->input->post('email'),
                'message' => $this->input->post('message')
            ];
            $this->db->insert('messages', $_data);
            $id = $this->db->insert_id();
            //SEND EMAIL
            @mail(config('webmaster_email'), config('title'), ""
                            . "Full Name: $_POST[name]\n"
                            . "Email: $_POST[email]\n"
                            . "Message: $_POST[message]\n"
                            . "Message_url: " . site_url("admin/messages/view/$id"));
            $data['success'] = true;
        }

        $this->load->view($this->module, $data);
    }
 
    public function recaptcha($str = '') {
//        $recaptchaResponse = trim($this->input->post('g-recaptcha-response'));
        $google_url = "https://www.google.com/recaptcha/api/siteverify";
        $secret = config("google_secret_key");
        $ip = $_SERVER['REMOTE_ADDR'];
        $url = $google_url . "?secret=" . $secret . "&response=" . $str . "&remoteip=" . $ip;
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_TIMEOUT, 10);
        curl_setopt($curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.16) Gecko/20110319 Firefox/3.6.16");
        $output = curl_exec($curl);
        curl_close($curl);
        $status = json_decode($output, true);

        //reCaptcha success check
//        if ($status['success']) {
//            return TRUE;
//        } else {
//           $this->form_validation->set_message('recaptcha', 'The reCAPTCHA field is telling me that you are a robot. Shall we give it another try?');
//      return FALSE;
//        }
    }
}
