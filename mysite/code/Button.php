<?php
class Button extends DataObject {

  private static $db = array(
    "Year" => "Text"

  );

  private static $has_one = array(
    "Photo" => "Image",
  );

  private static $summary_fields = array(
      'Year',
      'Thumbnail'

   );

  function getThumbnail() {
      return $this->Photo()->CMSThumbnail();
    }

  public function getCMSFields(){
    $fields = parent::getCMSFields();

    $fields->removeByName("Content");
    $fields->removeByName("Metadata");

    //$fields->addFieldToTab("Root.Main", new UploadField("ButtonPhoto", "Photo"));

    return $fields;

  }

  //private static $allowed_children = array("");

}
