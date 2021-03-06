<!DOCTYPE html>
<html>
<head>
  <meta content="vim-tips,Vim,tips,Vimer,Vim技巧,Vim教程,Vim学习,Vim编辑器" name="keywords" />
  <meta content="Vim tips,Vimer的园地,来自Vim的每日技巧与点滴,让你每天都能学到来自Vim的奇淫技巧,让你的Vim更进一步..."name="description" />
  <title>VimTips - Daily tips for Vim!</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Timothy">
  <!--   <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png"> -->

  <title>Vim-tips.com</title>

  <!-- Bootstrap core CSS -->
  <link href="http://fonts.useso.com/css?family=Lobster" rel="stylesheet" type="text/css" />
  <link href='http://fonts.useso.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css' />
  <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
  <link href="http://vimtips.qiniudn.com/css/app.css" type="text/css" rel="stylesheet" />
  <link href="/css/style.css" rel="stylesheet" />

  {{ if .IsAbout }}
  <link rel="stylesheet" type="text/css" href="/css/about.css">
  {{ end }}

  {{ if .IsTools }}
  <link rel="stylesheet" type="text/css" href="/css/tools.css">
  {{ end }}

  {{ if .Casts }}
  <link rel="stylesheet" type="text/css" href="/css/casts.css">
  {{ end }}

  <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

  {{ if .IsIndex }}
  <script src="/js/tips.js"></script>
  {{ end }}

  <!-- Custom styles for this template -->
  <!--   <link href="theme.css" rel="stylesheet"> -->
  <style>
  body {
    font-family: Helvetica, Tahoma, Arial, STXihei, "华文细黑", "Microsoft YaHei", "微软雅黑", SimSun, "宋体", Heiti, "黑体", sans-serif;
  }

  h1, .h1, h2, .h2, h3, .h3, h4, .h4, .lead {
    font-family: Helvetica, Tahoma, Arial, STXihei, "华文细黑", "Microsoft YaHei", "微软雅黑", SimSun, "宋体", Heiti, "黑体", sans-serif;}
  }
  </style>
</head>

<body style="background-color: #ECE5CE;">
 <div id="top_banner" class="navbar navbar-default" role="navigation">
  <div class="container">
    <div class="navbar-header hidden-xs">
      <a href="/"><img src="/img/vim.png" /></a>
    </div>
    <div>
     <div class="pull-right hidden-xs">
      <iframe src="http://ghbtns.com/github-btn.html?user=timothyye&repo=vim-tips-web&type=watch&count=true"
      allowtransparency="true" frameborder="0" scrolling="0" width="110" height="20"></iframe>
      <iframe src="http://ghbtns.com/github-btn.html?user=timothyye&repo=vim-tips-web&type=fork&count=true"
      allowtransparency="true" frameborder="0" scrolling="0" width="95" height="20"></iframe>
    </div>
    <div id="title">
      <h1>Vim-Tips.com</h1>
      <small>Vim的技巧点滴与分享</small>
    </div>
  </div>

   <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
  <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav navbar-right">
      <li {{ if .IsIndex }} class="active" {{ end }}><a href="/">首页</a></li>
      <li {{ if .IsCasts }} class="active" {{ end }}><a href="/casts">播客</a></li>
      <li {{ if .IsTools }} class="active" {{ end }}><a href="/tools">工具</a></li>
      <li {{ if .IsAPI }} class="active" {{ end }} ><a href="/api">API</a></li>
      <li {{ if .IsAbout }} class="active" {{ end }} ><a href="/about">关于</a></li>
    </ul>
  </div>
</div>
</div>

<div id="wrapper">
  <div id="content" class="container">
    {{ yield }}
  </div>

  <div id="footer" class="navbar navbar-fixed-bottom">
    <div id="copyright" class="container">
      <div class="row">
        <div class="col-md-12 col-xs-12">
          <div class="col-md-6 col-xs-6">Powered by Golang &amp Martini | <a href="/admin/login">管理入口</a></div>
          <div class="col-md-6 col-xs-6">
           <div class="pull-right">© 2015 <a href="http://github.com/timothyye"> timothyye </a> All Rights Reserved.</div>
         </div>
       </div>
     </div>
   </div>
 </div>
</div>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=25744410" charset="UTF-8"></script>
</body>
</html>
