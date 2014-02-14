<!-- New -->
<div class="events-list">
  <a href="$Link" class="blocklink mix event workshops-lectures mix_all visible">
    <% with $Event %>
    <div class="image align-center">
      <div class="bg" style="background-image: url($EventImage.URL);"></div>
      <div class="date">
        <span>Thu. Mar</span>
        <span class="lrg">06</span>
      </div>
    </div>
    <% end_with %>
    <div class="content">
      <!-- <h5 class="featured-event">Workshops &amp; Lectures</h5>
      <h5 class="series">Evening Lectures in Genomics</h5> -->
      <h3>$Title</h3>
      <div class="event-meta">
        <p>$Event.EventLocation</p>
        <time datetime="2014-03-06">$TimeRange, $DateRange</time>
        <div class="read-more">Learn more</div>
      </div>
    </div>
  </a>
</div>

<!-- <div class="event-wrap clearfix">
  <% with $Event %>
    <h2 class="event-title"><a href="$Link">$Title</a></h2>
    <% if $EventImage %>
      <a href="$Link" class="event-img"><img src="{$EventImage.URL}" alt="$Title"></a>
    <% end_if %>
  <% end_with %>

  <dl class="event-meta">
    <dt>Date:</dt>
    <dd>$DateRange</dd>
    <dt>Time:</dt>
    <dd><% if AllDay %><% _t('ALLDAY','All Day') %><% else %><% if StartTime %>$TimeRange<% end_if %><% end_if %></dd>
    <dt>Location:</dt>
    <dd>$Event.EventLocation</dd>
  </dl>

  <% with Event %>
    <p class="event-desc">
      $Content.LimitCharacters(220)<a href="$Link"><% _t('MORE','Read more&hellip;') %></a>
    </p>
  <% end_with %>
</div> -->


