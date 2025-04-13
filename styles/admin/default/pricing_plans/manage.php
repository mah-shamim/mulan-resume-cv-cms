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
                <strong><?php echo lang('global_pricing_plan') ?></strong>
            </li>
        </ol>

    </div>

</div>
<!-- Admin Table-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo lang('global_pricing_plan') ?></h3>
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
                <label class="col-sm-2 control-label"><?php echo lang('display_plan') ?> <span class="required">*</span> </label>
                <div class="col-sm-10">
                    <input type="hidden" name="display_plan" value="0" />
                    <input type="checkbox" value="1" name="display_plan" <?php if (set_value('display_plan', $item->display_plan) == '1'): ?>checked="checked" <?php endif; ?> class="iswitch iswitch-blue"> 
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('plan_name') ?> <span class="required">*</span> </label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" placeholder="<?php echo lang('plan_name') ?>" name="plan_name"
                           value="<?php echo set_value('plan_name', $item->plan_name) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('plan_price') ?> <span class="required">*</span> </label>

                <div class="col-sm-2">
                    <input type="text" class="form-control" placeholder="<?php echo lang('plan_price') ?>" name="plan_price"
                           value="<?php echo set_value('plan_price', $item->plan_price) ?>">
                </div>
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('price_duration') ?> <span class="required">*</span> </label>

                <div class="col-sm-2">
                    <input type="text" class="form-control" placeholder="<?php echo lang('price_duration') ?>" name="price_duration"
                           value="<?php echo set_value('price_duration', $item->price_duration) ?>">
                </div>
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('plan_currency') ?> <span class="required">*</span> </label>

                <div class="col-sm-2">
                    <input type="text" class="form-control" placeholder="<?php echo lang('plan_currency') ?>" name="plan_currency"
                           value="<?php echo set_value('plan_currency', $item->plan_currency) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('featured_item') ?></label>

                <div class="col-sm-2">
                    <input type="hidden" name="is_featured" value="0" />
                    <input type="checkbox" value="1" name="is_featured" <?php if (set_value('is_featured', $item->is_featured) == '1'): ?>checked="checked" <?php endif; ?> class="iswitch iswitch-blue"> 
                    <?php echo lang('is_featured') ?>
                </div>
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('featured_comment') ?> </label>

                <div class="col-sm-6">
                    <input type="text" class="form-control" placeholder="<?php echo lang('featured_comment') ?>" name="featured_comment"
                           value="<?php echo set_value('featured_comment', $item->featured_comment) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('features') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <textarea class="form-control" placeholder="<?php echo lang('features') ?>" name="features"><?php echo set_value('features', $item->features) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>


            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('plan_icon') ?> <span class="required">*</span></label>

                <div class="col-sm-8">
                    <input class="form-control" type="file" name="icon" >
                </div>
                <div class="col-sm-2">
                    <?php if ($item->icon): ?>
                        <img src="<?php echo base_url() ?>cdn/pricing_plans/<?php echo $item->icon ?>" class="img-inline userpic-32" width="40"/>
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                    <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                    <a href="<?php echo site_url('admin/pricing_plans'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>
                </div>
            </div>
        </form>
    </div>
</div>

