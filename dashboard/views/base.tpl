<!DOCTYPE html>
<html lang="tr">
<head>
    <base href="./">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="hexvalid">
    <meta name="keyword" content="travium,travium-go,travium-dashboard">
    <meta name="referrer" content="no-referrer"/>
    <title>Travium Dashboard</title>
    <link href="/css/coreui-icons.min.css" rel="stylesheet">
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/simple-line-icons.min.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/coreui.min.css" rel="stylesheet">
    <link href="/css/pace.min.css" rel="stylesheet">
    <link href="/css/app.css" rel="stylesheet">
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
<header class="app-header navbar">
    <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">
        <img class="navbar-brand-full" src="/img/logo.svg" width="89"
             height="25" alt="CoreUI Logo">
        <img class="navbar-brand-minimized" src="/img/sygnet.svg" width="30" height="30" alt="CoreUI Logo">
    </a>
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button" data-toggle="sidebar-lg-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="nav navbar-nav ml-auto">

    </ul>

</header>
<div class="app-body">
    <div class="sidebar">
        <nav class="sidebar-nav">
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="./dashboard">
                        <i class="nav-icon icon-speedometer"></i> Dashboard
                        <span class="badge badge-primary">BETA</span>
                    </a>
                </li>
                <li class="nav-title">BOT</li>
                <li class="nav-item">
                    <a class="nav-link" href="/travium/createAccount">
                        <i class="nav-icon icon-user-follow"></i> Hesap Oluştur</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./accounts">
                        <i class="nav-icon icon-people"></i> Hesaplar
                        <span class="badge badge-primary">BETA</span>
                    </a>

                </li>

                <li class="nav-item mt-auto">
                    <a class="nav-link nav-link-info" href="#" id="refreshIzolator" style="background:#2f353a">
                        <i class="nav-icon icon-refresh"></i> İzolatör <strong id="izolatorStatus">...</strong>
                    </a>
                </li>

            </ul>
        </nav>
        <button class="sidebar-minimizer brand-minimizer" type="button"></button>
    </div>
    <main class="main">
        <div class="container-fluid" style="padding-top: 24px;">
            <div id="ui-view">
                <div>
                    <div class="animated fadeIn">
                        {{.Page}}
                    </div>
                </div>
            </div>
        </div>
    </main>

</div>
<footer class="app-footer">
    <div>
        <span>travium-go &copy; 2019 hexvalid</span>
    </div>
    <div class="ml-auto">
        <span>Powered by</span>
        <a href="https://golang.org">GoLang</a>
    </div>
</footer>
<!-- CoreUI and necessary plugins-->
<script src="/js/jquery.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/pace.min.js"></script>
<script src="/js/perfect-scrollbar.min.js"></script>
<script src="/js/coreui.min.js"></script>
<script src="/js/app.js"></script>
<script src="/js/jquery.validate.min.js"></script>
</body>
</html>
