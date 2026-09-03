<?php

return [
    'COMPANY_CODE' => 'WSFINAI123',
    'uat_mobile_numbers' => array_filter(explode(',', env('UAT_MOBILE_NUMBERS', ''))),
    'LA_OFFER_1' => 'la-offer-1',
    'LA_OFFER_2' => 'la-offer-2',
    'LA_OFFER_3' => 'la-offer-3',
    'LA_OFFER_4' => 'la-offer-4',
    'LA_OFFER_5' => 'la-offer-5',
    'LA_OFFER_6' => 'la-offer-6',
    'SA_OFFER_1' => 'sa-offer-1',
    'SA_OFFER_2' => 'sa-offer-2',
    'SA_OFFER_3' => 'sa-offer-3',
    'SA_OFFER_4' => 'sa-offer-4',
    'SA_OFFER_5' => 'sa-offer-5',
    'SA_OFFER_6' => 'sa-offer-6',
    'SA_OFFER_7' => 'sa-offer-7',

    'APP_NAME'      => env('APP_NAME'),
    'WEBSITE'          => env('WEBSITE', 'wisefinai.com'),
    'COMPANY_NAME'     => env('COMPANY_NAME', 'WiseFinAI'),
    'COMPANY_ADDRESS'  => env('COMPANY_ADDRESS'),
    'COMPANY_MOBILE'   => env('COMPANY_MOBILE'),
    'COMPANY_INFO_MAIL' => env('COMPANY_INFO_MAIL'),
    'COMPANY_SUPPORT_MAIL' => env('COMPANY_SUPPORT_MAIL'),
    'INFO_EMAIL'       => env('INFO_EMAIL'),

    'CIN_NO'           => env('CIN_NO'),
    'GST_NO'           => env('GST_NO'),

    'UAT_MOBILE_NUMBERS' => env('UAT_MOBILE_NUMBERS', ''),

    'STATIC_NO'         => env('STATIC_NO', ''),

    'SM_FACEBOOK'      => env('SM_FACEBOOK'),
    'SM_INSTAGRAM'     => env('SM_INSTAGRAM'),
    'SM_LINKEDIN'      => env('SM_LINKEDIN'),
    'SM_TWITTER'       => env('SM_TWITTER'),
    'SM_YOUTUBE'       => env('SM_YOUTUBE'),
    'SM_PINTEREST'     => env('SM_PINTEREST'),
    'SM_QUORA'         => env('SM_QUORA'),
    'SM_REDDIT'        => env('SM_REDDIT'),

    'SMS_OBB_USERNAME'      => env('SMS_OBB_USERNAME'),
    'SMS_OBB_PASSWORD'      => env('SMS_OBB_PASSWORD'),
    'SMS_OBB_SENDER_ID'     => env('SMS_OBB_SENDER_ID'),

    'SMS_OBB_LA_USERNAME'   => env('SMS_OBB_LA_USERNAME'),
    'SMS_OBB_LA_PASSWORD'   => env('SMS_OBB_LA_PASSWORD'),
    'SMS_OBB_LA_SENDER_ID'  => env('SMS_OBB_LA_SENDER_ID'),

    'GEOLOC_KEY'            => env('GEOLOC_KEY'),

    'RAZOR_KEY_ID'          => env('RAZOR_KEY_ID'),
    'RAZOR_KEY_SECRET'      => env('RAZOR_KEY_SECRET'),

    'BREVO_API_KEY'         => env('BREVO_API_KEY'),

    'PHONEPE_MERCHANT_ID'      => env('PHONEPE_MERCHANT_ID', ''),
    'PHONEPE_MERCHANT_USER_ID' => env('PHONEPE_MERCHANT_USER_ID', ''),
    'PHONEPE_ENV'              => env('PHONEPE_ENV', 'PRODUCTION'),
    'PHONEPE_SALT_KEY'         => env('PHONEPE_SALT_KEY', ''),
    'PHONEPE_SALT_INDEX'       => env('PHONEPE_SALT_INDEX', 1),

    'AIRPAY_MERCHENT_ID' => env('AIRPAY_MERCHENT_ID', ''),
    'AIRPAY_USERNAME'    => env('AIRPAY_USERNAME', ''),
    'AIRPAY_PASSWORD'    => env('AIRPAY_PASSWORD', ''),
    'AIRPAY_API_KEY'     => env('AIRPAY_API_KEY', ''),

    'LYRA_MODE'    => env('LYRA_MODE', 'PROD'),
    'LYRA_SHOP_ID' => env('LYRA_SHOP_ID', ''),
    'LYRA_LCID'    => env('LYRA_LCID', ''),
    'LYRA_MCC'     => env('LYRA_MCC', ''),
    'LYRA_API_KEY' => env('LYRA_API_KEY', ''),

    'SABPAISA_MODE'        => env('SABPAISA_MODE', 'PROD'),
    'SABPAISA_CLIENT_CODE' => env('SABPAISA_CLIENT_CODE', ''),
    'SABPAISA_USERNAME'    => env('SABPAISA_USERNAME', ''),
    'SABPAISA_PASSWORD'    => env('SABPAISA_PASSWORD', ''),
    'SABPAISA_AUTH_KEY'    => env('SABPAISA_AUTH_KEY', ''),
    'SABPAISA_AUTH_IV'     => env('SABPAISA_AUTH_IV', ''),

    'ZAAKPAY_ENV'                 => env('ZAAKPAY_ENV', 'PRODUCTION'),
    'ZAAKPAY_MERCHANT_IDENTIFIER' => env('ZAAKPAY_MERCHANT_IDENTIFIER', ''),
    'ZAAKPAY_SECRET_KEY'          => env('ZAAKPAY_SECRET_KEY', ''),
    'ZAAKPAY_API_KEY'             => env('ZAAKPAY_API_KEY', ''),

    'CASHFREE_APP_ID'     => env('CASHFREE_APP_ID', ''),
    'CASHFREE_SECRET_KEY' => env('CASHFREE_SECRET_KEY', ''),
    'CASHFREE_MODE'       => env('CASHFREE_MODE', 'PROD'),

    'PAYGIC_PAYMENT_MODE' => env('PAYGIC_PAYMENT_MODE', ''),
    'PAYGIC_MERCHANT_ID'  => env('PAYGIC_MERCHANT_ID', ''),
    'PAYGIC_PASSWORD'     => env('PAYGIC_PASSWORD', ''),

    'AISENSY_SELF_KEY'   => env('AISENSY_SELF_KEY', ''),
    'SELF_CAMPAIGN_NAME' => env('SELF_CAMPAIGN_NAME', ''),
    'SELF_MEDIA_URL'     => env('SELF_MEDIA_URL', ''),
    'SELF_MEDIA_FILE'    => env('SELF_MEDIA_FILE', ''),

    'AISENSY_HIRE_KEY'   => env('AISENSY_HIRE_KEY', ''),
    'HIRE_CAMPAIGN_NAME' => env('HIRE_CAMPAIGN_NAME', ''),
    'HIRE_MEDIA_URL'     => env('HIRE_MEDIA_URL', ''),
    'HIRE_MEDIA_FILE'    => env('HIRE_MEDIA_FILE', ''),

    'SELF_INTERAKT_KEY'     => env('SELF_INTERAKT_KEY', ''),
    'HIRE_INTERAKT_KEY'     => env('HIRE_INTERAKT_KEY', ''),
    'SELF_INTERAKT_KEY_OLD' => env('SELF_INTERAKT_KEY_OLD', ''),
    'HIRE_INTERAKT_KEY_OLD' => env('HIRE_INTERAKT_KEY_OLD', ''),

    "PAYU_TEST_URL" => 'https://test.payu.in/_payment',
    "PAYU_PROD_URL" => 'https://secure.payu.in/_payment',
    'PAYU_MODE' => env('PAYU_MODE', ''),
    'PAYU_MERCHANT_KEY' => env('PAYU_MERCHANT_KEY', ''),
    'PAYU_MERCHANT_SALT' => env('PAYU_MERCHANT_SALT', ''),
    'PAYU_SALT' => env('PAYU_SALT', ''),

    'VEEGAH_TERMINAL_ID' => env('VEEGAH_TERMINAL_ID', ''),
    'VEEGAH_TERMINAL_PASSWORD' => env('VEEGAH_TERMINAL_PASSWORD', ''),
    'VEEGAH_MERCHANT_KEY' => env('VEEGAH_MERCHANT_KEY', ''),
    'VEEGAH_PROD' => env('VEEGAH_PROD', ''),

    'ENC_PASS' => env('ENC_PASS', ''),
    'KEY_ID' => env('KEY_ID', ''),
    'CLIENT_ID' => env('CLIENT_ID', ''),
    'SECURE_SALT' => env('SECURE_SALT', ''),
    'MERCHANT_ID' => env('MERCHANT_ID', ''),
    'CU_PAYOUT_RATIO' => env('CU_PAYOUT_RATIO', ''),
    'SIGN_PASS' => env('SIGN_PASS', ''),
    'OPENMONEY_MODE' => env('OPENMONEY_MODE', ''),
    'SUBSCRIPTION_EXPIRY' => env('SUBSCRIPTION_EXPIRY', ''),
    'HIREAGENT_PLAN_VALIDITY' => env('HIREAGENT_PLAN_VALIDITY', '')

];
