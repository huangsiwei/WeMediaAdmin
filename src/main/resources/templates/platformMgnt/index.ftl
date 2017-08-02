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

    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <ul class="sidebar-menu">
                <li class="header">MAIN NAVIGATION</li>
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> 平台管理</a></li>
                        <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-edit"></i> <span>Forms</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
                        <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a>
                        </li>
                        <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-table"></i> <span>Tables</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
                        <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
                    </ul>
                </li>
                <li>
                    <a href="pages/calendar.html">
                        <i class="fa fa-calendar"></i> <span>Calendar</span>
                        <span class="pull-right-container">
                            <small class="label pull-right bg-red">3</small>
                            <small class="label pull-right bg-blue">17</small>
                        </span>
                    </a>
                </li>
                <li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <div class="content-wrapper" style="min-height: 901px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                平台管理
            </h1>

        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">平台列表</h3>
                            <button type="button" style="width: 60px;float: right"
                                    class="btn btn-block btn-success btn-xs" onclick="showPlatformConfigModal()">新增
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
                                        <table id="platformListTable" class="table table-bordered table-hover"
                                               role="grid" aria-describedby="example2_info">
                                            <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                    colspan="1"
                                                    aria-label="Rendering engine: activate to sort column ascending">
                                                    平台名称
                                                </th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="example2"
                                                    rowspan="1" colspan="1"
                                                    aria-label="Browser: activate to sort column descending"
                                                    aria-sort="ascending">平台介绍
                                                </th>
                                                <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                    colspan="1"
                                                    aria-label="Platform(s): activate to sort column ascending">
                                                    域名
                                                </th>
                                                <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                    colspan="1"
                                                    aria-label="Platform(s): activate to sort column ascending">
                                                    操作
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody>


                                            <#--<tr role="row" class="odd">-->
                                                <#--<td class="">Other browsers</td>-->
                                                <#--<td class="sorting_1">All others</td>-->
                                                <#--<td class="">-</td>-->
                                                <#--<td class="">修改/删除</td>-->
                                            <#--</tr>-->
                                            <#--<tr role="row" class="even">-->
                                                <#--<td class="">Trident</td>-->
                                                <#--<td class="sorting_1">AOL browser (AOL desktop)</td>-->
                                                <#--<td class="">Win XP</td>-->
                                                <#--<td class="">修改/删除</td>-->

                                            <#--</tr>-->
                                            <#--<tr role="row" class="odd">-->
                                                <#--<td class="">Gecko</td>-->
                                                <#--<td class="sorting_1">Camino 1.0</td>-->
                                                <#--<td class="">OSX.2+</td>-->
                                                <#--<td class="">修改/删除</td>-->

                                            <#--</tr>-->
                                            <#--<tr role="row" class="even">-->
                                                <#--<td class="">Gecko</td>-->
                                                <#--<td class="sorting_1">Camino 1.5</td>-->
                                                <#--<td class="">OSX.3+</td>-->
                                                <#--<td class="">修改/删除</td>-->
                                            <#--</tr>-->
                                            <#--<tr role="row" class="odd">-->
                                                <#--<td class="">Misc</td>-->
                                                <#--<td class="sorting_1">Dillo 0.8</td>-->
                                                <#--<td class="">Embedded devices</td>-->
                                                <#--<td class="">修改/删除</td>-->
                                            <#--</tr>-->
                                            <#--<tr role="row" class="even">-->
                                                <#--<td class="">Gecko</td>-->
                                                <#--<td class="sorting_1">Epiphany 2.20</td>-->
                                                <#--<td class="">Gnome</td>-->
                                                <#--<td class="">修改/删除</td>-->
                                            <#--</tr>-->
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
<div class="modal" id="platformConfig">
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
                                <label for="platformName">平台名称</label>
                                <input type="text" class="form-control" id="platformName" placeholder="请输入平台名称">
                            </div>
                            <div class="form-group">
                                <label for="platformDesc">平台描述</label>
                                <input type="text" class="form-control" id="platformDesc" placeholder="请输入平台描述">
                            </div>
                            <div class="form-group">
                                <label for="platformDomain">域名</label>
                                <input type="text" class="form-control" id="platformDomain" placeholder="请输入描述">
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="saveConfigBtn" platform-id="-1"
                        onclick="savePlatformConfig(-1)
">保存
                </button>
            </div>
        </div>
    </div>
</div>

<script src="<@spring.url'/js/jquery-2.2.0.min.js'/>"></script>
<script src="<@spring.url'/js/bootstrap.js'/>"></script>
<script type="application/javascript">
    $(function () {
        loadPlatformConfigList();
    });

    function showPlatformConfigModal(platformId) {
        if (platformId) {
            $('#platformConfig').modal("show");
            $('#platformConfig #saveConfigBtn').attr("platform-id", platformId);
            $('#platformConfig .modal-title').html("修改平台")
        } else {
            $('#platformConfig').modal("show");
            $('#platformConfig #saveConfigBtn').attr("platform-id", -1);
            $('#platformConfig .modal-title').html("新增平台")
        }
    }

    function loadPlatformConfigList() {
        $.ajax({
            type: "POST",
            data: {},
            dataType: "html",
            url: "/platformMgnt/loadPlatformConfigList",
            success: function (html) {
                $("#platformListTable tbody").html(html);
            },
            error: function (error) {
                console.log(error)
            }
        })
    }

    function savePlatformConfig() {
        var platformId = $('#platformConfig #saveConfigBtn').attr("config-id");
        $.ajax({
            type: 'POST',
            data: {
                "platformId": platformId,
                "platformName": $("#platformName").val(),
                "platformDesc": $("#platformDesc").val(),
                "platformDomain": $("#platformDomain").val()
            },
            dataType: "json",
            url: "/platformMgnt/savePlatformConfig",
            success: function (json) {
                if (json["status_Code"] === 200) {
                    console.log("success");
                } else {
                    console.log("exception in save");
                }
                $('#platformConfig').modal("hide");
                loadPlatformConfigList();
            },
            error: function (error) {
                console.log(error);
            }
        })
    }
</script>
</body>
</html>