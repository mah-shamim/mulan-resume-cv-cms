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
                <a href="<?php echo site_url('admin/dashboard') ?>"><i class="fa-home"></i> <?php echo lang('global_home') ?></a>
            </li>
            <li class="active">
                <strong><?php echo lang('settings_unit_title') ?></strong>
            </li>
        </ol>
    </div>
</div>

<div class="panel-body">
    <div class="row">
        <?php echo form_open_multipart(false, 'class="form-horizontal" data-validate="parsley"') ?>
        <?php if (validation_errors()): ?>
            <div class="error"><?php echo validation_errors() ?></div>
        <?php endif ?> 

        <div class="col-md-12">

            <ul class="nav nav-tabs nav-tabs-justified">
                <li class="active">
                    <a href="#web-setting" data-toggle="tab">
                        <span class="visible"><i class="fa fa-home"></i></span>
                        <span class="hidden-xs"><?php echo lang('settings_web_settings') ?></span>
                    </a>
                </li>
                <li>
                    <a href="#general-setting" data-toggle="tab">
                        <span class="visible"><i class="fa fa-cogs"></i></span>
                        <span class="hidden-xs"><?php echo lang('settings_general_settings') ?></span>
                    </a>
                </li>
                <li>
                    <a href="#api_keys" data-toggle="tab">
                        <span class="visible"><i class="fa fa-key"></i></span>
                        <span class="hidden-xs"><?php echo lang('settings_api_keys') ?></span>
                    </a>
                </li>
                <li>
                    <a href="#seo" data-toggle="tab">
                        <span class="visible"><i class="fa fa-bar-chart"></i></span>
                        <span class="hidden-xs"><?php echo lang('settings_seo') ?></span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="web-setting">
                    <div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('global_language') ?></label>
                            <div class="col-sm-4">
                                <select class="form-control time" name="setting[language]">
                                    <option value="english" <?php if ($item->language == 'english'): ?>selected<?php endif; ?>><?php echo lang('global_english') ?></option>
                                    <option value="arabic" <?php if ($item->language == 'arabic'): ?>selected<?php endif; ?>><?php echo lang('global_arabic') ?></option>
                                </select>
                            </div>
                            <label class="col-sm-2 control-label"><?php echo lang('direction') ?></label>
                            <div class="col-sm-4">
                                <select class="form-control time" name="setting[direction]">
                                    <option value="ltr" <?php if ($item->direction == 'ltr'): ?>selected<?php endif; ?>><?php echo lang('ltr') ?></option>
                                    <option value="rtl" <?php if ($item->direction == 'rtl'): ?>selected<?php endif; ?>><?php echo lang('rtl') ?></option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('global_layout_color') ?></label>
                            <div class="col-sm-10">
                                <div class="vertical-top">
                                    <button class="btn btn-icon btn-default choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="default" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'default'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'default'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>
                                    <button class="btn btn-icon btn-blue choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="blue" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'blue'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'blue'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>

                                    <button class="btn btn-icon btn-red choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="red" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'red'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'red'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>

                                    <button class="btn btn-icon btn-purple choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="purple" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'purple'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'purple'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>

                                    <button class="btn btn-icon btn-success choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="green" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'green'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'green'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>
                                    <button class="btn btn-icon btn-teal choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="teal" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'teal'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'teal'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>

                                    <button class="btn btn-icon btn-orange choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="orange" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'orange'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'orange'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>
                                    <button class="btn btn-icon btn-yellow choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="yellow" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'yellow'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'yellow'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>

                                    <button class="btn btn-icon btn-pinky choose-color">
                                        <label class="radio-inline">
                                            <input type="radio" value="pink" name="setting[color]"
                                                   <?php if (set_value('setting[color]', $item->color) == 'pink'): ?>checked="checked"<?php endif; ?>>
                                        </label>
                                        <?php if ($item->color == 'pink'): ?>
                                            <i class="fa-check"></i>
                                        <?php endif ?>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('display_dark_mode') ?></label>
                            <div class="col-sm-10">
                                    <input type="hidden" name="setting[display_dark_mode]" value="0" />
                                    <input type="checkbox" value="1" name="setting[display_dark_mode]" <?php if (set_value('setting[display_dark_mode]', $item->display_dark_mode) == '1'): ?>checked="checked" <?php endif; ?> class="iswitch iswitch-primary"> 
                            </div>
                        </div>
                        <div class="form-group-separator"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('settings_title') ?></label>
                            <div class="col-sm-10">
                                <?php echo form_input('setting[title]', set_value('setting[title]', $item->title), 'class="bg-focus form-control" data-required="true"') ?>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('settings_webmaster_email') ?></label>
                            <div class="col-sm-10">
                                <?php echo form_input('setting[webmaster_email]', set_value('setting[webmaster_email]', $item->webmaster_email), 'class="bg-focus form-control" data-required="true"') ?>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('settings_favicon') ?> </label>
                            <div class="col-sm-8">
                                <input type="file" class="form-control" name="favicon">
                            </div>
                            <div class="col-sm-2">
                                <?php if (config('favicon')): ?>
                                    <img src="<?php echo base_url() ?>cdn/settings/<?php echo config('favicon') ?>" class="img-inline userpic-32" width="40"/>
                                <?php endif ?>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('global_home_bg') ?> </label>
                            <div class="col-sm-8">
                                <input type="file" class="form-control" name="home_bg">
                            </div>
                            <div class="col-sm-2">
                                <?php if (config('home_bg')): ?>
                                    <img src="<?php echo base_url() ?>cdn/settings/<?php echo config('home_bg') ?>" class="img-inline userpic-32" width="40"/>
                                <?php endif ?>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('global_about_bg') ?> </label>
                            <div class="col-sm-8">
                                <input type="file" class="form-control" name="about_bg">
                            </div>
                            <div class="col-sm-2">
                                <?php if (config('about_bg')): ?>
                                    <img src="<?php echo base_url() ?>cdn/settings/<?php echo config('about_bg') ?>" class="img-inline userpic-32" width="40"/>
                                <?php endif ?>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo lang('global_contact_bg') ?> </label>
                            <div class="col-sm-8">
                                <input type="file" class="form-control" name="contact_bg">
                            </div>
                            <div class="col-sm-2">
                                <?php if (config('contact_bg')): ?>
                                    <img src="<?php echo base_url() ?>cdn/settings/<?php echo config('contact_bg') ?>" class="img-inline userpic-32" width="40"/>
                                <?php endif ?>
                            </div>
                        </div>
                        <div class="form-group-separator"></div>
                    </div>
                </div>
                <div class="tab-pane" id="general-setting">
                    <div class="form-group">
                        <label class="col-sm-12"><strong><?php echo lang('settings_display_sections') ?></strong></label>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_blog') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_blog]"
                                           <?php if (set_value('setting[display_blog]', $item->display_blog) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_blog]"
                                           <?php if (set_value('setting[display_blog]', $item->display_blog) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_clients') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_clients]"
                                           <?php if (set_value('setting[display_clients]', $item->display_clients) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_clients]"
                                           <?php if (set_value('setting[display_clients]', $item->display_clients) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_contact_form') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_contact_form]"
                                           <?php if (set_value('setting[display_contact_form]', $item->display_contact_form) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_contact_form]"
                                           <?php if (set_value('setting[display_contact_form]', $item->display_contact_form) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_portfolio') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_portfolio]"
                                           <?php if (set_value('setting[display_portfolio]', $item->display_portfolio) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_portfolio]"
                                           <?php if (set_value('setting[display_portfolio]', $item->display_portfolio) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_resume') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_resume]"
                                           <?php if (set_value('setting[display_resume]', $item->display_resume) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_resume]"
                                           <?php if (set_value('setting[display_resume]', $item->display_resume) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_services') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_services]"
                                           <?php if (set_value('setting[display_services]', $item->display_services) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_services]"
                                           <?php if (set_value('setting[display_services]', $item->display_services) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_testimonials') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_testimonials]"
                                           <?php if (set_value('setting[display_testimonials]', $item->display_testimonials) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_testimonials]"
                                           <?php if (set_value('setting[display_testimonials]', $item->display_testimonials) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_fun_facts') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_fun_facts]"
                                           <?php if (set_value('setting[display_fun_facts]', $item->display_fun_facts) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_fun_facts]"
                                           <?php if (set_value('setting[display_fun_facts]', $item->display_fun_facts) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_appointments') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_appointments]"
                                           <?php if (set_value('setting[display_appointments]', $item->display_appointments) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_appointments]"
                                           <?php if (set_value('setting[display_appointments]', $item->display_appointments) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('display_pricing_plans') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[display_pricing_plans]"
                                           <?php if (set_value('setting[display_pricing_plans]', $item->display_pricing_plans) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[display_pricing_plans]"
                                           <?php if (set_value('setting[display_pricing_plans]', $item->display_pricing_plans) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-12"><strong><?php echo lang('settings_Blog_page_widgets_appearance') ?></strong></label>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_search_to_appear') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[blog_search_wedgit]"
                                           <?php if (set_value('setting[blog_search_wedgit]', $item->blog_search_wedgit) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[blog_search_wedgit]"
                                           <?php if (set_value('setting[blog_search_wedgit]', $item->blog_search_wedgit) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_categories') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[blog_categories_widget]"
                                           <?php if (set_value('setting[blog_categories_widget]', $item->blog_categories_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[blog_categories_widget]"
                                           <?php if (set_value('setting[blog_categories_widget]', $item->blog_categories_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_latest') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[blog_latest_widget]"
                                           <?php if (set_value('setting[blog_latest_widget]', $item->blog_latest_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[blog_latest_widget]"
                                           <?php if (set_value('setting[blog_latest_widget]', $item->blog_latest_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_popular') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[blog_popular_widget]"
                                           <?php if (set_value('setting[blog_popular_widget]', $item->blog_popular_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[blog_popular_widget]"
                                           <?php if (set_value('setting[blog_popular_widget]', $item->blog_popular_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-12"><strong><?php echo lang('settings_Post_page_widgets_appearance') ?></strong></label>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_search_to_appear') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[post_search_widget]"
                                           <?php if (set_value('setting[post_search_widget]', $item->post_search_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[post_search_widget]"
                                           <?php if (set_value('setting[post_search_widget]', $item->post_search_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_latest') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[post_latest_widget]"
                                           <?php if (set_value('setting[post_latest_widget]', $item->post_latest_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[post_latest_widget]"
                                           <?php if (set_value('setting[post_latest_widget]', $item->post_latest_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_related') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[post_related_widget]"
                                           <?php if (set_value('setting[post_related_widget]', $item->post_related_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[post_related_widget]"
                                           <?php if (set_value('setting[post_related_widget]', $item->post_related_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_blog_allow_tags') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[post_tags_widget]"
                                           <?php if (set_value('setting[post_tags_widget]', $item->post_tags_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[post_tags_widget]"
                                           <?php if (set_value('setting[post_tags_widget]', $item->post_tags_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_comments') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[blog_comments_widget]"
                                           <?php if (set_value('setting[blog_comments_widget]', $item->blog_comments_widget) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[blog_comments_widget]"
                                           <?php if (set_value('setting[blog_comments_widget]', $item->blog_comments_widget) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-12"><strong><?php echo lang('settings_project_page_widgets_appearance') ?></strong></label>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_portfolio_allow_related') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[portfolio_related]"
                                           <?php if (set_value('setting[portfolio_related]', $item->portfolio_related) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[portfolio_related]"
                                           <?php if (set_value('setting[portfolio_related]', $item->portfolio_related) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4"><?php echo lang('settings_comments') ?></label>
                        <div class="col-sm-8">
                            <p>
                                <label class="radio-inline">
                                    <input type="radio" value="1" name="setting[portfolio_comments]"
                                           <?php if (set_value('setting[portfolio_comments]', $item->portfolio_comments) == '1'): ?>checked="checked"<?php endif; ?>>
                                           <?php echo lang('global_yes') ?>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="0" name="setting[portfolio_comments]"
                                           <?php if (set_value('setting[portfolio_comments]', $item->portfolio_comments) == '0'): ?>checked="checked"<?php endif; ?>>  
                                           <?php echo lang('global_no') ?>
                                </label>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="api_keys">
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('global_google_map_key') ?></label>
                        <div class="col-sm-10">
                            <?php echo form_input('setting[map_key]', set_value('setting[map_key]', $item->map_key), 'class="bg-focus form-control"') ?>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('google_analytics_id') ?></label>
                        <div class="col-sm-10">
                            <?php echo form_input('setting[google_analytics_id]', set_value('setting[google_analytics_id]', $item->google_analytics_id), 'class="bg-focus form-control"') ?>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('global_google_Recaptcha_site_key') ?></label>
                        <div class="col-sm-10">
                            <?php echo form_input('setting[google_site_key]', set_value('setting[google_site_key]', $item->google_site_key), 'class="bg-focus form-control"') ?>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('global_google_Recaptcha_secret_key') ?></label>
                        <div class="col-sm-10">
                            <?php echo form_input('setting[google_secret_key]', set_value('setting[google_secret_key]', $item->google_secret_key), 'class="bg-focus form-control"') ?>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('script_chat') ?></label>
                        <div class="col-sm-10">
                            <div class="margin-bottom-10">
                                <input type="hidden" name="setting[display_crisp]" value="0" />
                                <input type="checkbox" value="1" name="setting[display_crisp]" <?php if (set_value('setting[display_crisp]', $item->display_crisp) == '1'): ?>checked="checked" <?php endif; ?>> 
                                <?php echo lang('display_script_chat') ?>
                            </div>
                            <div><?php echo form_input('setting[crisp_id]', set_value('setting[crisp_id]', $item->crisp_id), 'class="bg-focus form-control" placeholder="Crisp ID"') ?></div>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('disqus_comments') ?></label>
                        <div class="col-sm-10">
                            <div class="margin-bottom-10">
                                <input type="hidden" name="setting[display_disqus]" value="0" />
                                <input type="checkbox" value="1" name="setting[display_disqus]" <?php if (set_value('setting[display_disqus]', $item->display_disqus) == '1'): ?>checked="checked" <?php endif; ?>> 
                                <?php echo lang('display_disqus_comments') ?>
                            </div>
                            <div><?php echo form_input('setting[disqus_username]', set_value('setting[disqus_username]', $item->disqus_username), 'class="bg-focus form-control" data-required="true" id="disqus_username" placeholder="ex. mulancms"') ?></div>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                </div>
                <div class="tab-pane" id="seo">
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('settings_meta_keywords') ?></label>
                        <div class="compose-message-editor col-sm-10">
                            <textarea class="form-control" name="setting[meta_keywords]"><?php echo set_value('setting[meta_keywords]', $item->meta_keywords) ?></textarea>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('settings_meta_description') ?></label>
                        <div class="compose-message-editor col-sm-10">
                            <textarea class="form-control" name="setting[meta_description]"><?php echo set_value('setting[meta_description]', $item->meta_description) ?></textarea>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('settings_meta_robots') ?></label>
                        <div class="compose-message-editor col-sm-10">
                            <textarea class="form-control" name="setting[meta_robots]"><?php echo set_value('setting[meta_robots]', $item->meta_robots) ?></textarea>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo lang('settings_meta_twitter_site') ?></label>
                        <div class="compose-message-editor col-sm-10">
                            <textarea class="form-control" name="setting[meta_twitter_site]"><?php echo set_value('setting[meta_twitter_site]', $item->meta_twitter_site) ?></textarea>
                        </div>
                    </div>
                    <div class="form-group-separator"></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>

                    <div class="col-sm-10">
                        <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                        <a href="<?php echo site_url('admin/settings'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>
                    </div>
                </div>
            </div>
        </div>
        <?php echo form_close() ?>
    </div>
</div>

