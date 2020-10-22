<% with $Page(sponsors) %>
    <section class="sponsors" aria-label="Sponsors">
        <h5 class="title text-uppercase my-3">Sponsors</h5>

        <div class="sponsor-carousel">
            <% loop Children %>
                <div class="sponsor-cell">
                    <% if $SponsorUrl %>
                        <a href="$SponsorUrl">
                            <img src="$SponsorPhoto.Pad(210, 120).URL" alt="$Title" >
                        </a>
                    <% else %>
                        <img src="$SponsorPhoto.Pad(210, 120).URL" alt="$Title">
                    <% end_if %>
                </div>
            <% end_loop %>
        </div>
    </section>
<% end_with %>
