<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\DrinkPrice;
use App\Models\DrinksCategory;
use App\Models\Drinks;
use App\Models\DrinkSizeCategory;
use App\Models\Meals;
use App\Models\MealsCategory;
use App\Models\GroupMeals;
use App\Models\GroupMealsCat;


class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function welcome()
    {
        // Nav
        $drink_categories = DrinksCategory::whereNotIn('name', ['extra'])->get();
        $meal_categories = MealsCategory::whereNotIn('name', ['extra'])->get();
        $navbar_categories = $drink_categories->concat($meal_categories);
    
        // Drinks Category 
        $drinks_category = DrinksCategory::whereHas('drinks.drinks_price', function($query) {
            $query->whereHas('drinks_size', function($subQuery) {
                $subQuery->whereNotNull('size_id');
            });
        })->with(['drinks.drinks_price' => function($query) {
            $query->whereHas('drinks_size', function($subQuery) {
                $subQuery->whereNotNull('size_id');
            });
        }])->orderBy('updated_at', 'asc')->get();
    
        $drinks_size_null = DrinksCategory::whereHas('drinks.drinks_price', function($query) {
            $query->whereDoesntHave('drinks_size', function($subQuery) {
                $subQuery->whereNotNull('size_id');
            });
        })->with(['drinks.drinks_price' => function($query) {
            $query->whereDoesntHave('drinks_size', function($subQuery) {
                $subQuery->whereNotNull('size_id');
            });
        }])->orderBy('image', 'desc')->get();        
    
        // Meals Category
        $meals_category = MealsCategory::whereNotIn('name', ['RICE MEALS'])
                                ->whereNotIn('name', ['extra'])
                                ->get();


        // Group Meals
        $group_meals_category = GroupMealsCat::with('groupMeals')->get();
        $meals_category_rice = MealsCategory::whereIn('name', ['RICE MEALS'])->get();

        //Extra
        $meals_category_extra = MealsCategory::whereIn('name', ['extra'])->get();
        
        return view('welcome', compact(
            'navbar_categories',
            'meals_category',
            'drinks_category',
            'drinks_size_null',
            'group_meals_category',
            'meals_category_rice',
            'meals_category_extra'
        ));
    }    
    
}
