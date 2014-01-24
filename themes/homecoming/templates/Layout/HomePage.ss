<div class="container">
  <div class="row">
    <div class="col-md-9">
      <img src="$HomePhoto.URL" alt="">
      $Content
      $Form
      <div class="row">
        <div class="col-sm-6 col-lg-4 clearfix">
          <h5>$CalloutOne</h5>
          <img src="http://placehold.it/100x100&text=+" alt="" class="left">
          <p class="small">$CalloutOneDesc</p>
        </div>
        <div class="col-sm-6 col-lg-4 clearfix">
          <h5>$CalloutTwo</h5>
          <img src="http://placehold.it/100x100&text=+" alt="" class="left">
          <p class="small">$CalloutTwoDesc</p>
        </div>
        <div class="col-sm-6 col-lg-4 clearfix">
          <h5>$CalloutThree</h5>
          <img src="http://placehold.it/100x100&text=+" alt="" class="left">
          <p class="small">$CalloutThreeDesc</p>
        </div>
      </div>
    </div><!-- end .col -->
    <div class="col-md-3">
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div><!-- end .row -->
</div><!-- end .container -->