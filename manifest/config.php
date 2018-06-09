<?php
    $settings = array(


        ###### ADMIN ######
        'admin' => array(
            'max_upload_size' => '5242880',
            'upload_blacklist' => '/\\.(?:php[34567s]?|phtml)$/i',
        ),
        ########


        ###### SYMPHONY ######
        'symphony' => array(
            'admin-path' => 'zooshme',
            'pagination_maximum_rows' => '20',
            'association_maximum_rows' => '5',
            'lang' => 'en',
            'pages_table_nest_children' => 'no',
            'version' => '2.7.6',
            'cookie_prefix' => 'sym-',
            'session_gc_divisor' => '10',
            'cell_truncation_length' => '75',
            'enable_xsrf' => 'yes',
            'error_reporting_all' => 'no',
        ),
        ########


        ###### LOG ######
        'log' => array(
            'archive' => '1',
            'maxsize' => '102400',
            'filter' => 24575,
        ),
        ########


        ###### DATABASE ######
        'database' => array(
            'host' => 'localhost',
            'port' => '3306',
            'user' => 'root',
            'password' => 'root',
            'db' => 'lunchout_app',
            'tbl_prefix' => 'sym_',
            'query_caching' => 'on',
            'query_logging' => 'on',
        ),
        ########


        ###### PUBLIC ######
        'public' => array(
            'display_event_xml_in_source' => 'no',
        ),
        ########


        ###### GENERAL ######
        'general' => array(
            'sitename' => 'Lunch Out',
            'useragent' => 'Symphony/2.7.6',
        ),
        ########


        ###### FILE ######
        'file' => array(
            'write_mode' => '0666',
        ),
        ########


        ###### DIRECTORY ######
        'directory' => array(
            'write_mode' => '0777',
        ),
        ########


        ###### REGION ######
        'region' => array(
            'time_format' => 'H:i:s',
            'date_format' => 'd F Y',
            'datetime_separator' => ' ',
            'timezone' => 'Europe/London',
        ),
        ########


        ###### CACHE_DRIVER ######
        'cache_driver' => array(
            'default' => 'database',
        ),
        ########


        ###### IMAGE ######
        'image' => array(
            'cache' => '1',
            'quality' => '90',
            'allow_origin' => null,
            'disable_regular_rules' => 'no',
            'disable_upscaling' => 'no',
            'disable_proxy_transform' => 'no',
        ),
        ########


        ###### MAINTENANCE_MODE ######
        'maintenance_mode' => array(
            'enabled' => 'no',
            'ip_whitelist' => null,
            'useragent_whitelist' => null,
        ),
        ########


        ###### MEMBERS ######
        'members' => array(
            'cookie-prefix' => 'sym-members',
            'section' => '7',
        ),
        ########


        ###### HASHID_FIELD ######
        'hashid_field' => array(
            'hash_salt' => 'Lunch Out',
            'hash_length' => '5',
        ),
        ########


        ###### DATETIME ######
        'datetime' => array(
            'english' => 'en, en_GB.UTF8, en_GB',
        ),
        ########


        ###### GLOBALPARAMETERLOADER ######
        'globalparameterloader' => array(
            'allow-eval' => 'yes',
        ),
        ########
    );
