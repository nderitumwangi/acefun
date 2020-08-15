<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MpesaCallback extends Model
{
    //
    protected $fillable = [
        'checkout_request_id',
        'checkout_request_body'
    ];
}
