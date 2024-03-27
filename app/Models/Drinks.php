<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Drinks extends Model
{
    use HasFactory;

    public $table = "drinks";

    public function drinks_category(): BelongsTo
    {
        return $this->belongsTo(DrinksCategory::class, "category_id");
    }

    public function drinks_price(): HasMany
    {
        return $this->hasMany(DrinkPrice::class, 'drink_id');
    }
}
