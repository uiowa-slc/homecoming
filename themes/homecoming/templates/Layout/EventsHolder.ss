   	    <script src="mysite/code/javascript/jquery-1.js" type="text/javascript"></script>
        <script src="/mysite/code/javascript/ui_002.js" type="text/javascript"></script>
        <script src="/mysite/code/javascript/ui.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function() {
                $('#tabs > ul').tabs();
            });
        </script>
		






<div id="tabs" class="typography">
<h1 id="events">$Title</h1>

<ul class="ui-tabs-nav">
<% control Children %>
<li id="menu$Pos" <% if First %>class="ui-tabs-selected"<% end_if %>><a href="#tab$Pos">$MenuTitle</a></li>
<% end_control %>
</ul>

<% control Children %>
<div <% if First %>class="ui-tabs-panel" <% else %> class="ui-tabs-panel ui-tabs-hide"<% end_if %> id="tab$Pos">
$Content
</div> 
<% end_control %>   
         
</div>

		
          <% include Sidebar %>
	
	</div>



			