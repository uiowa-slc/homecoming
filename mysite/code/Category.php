<?php

use SilverStripe\ORM\DataObject;

class Category extends DataObject {

	private static $db = array(
		"Title" => "Varchar(155)",
	);

	private static $belongs_many_many = array('CalendarEvents' => 'CalendarEvent');

}
