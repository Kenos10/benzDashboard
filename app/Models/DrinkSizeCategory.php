<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class DrinkSizeCategory extends Model
{
    use HasFactory;

    public $table = "drink_size";

    public function drink_price(): HasMany
    {
        return $this->hasMany(DrinkPrice::class, 'size_id');
    }    
}
