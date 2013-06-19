<?php
/**
 * Defines the Minisite page type
 */
class HomecomingSponsorObject extends DataObject {   
	public static $db = array(
	'Title' => 'Text',
	'URL' => 'Text',
	'Description' => 'HTMLText',
	);
	static $has_one = array(
	'HomecomingSponsors' => 'Homecoming2011Page',
	'SponsorImage' => 'Image'
	);
	function getCMSFields_forPopup() {
		$fields = new FieldSet();
		$fields->push( new TextField('Title','ALT for the image.') );
		$fields->push( new TextField('URL','URL to link to.') );
		$fields->push( new ImageField('SponsorImage') );
		return $fields;
	}
}

?>