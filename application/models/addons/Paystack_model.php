<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paystack_model extends CI_Model {

	function __construct()
	{
	    parent::__construct();
 	}


 	function get_paystack_supported_currencies()
	  {
	    $this->db->where('paystack_supported', 1);
	    return $this->db->get('currency')->result_array();
	  }

	public function update_paystack_settings()
	  {
	    // update paystack keys
	    $paystack_info = array();

	    $paystack['active'] = $this->input->post('paystack_active');
	    $paystack['testmode'] = $this->input->post('testmode');
	    $paystack['public_key'] = $this->input->post('public_key');
	    $paystack['public_live_key'] = $this->input->post('public_live_key');

	    array_push($paystack_info, $paystack);

	    $data['value']    =   json_encode($paystack_info);
	    $this->db->where('key', 'paystack_keys');
	    $this->db->update('settings', $data);

	    $data['value'] = html_escape($this->input->post('paystack_currency'));
	    $this->db->where('key', 'paystack_currency');
	    $this->db->update('settings', $data);
	  }
}