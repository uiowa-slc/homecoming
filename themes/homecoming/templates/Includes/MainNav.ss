<!-- Navigation -->
<div class="main-nav-wrapper">
  <nav role="navigation">
  	<h2 class="visuallyhidden">Navigation</h2>
  	<ul class="main-nav">
      <% loop Menu(1) %>
      <li><a href="$Link">$MenuTitle</a>
        <% if Children %>
          <ul class="level-2">
            <% loop Children %>
            <li><a href="$Link">$MenuTitle</a></li>
            <% end_loop %>
          </ul>
        <% end_if %>
        </li>
      <% end_loop %>
      
  	</ul>
  </nav>
</div>