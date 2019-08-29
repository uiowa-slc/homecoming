<?php
class CalendarExtension extends DataExtension {

	private static $db = array(
	);

	private static $has_one = array(
	);


	public function EventsToday(){
		$calendar = $this->owner;
		$today = sfDate::getInstance()->date();
		$events = $calendar->getEventList($today,$today);
		return $events;
	}

	public function AllEvents(){
		$calendar = $this->owner;
		$events = $calendar->getEventList('1900-01-01','3000-01-01');
		return $events;
	}

	public function AllDates() {
		// $dates = CalendarDateTime::get();
		// $datesArray = $dates->toArray();

		// $datesArrayList = new ArrayList($datesArray);
		// $datesArrayList->removeDuplicates('StartDate');
		$calendar = $this->owner;
		$datesArrayList = new ArrayList();

		$dates = $calendar->getEventList('1900-01-01','3000-01-01');
		foreach($dates as $date){
			$datesArrayList->push($date);
		} 
		$datesArrayList->removeDuplicates('StartDate');
		return $datesArrayList;
	}

	public function EventsByCategory($categoryName){
		$category = Category::get()->filter(array('Title' => $categoryName))->First();
		$catEvents = new ArrayList();

		if($category){

			$catEventsTemp = $category->CalendarEvents();


			foreach($catEventsTemp as $catEventTemp){

				if($catEventTemp->UpcomingDates()->First()){
					$catEvents->push($catEventTemp->UpcomingDates()->First());
				}
			}

		}

		$catEventsSorted = $catEvents->sort('StartDate ASC');

		// print_r($catEvents);

		return $catEventsSorted;
		

	}

	// public function EventsByCategory($categoryName){
	// 	$category = Category::get()->filter(array('Title' => $categoryName))->First();
	// 	$allEvents = $this->AllEvents();

	// 	if($category){

	// 		$catEventsTemp = $category->CalendarEvents();


	// 		foreach($catEventsTemp as $catEventTemp){

	// 			if($catEventTemp->UpcomingDates()->First()){
	// 				$catEvents->push($catEventTemp);
	// 			}
	// 		}

	// 	}

	// 	// print_r($catEvents);

	// 	return $catEvents;
		

	// }

}
