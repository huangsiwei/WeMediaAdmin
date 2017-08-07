<#import "/spring.ftl" as spring/>
<html>
<head>
    <title>DashBoard</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="<@spring.url'/bootstrap/dist/css/bootstrap.css'/>" rel="stylesheet"/>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"/>
    <!-- Theme style -->
<#--<link rel="stylesheet" href="dist/css/AdminLTE.min.css">-->
    <link href="<@spring.url'/dist/css/AdminLTE.min.css'/>" rel="stylesheet"/>

    <link href="<@spring.url'/dist/css/skins/_all-skins.min.css'/>" rel="stylesheet"/>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>LT</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>


        </nav>
    </header>

<#include "../base/aside.ftl">

    <div class="content-wrapper" style="min-height: 901px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                自媒体人主页 管理
            </h1>

        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">自媒体人列表</h3>
                            <button type="button" style="width: 60px;float: right"
                                    class="btn btn-block btn-success btn-xs" onclick="showWemediaHomePageConfig()">新增
                            </button>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="example2_wrapper" class="form-inline dt-bootstrap">
                                <div class="row">
                                    <div class="col-sm-6"></div>
                                    <div class="col-sm-6"></div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="weMediaWorkerTable" class="table table-bordered table-hover"
                                               role="grid" aria-describedby="example2_info">
                                            <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                    colspan="1"
                                                    aria-label="Rendering engine: activate to sort column ascending">
                                                    自媒体人
                                                </th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="example2"
                                                    rowspan="1" colspan="1"
                                                    aria-label="Browser: activate to sort column descending"
                                                    aria-sort="ascending">简介
                                                </th>
                                                <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                    colspan="1"
                                                    aria-label="Platform(s): activate to sort column ascending">
                                                    操作
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="modal" id="wemediaHomePageConfig">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="workerId">请选择自媒体人</label>
                                <select name="workerId" id="workerId" class="form-control">
                                    
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="homePageUrlList">请输入主页网址</label>
                                <textarea class="form-control" id="homePageUrlList" rows="7" cols="20"
                                          placeholder="请输入主页网址，多个主页请用回车分隔"></textarea>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="saveConfigBtn" platform-id="-1"
                        onclick="">保存
                </button>
            </div>
        </div>
    </div>
</div>

<script src="<@spring.url'/js/jquery-2.2.0.min.js'/>"></script>
<script src="<@spring.url'/js/bootstrap.js'/>"></script>
<script type="application/javascript">
    function showWemediaHomePageConfig() {
        $("#wemediaHomePageConfig").modal("show");
        loadWorkerIdSelectOption();
    }
    
    function loadWorkerIdSelectOption() {
        $.ajax({
            url:"/weMediaHomePageMgnt/loadWorkerIdSelectOption",
            data:{},
            dataType:"html",
            success:function (html) {
                $("select[name=workerId]").html(html);
            },
            error:function (error) {
                console.log(error);
            }
        })
    }
    
    function saveWemediaWorkerHomePageConfig() {
        $.ajax({
            url:"/weMediaHomePageMgnt/saveWemediaWorkerHomePageConfig",
            data:{
                workerId:$("select[name=workerId]").val(),
                homePageUrlList:$("#homePageUrlList").val()
            },
            dataType:"json",
            success:function (json) {

            },
            error:function (error) {
                console.log(error);
            }
        })
    }
</script>
</body>
</html>