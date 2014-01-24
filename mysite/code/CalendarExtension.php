<?php
class CalendarExtension extends DataExtension {

	private static $db = array(
	);

	private static $has_one = array(
	);


	public function EventsToday(){
		$calendar = $this->owner;
		$today = sfDate::getInstance()->date();
		$events = $calendar->getEventList(
                        $today,
                        $today
        );
		return $events;
	}

	public function AllDates() {
		$dates = CalendarDateTime::get();
		$datesArray = $dates->toArray();

		$datesArrayList = new ArrayList($datesArray);
		$datesArrayList->removeDuplicates('StartDate');

		return $datesArrayList;

	}
}
