<% with $Page(sponsors) %>
<section class="sponsors">
  <h5 class="title">Sponsors</h5>
  <div class="">
    <div class="slick-sponsors">
      <% loop Children %>
        <div
          <% if $SponsorUrl %>
            <a href="$SponsorUrl"><img data-lazy="$SponsorPhoto.PaddedImage(210, 120).URL" alt="$Title"></a>
          <% else %>
            <img data-lazy="$SponsorPhoto.PaddedImage(210, 120).URL" alt="$Title">
          <% end_if %>
        </div>
      <% end_loop %>
    </div>
  </div>
</section>

<% end_with %>