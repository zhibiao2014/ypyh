<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:64:"F:\www\fastadmin\public/../application/admin\view\page\edit.html";i:1502437132;s:69:"F:\www\fastadmin\public/../application/admin\view\layout\default.html";i:1502337745;s:66:"F:\www\fastadmin\public/../application/admin\view\common\meta.html";i:1502337745;s:68:"F:\www\fastadmin\public/../application/admin\view\common\script.html";i:1502337745;}*/ ?>
<!DOCTYPE html>
<html lang="<?php echo $config['language']; ?>">
    <head>
        <meta charset="utf-8">
<title><?php echo (isset($title) && ($title !== '')?$title:''); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<link rel="shortcut icon" href="__CDN__/assets/img/favicon.ico" />
<!-- Loading Bootstrap -->
<link href="__CDN__/assets/css/backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.css?v=<?php echo \think\Config::get('site.version'); ?>" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
  <script src="__CDN__/assets/js/html5shiv.js"></script>
  <script src="__CDN__/assets/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
    var require = {
        config:  <?php echo json_encode($config); ?>
    };
</script>
    </head>

    <body class="inside-header inside-aside <?php echo defined('IS_DIALOG') && IS_DIALOG ? 'is-dialog' : ''; ?>">
        <div id="main" role="main">
            <div class="tab-content tab-addtabs">
                <div id="content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <section class="content-header hide">
                                <h1>
                                    <?php echo __('Dashboard'); ?>
                                    <small><?php echo __('Control panel'); ?></small>
                                </h1>
                            </section>
                            <?php if(!IS_DIALOG): ?>
                            <!-- RIBBON -->
                            <div id="ribbon">
                                <ol class="breadcrumb pull-left">
                                    <li><a href="dashboard" class="addtabsit"><i class="fa fa-dashboard"></i> <?php echo __('Dashboard'); ?></a></li>
                                </ol>
                                <ol class="breadcrumb pull-right">
                                    <?php foreach($breadcrumb as $vo): ?>
                                    <li><a href="javascript:;" data-url="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a></li>
                                    <?php endforeach; ?>
                                </ol>
                            </div>
                            <!-- END RIBBON -->
                            <?php endif; ?>
                            <div class="content">
                                <form id="edit-form" class="form-horizontal form-ajax" role="form" data-toggle="validator" method="POST" action="">

    <div class="form-group">
        <label for="c-category_id" class="control-label col-xs-12 col-sm-2"><?php echo __('Category'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-category_id" class="form-control selectpage" data-source="category/selectpage" data-params='{"custom[type]":"page"}' name="row[category_id]" type="text" value="<?php echo $row['category_id']; ?>" data-rule="required">
        </div>
    </div>
    <div class="form-group">
        <label for="c-title" class="control-label col-xs-12 col-sm-2"><?php echo __('Title'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-title" class="form-control" name="row[title]" type="text" value="<?php echo $row['title']; ?>" data-rule="required" >
        </div>
    </div>
    <div class="form-group">
        <label for="c-keywords" class="control-label col-xs-12 col-sm-2"><?php echo __('Keywords'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-keywords" class="form-control" name="row[keywords]" type="text" value="<?php echo $row['keywords']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-flag" class="control-label col-xs-12 col-sm-2"><?php echo __('Flag'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <?php echo build_select('row[flag]', ['recommend'=>__('Recommend'), 'index'=>__('Index'), 'hot'=>__('Hot')], $row['flag'], ['id'=>'c-flag','class'=>'form-control selectpicker','data-rule'=>'required']); ?>
        </div>
    </div>
    <div class="form-group">
        <label for="c-image" class="control-label col-xs-12 col-sm-2"><?php echo __('Image'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="form-inline">
                <input id="c-image" class="form-control" size="50" name="row[image]" type="text" value="<?php echo $row['image']; ?>">
                <span><button type="button" id="plupload-image" class="btn btn-danger plupload" data-multiple="false" data-input-id="c-image" data-preview-id="p-image"><i class="fa fa-upload"></i> <?php echo __('Upload'); ?></button></span>
                <span><button type="button" id="fachoose-image" class="btn btn-primary fachoose" data-multiple="false" data-input-id="c-image"><i class="fa fa-list-ul"></i> <?php echo __('Choose'); ?></button></span>
                <ul class="row list-inline plupload-preview" id="p-image"></ul>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-content" class="control-label col-xs-12 col-sm-2"><?php echo __('Content'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <textarea id="c-content" class="form-control editor" name="row[content]" cols="50" rows="10"><?php echo $row['content']; ?></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="c-icon" class="control-label col-xs-12 col-sm-2"><?php echo __('Icon'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-icon" class="form-control" name="row[icon]" type="text" value="<?php echo $row['icon']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-views" class="control-label col-xs-12 col-sm-2"><?php echo __('Views'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-views" class="form-control" name="row[views]" type="number" value="<?php echo $row['views']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-comments" class="control-label col-xs-12 col-sm-2"><?php echo __('Comments'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-comments" class="form-control" name="row[comments]" type="number" value="<?php echo $row['comments']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-weigh" class="control-label col-xs-12 col-sm-2"><?php echo __('Weigh'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-weigh" class="form-control" name="row[weigh]" type="number" value="<?php echo $row['weigh']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-status" class="control-label col-xs-12 col-sm-2"><?php echo __('Status'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <?php echo build_radios('row[status]', ['normal'=>__('Normal'), 'hidden'=>__('Hidden')], $row['status']); ?>
        </div>
    </div>
    <div class="form-group hide layer-footer">
        <label class="control-label col-xs-12 col-sm-2"></label>
        <div class="col-xs-12 col-sm-8">
            <button type="submit" class="btn btn-success btn-embossed disabled"><?php echo __('OK'); ?></button>
            <button type="reset" class="btn btn-default btn-embossed"><?php echo __('Reset'); ?></button>
        </div>
    </div>
</form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="__CDN__/assets/js/require.js" data-main="__CDN__/assets/js/require-backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo $site['version']; ?>"></script>
    </body>
</html>