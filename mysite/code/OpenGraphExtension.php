<?php

use SilverStripe\Assets\Image;
use SilverStripe\Control\Director;
use SilverStripe\Core\Convert;
use SilverStripe\i18n\i18n;
use SilverStripe\ORM\DataExtension;
use SilverStripe\SiteConfig\SiteConfig;

class OpenGraphExtension extends DataExtension {

    private static $db = array(
        'OgTitle' => 'Text',
        'OgDescription' => 'Text',
    );

    private static $has_one = array(
        'OgImage' => Image::class,
    );
    private static $owns = array(
        'OgImage',
    );

    public static $keys = array(
        'title',
        'type',
        'image',
        'image:width',
        'image:height',
        'url',
        'description',
        'determiner',
        'locale',
        'locale:alternate',
        'site_name',
        'audio',
        'video',
        'video:width',
        'video:height',
        'video:secure_url',
        'video:type',
    );

    private static $casting = [
        "OpenGraph" => 'HTMLText',
    ];

    private function getCanonicalURL($url) {
        return Director::protocolAndHost() . $url;
    }
    public function getOpenGraph_type() {

        return 'website';
    }
    public function getOpenGraph_locale() {
        return i18n::get_locale();
    }

    public function getOpenGraph_description() {
        $page = $this->owner->data();
        $tries = array(
            'OgDescription',
            'MetaDescription',
            'Content',
        );

        foreach ($tries as $t) {
            $i = $page->hasValue($t);

            if ($i) {

                $content = $this->owner->obj($t)->LimitCharacters(300);
                $content = Convert::raw2att($content);
                return $content;
            }
        }

        return SiteConfig::current_site_config()->obj('Tagline');

    }
    public function getOpenGraph_site_name() {
        return SiteConfig::current_site_config()->Title;
    }
    public function getOpenGraphImage() {

        $page = $this->owner->data();
        $tries = array(
            'OgImage',
            'FeaturedImage',
            'MainImage',
            'HeaderImage',
            'Photo',
            'BackgroundImage',
            'Picture',
            'HomePhoto',
            'HeaderPhoto',
            'HeaderPhoto1',
            'HeaderPhoto2',
            'HeaderPhoto3',
            'PagePhoto',
            'CouncilPhoto'
        );

        if ($this->owner->ClassName == 'UiCalendarEvent') {

            if ($this->owner->Image) {
                //print_r($this->owner->Image);
                return $this->owner->obj('Image');

            }

        }

        //Try the above image fields
        foreach ($tries as $t) {
            // echo $t;
            $i = $page::getSchema()->hasOneComponent($page, $t);
            // echo $i;
            if ($i) {
                if ($page->getComponent($t)->exists()) {
                    // echo 'component exists: '.$i;
                    return $page->getComponent($t);
                }
            }
        }

        //If no images in the tries array were found, attempt to get the sitewide poster image:
        if (SiteConfig::current_site_config()->obj('PosterImage')->exists()) {
            return SiteConfig::current_site_config()->obj('PosterImage');
        }

        return null;
    }

    public function getOpenGraph_image_height() {
        $im = $this->owner->getOpenGraphImage();
        if ($im) {
            return $im->Height;
        }
        return "630";
    }

    public function getOpenGraph_image_width() {
        $im = $this->owner->getOpenGraphImage();
        if ($im) {
            return $im->Width;
        } else {
            return "1200";
        }
    }

    public function getOpenGraph_image() {
        $im = $this->owner->getOpenGraphImage();
        if ($im) {
            return $this->getCanonicalURL($im->URL);
        } else {
            return 'https://homecoming.uiowa.edu/assets/Uploads/15407675348-ba1e48d857-k__FocusFillWyIwLjAxIiwiMC4yMCIsMTUwMCw0NTBd.jpg';
        }
    }
    public function getOpenGraph_title() {
        if ($this->owner->URLSegment == "home") {
            return SiteConfig::current_site_config()->Title;
        } else {
            return $this->owner->Title;
        }

    }
    public function getOpenGraph_url() {
        $page = $this->owner;
        return $this->getCanonicalUrl($page->XML_val('Link'));
    }
    public function getOpenGraph_determiner() {
        return null;
    }
    public function getOpenGraph_audio() {
        return null;
    }
    public function getOpenGraph_video() {
        return null;
    }
    public function getOpenGraph_video_width() {
        return null;
    }
    public function getOpenGraph_video_height() {
        return null;
    }
    public function getOpenGraph_video_type() {
        return null;
    }
    public function getOpenGraph_video_secure_url() {
        return null;
    }
    public function getOpenGraph_locale_alternate() {
        return null;
    }
    public function getOpenGraph() {
        $tags = '';

        $siteConfig = SiteConfig::current_site_config();

        foreach (OpenGraphExtension::$keys as $k) {

            $key = str_replace(':', '_', $k);
            $action = "getOpenGraph_$key";
            $val = $this->owner->$action();
            if ($val) {
                $val = Convert::raw2att($val);
                $tags .= "<meta property=\"og:$k\" content=\"$val\" />\n";
            }
        }

        $tags .= "<meta property=\"fb:app_id\" content=\"127918570561161\" />\n";
        $tags .= '<meta name="twitter:card" content="summary_large_image" />' . "\n";
        $tags .= '<meta name="twitter:title" content="' . $this->getOpenGraph_title() . '">' . "\n";
        $tags .= '<meta name="twitter:description" content="' . $this->getOpenGraph_description() . '" />' . "\n";

        if ($image = $this->getOpenGraphImage()) {
            $tags .= '<meta name="twitter:image" content="' . $image->getAbsoluteURL() . '" />' . "\n";
        }


        return $tags;
    }
}
