<!DOCTYPE html>
<html>

<head>
    <title>PayU - Payment Process</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<body onload="document.frm1.submit()">

    <form action="{{ $data['action'] }}" name="frm1" method="post">
        <p>Please wait.......</p>
        <input type="hidden" name="key" value="{{ $data['key'] }}">
        <input type="hidden" name="txnid" value="{{ $data['txnid'] }}">
        <input type="hidden" name="amount" value="{{ $data['amount'] }}">
        <input type="hidden" name="productinfo" value="{{ $data['productinfo'] }}">
        <input type="hidden" name="firstname" value="{{ $data['firstname'] }}">
        <input type="hidden" name="email" value="{{ $data['email'] }}">
        <input type="hidden" name="phone" value="{{ $data['phone'] }}">
        <input type="hidden" name="udf1" value="{{ $data['udf1'] }}">
        <input type="hidden" name="hash" value="{{ $data['hash'] }}">
        <input type="hidden" name="surl" value="{{ $data['surl'] }}">
        <input type="hidden" name="furl" value="{{ $data['furl'] }}">
        <input type="hidden" name="service_provider" value="payu_paisa">
    </form>
</body>

</html>