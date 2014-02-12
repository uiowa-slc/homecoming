<!-- Header -->
<header class="header clearfix" role="banner">

    <div class="container">

      <ul class="audience-nav">
        <li><a href="students/">Students</a></li>
        <li><a href="faculty-and-staff/">Faculty & Staff</a></li>
        <li><a href="alumni-and-friends/">Alumni &amp; Friends</a></li>
      </ul>
    </div>
    <!-- Navigation -->
    <div class="main-nav-wrapper">
      <div class="container">
        <a href="{$BaseHref}" class="logo">
        <img src="{$ThemeDir}/images/logo.png" alt="">
      </a>
        <nav role="navigation">
          <h2 class="visuallyhidden">Navigation</h2>
          <ul class="main-nav clearfix">
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
    </div>
</header>