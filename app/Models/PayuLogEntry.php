<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayuLogEntry extends Model
{
    use HasFactory;

    protected $table = 'payu_log_entry';

    protected $primaryKey = 'id';

    public $timestamps = false;

    protected $fillable = [
        'rec_date',
        'entryfor',
        'userid',
        'orderid',
        'orderamount',
        'ordernote',
        'referenceid',
        'txstatus',
        'paymentmode',
    ];

    protected $casts = [
        'rec_date' => 'datetime',
        'orderamount' => 'float',
    ];
}