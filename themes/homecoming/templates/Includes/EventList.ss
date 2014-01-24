<% loop AllEvents %>
<div class="event-wrap clearfix">

  <% with $Event %>
    <h2 class="event-title"><a href="$Link">$Title</a></h2>
    <% if $EventImage %>
      <a href="$Link" class="event-img"><img src="{$EventImage.SetWidth(300).URL}" alt="$Title"></a>
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

</div>
<hr>
<% end_loop %>

<% if MoreEvents %>
  <a href="$MoreLink" class="calendar-view-more"><% _t('Calendar.VIEWMOREEVENTS','View more events...') %></a>
<% end_if %>



