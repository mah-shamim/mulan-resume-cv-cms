<!-- Main Content Pages -->
<div class="content-pages">
    <!-- Subpages -->
    <div class="sub-home-pages">
        <!-- Appointment Subpage -->
        <section id="appointment" class="sub-page">
            <div class="sub-page-inner">
                <div class="section-title">
                    <div class="main-title">
                        <div class="title-main-page">
                            <h4><?php echo lang('global_appointments') ?></h4>
                            <p><?php echo lang('global_Check_my_availability_and request_an_appointment') ?></p>
                        </div>
                    </div>
                </div>
                <div class="row contact-form pb-30">
                    <?php if ($appointments): ?>
                        <div class="col-sm-12 col-md-6">
                            <div class="section-head third-head">
                                <h4>
                                    <span><?php echo lang('global_my_appointments') ?></span>
                                    <?php echo lang('global_Before_booking_an_appointment_please_check_my_availability') ?>                  
                                </h4>
                            </div>
                            <div class="list-appointments">
                                <ul>
                                    <?php foreach ($appointments as $item): ?>
                                        <?php if ($item->sa_status == 1): ?>
                                            <li class="available"><i class="fa fa-check"></i> <?php echo lang('Saturday') ?>:  <span class="text-muted"><?php echo $item->sa_st_time ?> - <?php echo $item->sa_en_time ?></span></li>
                                        <?php else: ?>
                                            <li class="not-available"><i class="fa fa-times"></i> <?php echo lang('Saturday') ?>:  <span class="text-muted"><?php echo lang('global_not_available') ?></span> </li>
                                        <?php endif ?>
                                        <?php if ($item->su_status == 1): ?>
                                            <li class="available"><i class="fa fa-check"></i> <?php echo lang('Sunday') ?>:  <span class="text-muted"><?php echo $item->su_st_time ?> - <?php echo $item->su_en_time ?></span>  </li>
                                        <?php else: ?>
                                            <li class=" not-available"><i class="fa fa-times"></i> <?php echo lang('Sunday') ?>:  <span class="text-muted"><?php echo lang('global_not_available') ?></span>  </li>
                                        <?php endif ?>
                                        <?php if ($item->mo_status == 1): ?>
                                            <li class="available"><i class="fa fa-check"></i> <?php echo lang('Monday') ?>:  <span class="text-muted"><?php echo $item->mo_st_time ?> - <?php echo $item->mo_en_time ?></span>  </li>
                                        <?php else: ?>
                                            <li class="not-available"><i class="fa fa-times"></i> <?php echo lang('Monday') ?>:  <span class="text-muted"><?php echo lang('global_not_available') ?></span>  </li>
                                        <?php endif ?>
                                        <?php if ($item->tu_status == 1): ?>
                                            <li class="available"><i class="fa fa-check"></i> <?php echo lang('Tuesday') ?>:  <span class="text-muted"><?php echo $item->tu_st_time ?> - <?php echo $item->tu_en_time ?></span>  </li>
                                        <?php else: ?>
                                            <li class="not-available"><i class="fa fa-times"></i> <?php echo lang('Tuesday') ?>:  <span class="text-muted"><?php echo lang('global_not_available') ?></span>  </li>
                                        <?php endif ?>
                                        <?php if ($item->we_status == 1): ?>
                                            <li class="available"> <i class="fa fa-check"></i> <?php echo lang('Wednesday') ?>:  <span class="text-muted"><?php echo $item->we_st_time ?> - <?php echo $item->we_en_time ?></span>  </li>
                                        <?php else: ?>
                                            <li class="not-available"><i class="fa fa-times"></i> <?php echo lang('Wednesday') ?>:  <span class="text-muted"><?php echo lang('global_not_available') ?></span>  </li>
                                        <?php endif ?>
                                        <?php if ($item->th_status == 1): ?>
                                            <li class="available"> <i class="fa fa-check"></i> <?php echo lang('Thursday') ?>:  <span class="text-muted"><?php echo $item->th_st_time ?> - <?php echo $item->th_en_time ?></span>  </li>
                                        <?php else: ?>
                                            <li class="not-available"><i class="fa fa-times"></i> <?php echo lang('Thursday') ?>:  <span class="text-muted"><?php echo lang('global_not_available') ?></span>  </li>
                                        <?php endif ?>
                                        <?php if ($item->fr_status == 1): ?>
                                            <li class="available"><i class="fa fa-check"></i> <?php echo lang('Friday') ?>:  <span class="text-muted"><?php echo $item->fr_st_time ?> - <?php echo $item->fr_en_time ?></span>  </li>
                                        <?php else: ?>
                                            <li class="not-available"><i class="fa fa-times"></i> <?php echo lang('Friday') ?>:  <span class="text-muted"><?php echo lang('global_not_available') ?></span> </li>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                </ul>
                            </div>
                        </div>
                    <?php endif ?>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-contact-me">
                            <div id="show_contact_msg" class="row">
                                <?php if ($success) : ?>
                                    <div class="col-md-12">
                                        <div class="alert alert-success">
                                            <i class="fa fa-check-circle" aria-hidden="true"></i>  
                                            <?php echo lang('global_Thank_you_very_much_We_will_notify_you_when_we_lunch') ?>
                                        </div>
                                    </div>
                                <?php endif ?>
                                <?php if (validation_errors()) : ?>
                                    <div class="col-md-12">
                                        <div class="alert alert-danger">
                                            <i class="fa fa-times-circle" aria-hidden="true"></i> 
                                            <?php echo validation_errors() ?>
                                        </div>
                                    </div>
                                <?php endif ?>
                            </div>
                            <form method="post">
                                <div class="input-icon">
                                    <i class="lnr lnr-pencil"></i>
                                    <input name="subject" type="text" placeholder="<?php echo lang('global_subject') ?>" required autocomplete="off">
                                </div>
                                <div class="input-icon">
                                    <i class="lnr lnr-user"></i>
                                    <input name="name" type="text" placeholder="<?php echo lang('global_Name') ?>"  autocomplete="off">
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="input-icon">
                                            <i class="lnr lnr-envelope"></i>
                                            <input name="email" type="email" placeholder="<?php echo lang('global_email') ?>" required autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-icon">
                                            <i class="lnr lnr-phone-handset"></i>
                                            <input name="phone" type="text" placeholder="<?php echo lang('global_phone') ?>"  autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="input-icon">
                                            <i class="lnr lnr-calendar-full"></i>
                                            <input name="date" id="app_date" type="text" data-lock="from" data-init-set="false"  <?php if (config('language') == 'english'): ?>data-lang="en"<?php elseif (config('language') == 'arabic'): ?>data-lang="ar" <?php endif ?> data-large-mode="true" data-large-default="true" data-min-year="2021" data-max-year="2021" placeholder="<?php echo lang('global_date') ?>" required autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-icon">
                                            <i class="lnr lnr-clock"></i>
                                            <input name="time" id="app_time" type="text" placeholder="<?php echo lang('global_time') ?>" required autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                                <div class="input-icon">
                                    <i class="lnr lnr-bubble message-icon"></i>
                                    <textarea name="message" placeholder="<?php echo lang('global_Message') ?>" rows="4"></textarea>
                                </div>
                                <input class="bt-submit" type="submit" value="<?php echo lang('global_booking_appointment') ?>">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Appointment Subpage -->
    </div>
    <!-- /Page changer wrapper -->
</div>
<!-- /Main Content -->