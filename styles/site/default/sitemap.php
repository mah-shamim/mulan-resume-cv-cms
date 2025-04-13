<?php echo '<?xml version="1.0" encoding="UTF-8" ?>' ?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc><?php site_url(); ?></loc> 
        <priority>1.0</priority>
    </url>

    <url>
        <loc><?php echo site_url() ?></loc>
        <priority>0.5</priority>
    </url>
    <url>
        <loc><?php echo base_url() ?>appointments</loc>
        <priority>0.5</priority>
    </url>
    <?php foreach ($projects as $item) { ?>
        <url>
            <loc><?php echo site_url('project/' . $item->project_id . '-' . sanitize($item->title)) ?></loc>
            <priority>0.5</priority>
        </url>
    <?php } ?>
    <?php foreach ($posts as $item) { ?>
        <url>
            <loc><?php echo site_url('post/' . $item->blog_id . '-' . sanitize($item->title)) ?></loc>
            <priority>0.5</priority>
        </url>
    <?php } ?>

</urlset>