<div class="container">
  <div class="row">
    <div class="col-sm-12">
      $Content
      $Form
      <hr>
    </div>
  </div><!-- end .row -->

  <ul class="justify">
    <% loop $Children %>
      <li class="item button-item">
      <a href="$ButtonPhoto.URL" class="button-img gallery" title="$Title">
        <img src="$ButtonPhoto.PaddedImage(200,200).URL" alt="$Title">
      </a>
      <small class="button-year">$Title</small>
    </li>
    <% end_loop %>
    <li class="item filler"></li>
    <li class="item filler"></li>
    <li class="item filler"></li>
    <li class="item filler"></li>
  </ul>
</div><!-- end .container -->