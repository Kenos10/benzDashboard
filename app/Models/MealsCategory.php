<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class MealsCategory extends Model
{
    use HasFactory;

    public $table = "meals_category";

    public function meals(): HasMany
    {
        return $this->hasMany(Meals::class, 'category_id');
    }
}
