<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Meals extends Model
{
    use HasFactory;

    public $table = "meals";

    public function mealsCategory(): BelongsTo
    {
        return $this->belongsTo(MealsCategory::class, 'category_id');
    }
}
