<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paystack extends CI_Controller {

  public function __construct()
  {
      parent::__construct();
      // Your own constructor code
      $this->load->database();
      $this->load->library('session');
      $this->load->model('addons/paystack_model');

      if (!$this->session->userdata('cart_items')) {
          $this->session->set_userdata('cart_items', array());
      }
  }

  public function payment_settings($param1 = "") {
    if ($this->session->userdata('admin_login') != true) {
      redirect(site_url('login'), 'refresh');
    }
    $this->paystack_model->update_paystack_settings();
    redirect(site_url('admin/payment_settings'), 'refresh');

  }

  // PAYPAL CHECKOUT ACTIONS
    public function paystack_payment($user_id = "", $amount_paid = "", $paymentID = "", $paymentToken = "", $payerID = "", $payment_request_mobile = "") {
        // $paystack_keys = get_settings('paystack_keys');
        // $values = json_decode($paystack_keys);

        // if ($values[0]->testmode == 'on') {
        //     $public_key = $values[0]->public_key;
        // } else {
        //     $public_key = $values[0]->public_live_key;
        // }

        //THIS IS HOW I CHECKED THE STRIPE PAYMENT STATUS
        // $status = $this->paystack_model->paystack_payment($token_id, $user_id, $amount_paid, $secret_key);
        // if (!$status) {
        //     $this->session->set_flashdata('error_message', get_phrase('an_error_occurred_during_payment'));
        //     redirect('home', 'refresh');
        // }

        $this->crud_model->enrol_student($user_id);
        $this->crud_model->course_purchase($user_id, 'paystack', $amount_paid);
        $this->email_model->course_purchase_notification($user_id, 'paystack', $amount_paid);
        $this->session->set_flashdata('flash_message', get_phrase('payment_successfully_done'));

        $this->session->set_userdata('cart_items', array());
        redirect('home/my_courses', 'refresh');

    }



}