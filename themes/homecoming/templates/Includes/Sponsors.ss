<% with $Page(sponsors) %>
<section class="sponsors">
  <h5 class="title">Sponsors</h5>
  <div class="flexslider-sponsor">
    <ul class="slides">
      <% loop Children %>
        <li>
          <% if $SponsorUrl %>
            <a href="$SponsorUrl"><img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="$SponsorPhoto.PaddedImage(210, 120).URL" alt="$Title"></a>
          <% else %>
            <img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="$SponsorPhoto.PaddedImage(210, 120).URL" alt="$Title">
          <% end_if %>
        </li>
      <% end_loop %>
    </ul>
  </div>
</section>
<% end_with %>