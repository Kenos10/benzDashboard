<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class GroupMeals extends Model
{
    use HasFactory;

    public $table = 'group_meals';

    public function groupMealsCat(): BelongsTo
    {
        return $this->belongsTo(GroupMealsCat::class, 'category_id');
    }
}
