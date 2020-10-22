<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;

class SiteConfigExtension extends DataExtension {

	static $db = array(
		'DateRange' => 'Text',
	);

	static $has_one = array(

	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab('Root.Main', new TextField('DateRange', 'Homecoming Dates'));

		return $fields;

	}

}
