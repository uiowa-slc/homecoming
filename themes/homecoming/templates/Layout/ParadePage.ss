<div class="container main-content">
  <div class="content clearfix">
    <% if $ParadePhoto %>
      <img src="$ParadePhoto.URL" alt="$Name">
    <% end_if %>
    <div class="article">
      <h1 class="page-title">$Title</h1>
      $Content
      $Form
    </div>
    <div class="sidebar">
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div>
  $Breadcrumbs
</div>