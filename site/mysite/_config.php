<?php

global $project;
$project = 'RCM';

global $database;
//$database = 'SS_mysite';
$database = 'sq_rcm2016';

require_once('conf/ConfigureFromEnv.php');


// Set the site locale
i18n::set_locale('en_NZ');

//i18n::$common_languages = array_merge(i18n::$common_languages, array('zh'=>array('Chinese','中国的')));
//i18n::$common_locales = array_merge(i18n::$common_locales, array('zh_CN'=>array('Chinese','中国的'));

//default translation
Translatable::set_default_locale('en_NZ');

/* restrict the language select dropdown in the admin
   to only those languages that you will actually use.
   In my case, NZ English, Chinese*/
Translatable::set_allowed_locales(array(
   'en_NZ', //NZ English
   'zh_CN'  //Chinese
   )
);

Object::add_extension('SiteTree', 'Translatable');
Object::add_extension('SiteConfig', 'Translatable'); // 2.4 or newer only
