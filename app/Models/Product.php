<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Product extends Model
{

        function user(): BelongsTo
        {
          return $this->belongsTo(User::class);
        }

        function category(): BelongsTo
        {
            return $this->belongsTo(Category::class);
        }
}
