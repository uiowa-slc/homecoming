<% with $Page(sponsors) %>
<section class="sponsors" aria-label="Sponsors">
  <h5 class="title">Sponsors</h5>
  <div class="">
    <div class="slick-sponsors">
      <% loop Children %>
        <div>
          <% if $SponsorUrl %>
            <a href="$SponsorUrl"><img src="$SponsorPhoto.PaddedImage(210, 120).URL" alt="$Title"></a>
          <% else %>
            <img src="$SponsorPhoto.PaddedImage(210, 120).URL" alt="$Title">
          <% end_if %>
        </div>
      <% end_loop %>
    </div>
  </div>
</section>

<% end_with %>