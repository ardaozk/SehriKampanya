<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SehriKampanya._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta id="IE8CompatibilityMeta" runat="server" http-equiv="X-UA-Compatible" content="IE=7" />
    <me ta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9"> 
    <meta http-equiv="Cache-Control" content="NO-CACHE" />
    <meta http-equiv="Pragma" content="NO-CACHE" />
    <meta http-equiv="Expires" content="1" />
    <title>SehriKampanya</title>
    <link href="~/sitil.css" rel="stylesheet" type="text/css" />

    <script src="motio/motio.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="panning" class="panning"></div>
    <div id="menuLeft">
        <nav id="slide-menu">
	<ul>
		<li class="timeline">Timeline</li>
		<li class="events">Events</li>
		<li class="calendar">Calendar</li>
		<li class="sep settings">Settings</li>
		<li class="logout">Logout</li>
	</ul>
</nav>
    </div>
    <!-- Content panel -->
<div id="content">
	<div class="menu-trigger"></div>
	<h1>iOS style sliding menu</h1>
	<p>Here's an easy way to create an iOS style, side sliding menu.</p>
</div>
    </form>
</body>

<script type="text/javascript">

    var panning = new Motio(document.getElementById('panning'), {
        fps: 30, // Frames per second. More fps = higher CPU load.
        speedX: -30 // Negative horizontal speed = panning to left.
    });
    panning.play();
</script>

<script type="text/javascript">

    /*
    Slidemenu
    */
    (function () {
        var $body = document.body
	, $menu_trigger = $body.getElementsByClassName('menu-trigger')[0];

        if (typeof $menu_trigger !== 'undefined') {
            $menu_trigger.addEventListener('click', function () {
                $body.className = ($body.className == 'menu-active') ? '' : 'menu-active';
            });
        }

    }).call(this);

</script>

</html>
