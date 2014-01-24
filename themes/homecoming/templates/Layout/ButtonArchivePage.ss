<div class="container">
  <div class="row">
    <div class="col-sm-12">
      $Content
      $Form
      <hr>
    </div>
  </div><!-- end .row -->

  <ul class="justify">
    <% loop $Buttons %>
      <li class="item button-item">
      <a href="$Photo.URL" class="button-img gallery" title="$Year">
        <img src="$Photo.PaddedImage(200,200).URL" alt="$Year">
      </a>
      <small class="button-year">$Year</small>
    </li>
    <% end_loop %>
    <li class="item filler"></li>
    <li class="item filler"></li>
    <li class="item filler"></li>
    <li class="item filler"></li>
  </ul>
</div><!-- end .container -->