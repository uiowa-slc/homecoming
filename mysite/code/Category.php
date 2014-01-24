<?php
class Category extends DataObject {

	private static $db = array(
		"Title" => "varchar(155)"
	);

	private static $belongs_many_many = array('CalendarEvents'=>'CalendarEvent');


}
