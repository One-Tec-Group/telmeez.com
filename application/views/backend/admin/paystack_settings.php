<?php
$paystack_settings = $this->db->get_where('settings', array('key' => 'paystack_keys'))->row()->value;
$paystack = json_decode($paystack_settings);
?>
<div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <h4 class="header-title"><p><?php echo get_phrase('setup_paystack_settings'); ?></p></h4>
            <form class="" action="<?php echo site_url('addons/paystack/payment_settings'); ?>" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label><?php echo get_phrase('active'); ?></label>
                    <select class="form-control select2" data-toggle="select2" id = "paystack_active" name="paystack_active">
                        <option value="0" <?php if ($paystack[0]->active == 0) echo 'selected';?>> <?php echo get_phrase('no');?></option>
                        <option value="1" <?php if ($paystack[0]->active == 1) echo 'selected';?>> <?php echo get_phrase('yes');?></option>
                    </select>
                </div>

                <div class="form-group">
                    <label><?php echo get_phrase('test_mode'); ?></label>
                    <select class="form-control select2" data-toggle="select2" id = "testmode" name="testmode">
                        <option value="on" <?php if ($paystack[0]->testmode == 'on') echo 'selected';?>> <?php echo get_phrase('on');?></option>
                        <option value="off" <?php if ($paystack[0]->testmode == 'off') echo 'selected';?>> <?php echo get_phrase('off');?></option>
                    </select>
                </div>

                <div class="form-group">
                    <label><?php echo get_phrase('paystack_currency'); ?></label>
                    <select class="form-control select2" data-toggle="select2" id = "paystack_currency" name="paystack_currency" required>
                        <option value=""><?php echo get_phrase('select_paystack_currency'); ?></option>
                        <?php
                        $this->db->where('paystack_supported', 1);
                        $currencies = $this->db->get('currency')->result_array();
                        foreach ($currencies as $currency):?>
                        <option value="<?php echo $currency['code'];?>"
                            <?php if (get_settings('paystack_currency') == $currency['code'])echo 'selected';?>> <?php echo $currency['code'];?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="form-group">
                <label><?php echo get_phrase('test_public_key'); ?></label>
                <input type="text" name="public_key" class="form-control" value="<?php echo $paystack[0]->public_key;?>" required />
            </div>


            <div class="form-group">
                <label><?php echo get_phrase('live_public_key'); ?></label>
                <input type="text" name="public_live_key" class="form-control" value="<?php echo $paystack[0]->public_live_key;?>" required />
            </div>

            <div class="row justify-content-md-center">
                <div class="form-group col-md-6">
                    <button class="btn btn-block btn-primary" type="submit"><?php echo get_phrase('update_paystack_keys'); ?></button>
                </div>
            </div>
        </form>
    </div>
</div>
</div>