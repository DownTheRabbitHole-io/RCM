<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="$ThemeDir/form/assets/js/html5shiv.min.js"></script>
	<![endif]-->

	<% require themedCSS('style') %>

	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />

	<link href='$ThemeDir/form/assets/css/montserrat.css' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="$ThemeDir/form/assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="$ThemeDir/form/assets/css/jquery-ui.css">
	<link href="$ThemeDir/form/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="$ThemeDir/form/assets/css/bootstrap-select.css">
	<link rel="stylesheet" href="$ThemeDir/form/assets/css/calendar.css">
	<link rel="stylesheet" href="$ThemeDir/form/assets/css/animate.css">
	<link rel="stylesheet" href="$ThemeDir/form/assets/css/style.css">
	<script src="$ThemeDir/javascript/jquery-1.10.2.min.js"></script>
	<script src="$ThemeDir/form/assets/js/jquery-ui.js"></script>
</head>
<body>
<% include Header %>
<a href="/"><h1 id="logo-small" class="small perm"></h1></a>
	<!-- holder -->
		<div id="hold">
			<!-- page wrapper -->
			<div class="cs-appcal">
				<div class="container-form">
				$Layout
			</div>
		</div><!-- ./ page wrapper -->
	</div><!-- ./holder -->

	<script src="$ThemeDir/form/assets/js/moment.js"></script>
	<script src="$ThemeDir/form/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="$ThemeDir/form/assets/js/jquery.bootstrap.wizard.min.js"></script>
	<script src="$ThemeDir/form/assets/js/jquery.form-validator.min.js"></script>
	<script src="$ThemeDir/form/assets/js/bootstrap-select.min.js"></script>
	<script src="$ThemeDir/form/assets/js/custom.js"></script>
</body>
</html>
