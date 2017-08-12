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
                自媒体人
            </h1>

        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">自媒体人列表</h3>
                            <div style="float: right">
                                <span class="control-label">按平台筛选</span>
                                <select name="platformFilter" class="form-control" id="platformFilter">
                                    <option value="ALL">ALL</option>
                                    <#list platformList as item>
                                        <option value="${item.id}">${item.platformName}</option>
                                    </#list>
                                </select>
                                <div style="width: 160px;float: right" class="input-group input-group-sm">
                                    <input type="text" class="form-control">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-info btn-flat">Go!</button>
                                    </span>
                                </div>
                                <#--<input type="text" name="weMediaWorkerName" id="weMediaWorkerName" placeholder="请输入自媒体人名称">-->
                            </div>

                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="example2_wrapper" class="form-inline dt-bootstrap">
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
                                                    aria-sort="ascending">详情
                                                </th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="example2"
                                                    rowspan="1" colspan="1"
                                                    aria-label="Browser: activate to sort column descending"
                                                    aria-sort="ascending">统计
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

<script src="<@spring.url'/js/jquery-2.2.0.min.js'/>"></script>
<script src="<@spring.url'/js/bootstrap.js'/>"></script>
<script type="application/javascript">

    function loadWeMedieWorkerTable() {
        $.ajax({
            url:"/weMediaWorkerDetail/loadWeMedieWorkerTable",
            data:{},
            dataType:"html",
            success:function (html) {

            },
            error:function (error) {
                console.log(error);
            }
        })
    }

</script>
</body>
</html>