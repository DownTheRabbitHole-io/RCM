<header>
	<span class="toggle-button">
		<div class="menu-bar menu-bar-top"></div>
		<div class="menu-bar menu-bar-middle"></div>
		<div class="menu-bar menu-bar-bottom"></div>
	</span>

	<div class="menu-wrap">
		<% if Translations %>
		<div id="lang" class="clear">
		  <ul class="clear">
		  <% control Translations %>
			<li>
				<a href="$Link" hreflang="$Locale.RFC1766" title="$Title - $Locale.Nice">
					<img src="$ThemeDir/images/lang-<% sprintf(_t('IMAGE','%2.2s'),$Locale.RFC1766) %>.png" class="flag">
				</a>
			</li>
		 <% end_control %>
		 </ul>
		</div>
		<% end_if %>
		<div class="menu-sidebar">
		<% include Navigation %>
		</div>
	</div>
</header>
