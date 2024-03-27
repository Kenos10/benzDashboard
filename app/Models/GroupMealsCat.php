<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class GroupMealsCat extends Model
{
    use HasFactory;

    public $table = "group_meals_cat";

    public function groupMeals(): HasMany
    {
        return $this->hasMany(GroupMeals::class, 'category_id');
    }
}
