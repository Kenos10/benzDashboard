<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DrinkPrice extends Model
{
    use HasFactory;

    public $table = "drink_size_price";

    public function drink_items(): BelongsTo
    {
        return $this->belongsTo(Drinks::class, 'drink_id');
    }

    public function drinks_size(): BelongsTo
    {
        return $this->belongsTo(DrinkSizeCategory::class, 'size_id');
    }
}
