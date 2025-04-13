<div class="page-title">
    <div class="breadcrumb-env">
        <ul class="user-info-menu left-links list-inline list-unstyled">
            <li class="hidden-sm hidden-xs">
                <a href="#" data-toggle="sidebar">
                    <i class="fa-bars"></i>
                </a>
            </li>
        </ul>
        <ol class="breadcrumb bc-1" >
            <li>
                <a href="<?php echo site_url('admin/dashboard') ?>"><i class="fa-home"></i><?php echo lang('global_home') ?></a>
            </li>
            <li class="active">
                <strong> <?php echo lang('global_appointments') ?></strong>
            </li>
        </ol>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo lang('global_appointments') ?> </h3>
    </div>
    <div class="panel-body">
        <?php if (validation_errors()) : ?>
            <div class="col-md-12">
                <div class="alert alert-danger">
                    <?php echo validation_errors() ?>
                </div>
            </div>
        <?php endif ?>
        <form role="form" class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <div class="col-sm-2">
                    <?php echo form_checkbox('sa_status', 1, set_value('sa_status', $item->sa_status), "id='saturday'") ?> 
                    <label for="saturday"><?php echo lang('Saturday') ?></label> 
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_start_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('sa_st_time', set_value('sa_st_time', $item->sa_st_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_end_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('sa_en_time', set_value('sa_en_time', $item->sa_en_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-2">
                    <?php echo form_checkbox('su_status', 1, set_value('su_status', $item->su_status), "id='sunday'") ?> 
                    <label for="sunday"><?php echo lang('Sunday') ?></label> 
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_start_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('su_st_time', set_value('su_st_time', $item->su_st_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_end_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('su_en_time', set_value('su_en_time', $item->su_en_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-2">
                    <?php echo form_checkbox('mo_status', 1, set_value('mo_status', $item->mo_status), "id='Monday'") ?> 
                    <label for="Monday"><?php echo lang('Monday') ?></label> 
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_start_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('mo_st_time', set_value('mo_st_time', $item->mo_st_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_end_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('mo_en_time', set_value('mo_en_time', $item->mo_en_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-2">
                    <?php echo form_checkbox('tu_status', 1, set_value('tu_status', $item->tu_status), "id='Tuesday'") ?> 
                    <label for="Tuesday"><?php echo lang('Tuesday') ?></label> 
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_start_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('tu_st_time', set_value('tu_st_time', $item->tu_st_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_end_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('tu_en_time', set_value('tu_en_time', $item->tu_en_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-2">
                    <?php echo form_checkbox('we_status', 1, set_value('we_status', $item->we_status), "id='Wednesday'") ?> 
                    <label for="Wednesday"><?php echo lang('Wednesday') ?></label> 
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_start_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('we_st_time', set_value('we_st_time', $item->we_st_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_end_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('we_en_time', set_value('we_en_time', $item->we_en_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-2">
                    <?php echo form_checkbox('th_status', 1, set_value('th_status', $item->th_status), "id='Thursday'") ?> 
                    <label for="Thursday"><?php echo lang('Thursday') ?></label> 
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_start_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('th_st_time', set_value('th_st_time', $item->th_st_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_end_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('th_en_time', set_value('th_en_time', $item->th_en_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-2">
                    <?php echo form_checkbox('fr_status', 1, set_value('fr_status', $item->fr_status), "id='Friday'") ?> 
                    <label for="Friday"><?php echo lang('Friday') ?></label> 
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_start_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('fr_st_time', set_value('fr_st_time', $item->fr_st_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
                <div class="col-sm-2 col-xs-6 text-right">
                    <label class="control-label" for="field-1"><?php echo lang('global_end_time') ?></label>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="linecons-clock"></i>
                        </div>
                        <?php echo form_input('fr_en_time', set_value('fr_en_time', $item->fr_en_time), 'class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-show-meridian="true" data-minute-step="5" data-second-step="5"') ?>
                    </div>
                </div>
            </div>
 <div class="form-group-separator"></div>
            <div class="form-group">
                <div class="col-sm-12 text-right">
                    <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                    <a href="<?php echo site_url('admin/dashboard'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>
                </div>
            </div>
        </form>
    </div>
</div>
