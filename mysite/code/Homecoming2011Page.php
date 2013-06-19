<?php
/**
 * Defines the HomePage page type
 */
 
class Homecoming2011Page extends Page {
	static $db = array(
	);
	static $has_one = array(
	);
	static $has_many = array(
		'HomecomingSponsors' => 'HomecomingSponsorObject'
	);
	function getCMSFields() {
	$fields = parent::getCMSFields();
	/* $fields->removeFieldFromTab("Root.Content","Main");*/
	$tablefield = new DataObjectManager(
			$this,
			'HomecomingSponsors', // the name of the relationship
			'HomecomingSponsorObject', // the related table 
			array(
				"Title" => "Title"
			),
			'getCMSFields_forPopup' // the function to build the add/edit form
		);	
	$fields->addFieldToTab( 'Root.Content.Objects', $tablefield );
	
	return $fields;
	}
}
 
class Homecoming2011Page_Controller extends Page_Controller {
	
	
	public function Events(){
		$events = DataObject::get("EventWeekday");	
		
		if($events)
			return $events;
			
		$concert = DataObject::get("Concert");	
		
		if($concert)
			return $concert;
			
		$parade = DataObject::get("Parade");	
		
		if($parade)
			return $parade;
			
		$court = DataObject::get("Court");	
		
		if($court)
			return $court;
			
		$habitat = DataObject::get("Habitat");	
		
		if($habitat)
			return $habitat;
	
		
		$council = DataObject::get("Council");	
		
		if($council)
			return $council;
	
		
		$scholarship = DataObject::get("Scholarship");	
		
		if($scolarship)
			return $scholarship;
		
	}
	
}
?>