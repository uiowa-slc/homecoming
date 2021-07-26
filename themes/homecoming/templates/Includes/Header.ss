<!-- Header -->
<header class="header clearfix" role="banner">
    <div class="header-top">
        <div class="container-xl clearfix">
            <div class="header-container">
                <div class="logo">
                    <h1 class="logo__title">
                        <a href="{$BaseHref}" class="logo__anchor">$SiteConfig.Title</a>
                    </h1>
                </div>
                <% if $SiteConfig.DateRange %>
                    <p class="header-date">$SiteConfig.DateRange</p>
                <% end_if %>
            </div>
        </div>
    </div>
    <% include MainNav %>
</header>
