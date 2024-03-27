<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class DrinksCategory extends Model
{
    use HasFactory;

    public $table = "drinks_category";

    public function drinks(): HasMany
    {
        return $this->hasMany(Drinks::class, 'category_id');
    }
}
