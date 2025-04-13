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
                <strong> <?php echo lang('global_messages') ?> </strong>
            </li>
        </ol>

    </div>

</div>
<!-- Admin Table-->
<div class="panel panel-default">

    <section class="mailbox-env">
        <div class="row">
            <div class="col-sm-12 mailbox-right">

                <div class="mail-single">
                    <div class="mail-single-header">
                        <h2>
                            <?php echo $item->subject ?>
                            <a href="#" class="go-back">
                                <i class="fa fa-history"></i> <?php echo lang('global_created') ?>:  <?php echo $item->created ?>
                            </a>
                        </h2>
                    </div>
                    <div class="mail-single-info">
                        <div class="mail-single-info-user">
                            <ul class="list-inline">
                                <li class="list-inline-item"><i class="fa fa-user"></i> <?php echo $item->name ?></li>
                                <li class="list-inline-item"><i class="fa fa-phone"></i> <?php echo $item->phone ?></li>
                                <li class="list-inline-item"><i class="fa fa-envelope-o"></i> <?php echo $item->email ?></li>
                                <li class="list-inline-item"><i class="fa fa-calendar"></i> <?php echo $item->date ?> - <?php echo $item->time ?></li>
                            </ul>  
                        </div>
                    </div>
                    <div class="mail-single-body">
                        <p><?php echo nl2br($item->message) ?></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

