<?php

use SilverStripe\Security\Member;
use SilverStripe\Security\PasswordValidator;
// remove PasswordValidator for SilverStripe 5.0
$validator = new PasswordValidator();

$validator->minLength(8);
$validator->checkHistoricalPasswords(6);
Member::set_password_validator($validator);
