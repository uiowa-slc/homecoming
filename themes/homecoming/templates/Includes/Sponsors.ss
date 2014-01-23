<% with $Page(sponsors) %>
<h5 class="text-center uppercase">Sponsors</h5>
<div class="flexslider-sponsor">
  <ul class="slides">
    <% loop Children %>
      <li>
        <% if $SponsorUrl %>
          <a href="$SponsorUrl"><img src="$SponsorPhoto.URL" alt="$Title"></a>
        <% else %>
          <img src="$SponsorPhoto.URL" alt="$Title">
        <% end_if %>
      </li>
    <% end_loop %>
  </ul>
</div>
<% end_with %>