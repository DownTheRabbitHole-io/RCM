<h1 id="logo-small" class="small"></h1>
<a id="up" ng-click="home.up()" href="#"></a>
<a id="down" ng-click="home.down()" href="#"></a>
<div id="fullpage">

  <% loop $PageSections %>
  <% if Pos = 1 %>
  <div class="section">
    <div class="container">
      <div class="row">
        <h1 id="logo" class="big">RCMarkets</h1>
      </div>
    </div>
  </div>
  <% else %>
  <div class="section" id="section$Pos">
    <div class="container pushdown">
      <div class="row" ng-if="page.content">
        <div class="one-half column">
          <div class="text" id="text$Pos">
            <h3 class="hero-heading">$Title</h3>
            $Content
          </div>
        </div>
        <div class="one-half column vertical-wrapper">
          <span class="helper"></span>
          <img  src="$Image.Filename" id="image$Pos" class="image move-down">
        </div>
      </div>
    </div>
  </div>
  <% end_if %>
  <% end_loop %>
</div>
