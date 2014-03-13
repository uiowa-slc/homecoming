<% with $Page(announcements) %>
<div class="announcements">
  <h5 class="title">Announcements</h5>
  <ul class="unstyled">
    <% loop Children %>
      <li>
        <a href="$Link">$Title</a>
        <!-- <small>$Created.NiceUS</small> -->
      </li>
    <% end_loop %>
  </ul>
</div>
<% end_with %>
