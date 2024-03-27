<section class="small">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="feature bordered hidden-xs hidden-sm bg-primary">
                    <div class="row">
                        <div class="col-md-8">
                            <h1 class="large uppercase mb64 mb-xs-24">menu</h1>
                            <p style="font-size: 16px;">
                                Need a break from coffee? Try one of our refreshing teas or iced beverages.
                            </p>
                        </div>
                        <div class="col-md-4">
                            <img  alt="Pic" src="img/coffee/c1.jpg" />
                        </div>
                    </div>
                </div>        

                {{-- Meals --}}
                 @foreach($meals_category as $category)
                 <div id="{{ $category->name }}" class="feature bordered text-left bg-secondary">
                     <div class="row">
                         <div class="col-md-8 ">
                             <h3 class="uppercase text-center mb40 mb-xs-24">{{ $category->name }}</h3>
                             <div class="mb40">
                                 <div class="col-md-4 m-img hidden-lg">
                                     <img  alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                 </div>
                                 @foreach($category->meals as $meal)
                                 <div class="row" style="padding-top: 15px;">
                                     <div class="col-xs-10">
                                         <h5 class="mb8 uppercase">{{ $meal->name }}</h5>
                                     </div>                                       
                                     <div class="col-xs-2">
                                         <h5 class="mb8 uppercase">{{ $meal->price }}</h5>
                                     </div>
                                 </div>
                                 @endforeach        
                             </div>
                         </div>
                         <div class="col-md-4  hidden-sm hidden-xs">
                             <img  alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                         </div>
                     </div>
                         </div>
                 @endforeach

                {{-- Rice Meals & Breakfast --}}
                @foreach($meals_category_rice as $category)
                            <div id="{{ $category->name }}" class="feature bordered text-left bg-secondary">
                                <div class="row">
                                    <div class="col-md-8 ">
                                        <h3 class="uppercase text-center mb40 mb-xs-24">{{ $category->name }}</h3>
                                        <div class="mb40">
                                            <div class="col-md-4 m-img hidden-lg">
                                                <img  alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                            </div>
                                            @foreach($category->meals as $meal)
                                            <div class="row" style="padding-top: 15px;">
                                                <div class="col-xs-10">
                                                    <h5 class="mb8 uppercase">{{ $meal->name }}</h5>
                                                </div>                                       
                                                <div class="col-xs-2">
                                                    <h5 class="mb8 uppercase">{{ $meal->price }}</h5>
                                                </div>
                                            </div>
                                            @endforeach        
                                        </div>
                                    </div>
                                    <div class="col-md-4  hidden-sm hidden-xs">
                                        <img  alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                    </div>
                                </div>
                                
                                {{-- BreakFast --}}
                                @if($group_meals_category->isNotEmpty())
                                <div class="row pt-4">
                                    <div class="col-md-8">
                                        <h3 class="uppercase text-center mb40 mb-xs-24"></h3>
                                        <div class="mb40">
                                            <div class="col-md-4 hidden-lg">
                                                <img alt="Pic" src="{{ asset('storage/' . $group_meals_category->first()->image) }}" />
                                            </div>
                                            
                                            @foreach($group_meals_category as $category)
                                                <div class="row" style="padding-top: 15px;">
                                                    <div class="col-xs-10">
                                                        <h5 class="mb0 uppercase">{{ $category->name }}</h5>
                                                        @php
                                                            $mealNames = [];
                                                            $totalPrice = 0;
                                                        @endphp
                                                        @foreach($category->groupMeals as $meal)
                                                            @php
                                                                $mealNames[] = $meal->name;
                                                                $totalPrice += $meal->price;
                                                            @endphp
                                                        @endforeach
                                                            <p class="mt0 mb-xs-24">
                                                                (
                                                                    {{ implode(', ', array_slice($mealNames, 0, -1)) }}
                                                                    @if(count($mealNames) > 1)
                                                                        & {{ end($mealNames) }}
                                                                    @else
                                                                        {{ end($mealNames) }}
                                                                    @endif
                                                                )
                                                            </p>
                                                    </div>

                                                    <div class="col-xs-2">
                                                        <h5 class="mb8 uppercase">{{ $totalPrice }}</h5>
                                                    </div>                                      
                                                </div>
                                            @endforeach
                                        </div>
                                    </div> 
                                        <div class="col-md-4 hidden-sm hidden-xs"> 
                                            <img alt="Pic" src="{{ asset('storage/' . $group_meals_category->random()->image) }}" />
                                        </div>
                                </div>
                            @endif
                                                    
                        </div>
                 @endforeach

                {{-- Meals Extra Rice Meals--}}
                @foreach($meals_category_extra as $category)
                    <div id="{{ $category->name }}" class="feature bordered text-left bg-secondary">
                        <div class="row">
                            <div class="col-md-8 ">
                                <h3 class="uppercase text-center mb40 mb-xs-24">{{ $category->name }}</h3>
                                <div class="mb40">
                                    <div class="col-md-4 m-img hidden-lg">
                                        <img  alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                    </div>
                                        @foreach($category->meals as $meal)
                                            <div class="row" style="padding-top: 15px;">
                                                <div class="col-xs-10">
                                                    <h5 class="mb8 uppercase">{{ $meal->name }}</h5>
                                                </div>                                       
                                                <div class="col-xs-2">
                                                    <h5 class="mb8 uppercase">{{ $meal->price }}</h5>
                                                </div>
                                            </div>
                                        @endforeach        
                                </div>
                            </div>
                                <div class="col-md-4  hidden-sm hidden-xs">
                                    <img  alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                </div>
                        </div>
                    </div>
                @endforeach
               


                {{-- Drinks --}}
                @foreach($drinks_category as $category)
                    <div id="{{ $category->name }}" class="feature bordered text-left bg-secondary">
                        <div class="row">
                            @if(!empty($category->image))
                                <div class="col-md-8">
                            @else
                                <div class="container">
                            @endif

                                <h3 class="uppercase text-center mb40 mb-xs-24">{{ $category->name }}</h3>
                                <div class="mb40" style="margin-right: 15px;">
                                    @if(!empty($category->image))
                                        <div class="col-md-4 hidden-lg">
                                            <img alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                        </div>
                                    @endif

                                    <div class="row" style="padding-top: 15px;">
                                        <div class="col-xs-8">
                                            <h5 class="mb8 uppercase"></h5>
                                        </div>
                                        {{-- Check if drinks and their prices exist --}}
                                        @if($category->drinks->isNotEmpty() && $category->drinks->first()->drinks_price->isNotEmpty())
                                            {{-- Iterate through drink prices of the first drink --}}
                                            @foreach($category->drinks->first()->drinks_price as $index => $drink_price)
                                                {{-- Display only two different sizes --}}
                                                @if($index < 2 && $drink_price->drinks_size)
                                                    <div class="col-xs-2">
                                                        <h5 class="mb8">{{ $drink_price->drinks_size->name }}</h5>
                                                    </div>
                                                @endif
                                            @endforeach
                                        @endif
                                    </div>

                                    @foreach($category->drinks as $drink)
                                        <div class="row">
                                            <div class="col-xs-8">
                                                <h5 class="mb8 uppercase">{{ $drink->name }}</h5>
                                            </div>
                                            {{-- Check if drink prices exist --}}
                                            @if($drink->drinks_price->isNotEmpty())
                                                {{-- Fetch unique prices for the drink --}}
                                                @php 
                                                    $uniquePrices = $drink->drinks_price->unique('price')->pluck('price')->toArray(); 
                                                @endphp
                                                @foreach($uniquePrices as $price)
                                                    <div class="col-xs-2">
                                                        <h5 class="mb8 uppercase">{{ $price }}</h5>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    @endforeach


                                </div>
                            </div>
                            @if(!empty($category->image))
                                <div class="col-md-4 hidden-sm hidden-xs">
                                    <img alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                </div>
                            @endif
                        </div>
                    </div>
                @endforeach     

                @foreach($drinks_size_null as $category)
                            <div id="{{ $category->name }}" class="feature bordered text-left bg-secondary">
                                <div class="row">
                                    @if(empty($category->image))
                                        <div class="container">
                                    @else
                                        <div class="col-md-8">
                                    @endif
                                            
                                        <h3 class="uppercase text-center mb40 mb-xs-24">{{ $category->name }}</h3>
                                        <div class="mb40">
                                            @if(!empty($category->image))
                                                <div class="col-md-4 hidden-lg">
                                                    <img alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                                </div>
                                            @endif
                                            
                                            @foreach($category->drinks as $drink)
                                            <div class="row" style="padding-top: 15px;">
                                                <div class="col-xs-10">
                                                    <h5 class="mb8">{{ $drink->name }}</h5>
                                                </div>
                                                @if($drink->drinks_price->isNotEmpty())
                                                    @php 
                                                        $uniquePrices = $drink->drinks_price->unique('price')->pluck('price')->toArray(); 
                                                    @endphp
                                                    @foreach($uniquePrices as $price)
                                                        <div class="col-xs-2">
                                                            <h5 class="mb8 uppercase">{{ $price }}</h5>
                                                        </div>
                                                    @endforeach
                                                @endif
                                            </div>
                                            @endforeach
                                               
                                        </div>
                                    </div>
                                    
                                    @if(!empty($category->image))
                                        <div class="col-md-4 hidden-sm hidden-xs">
                                            <img alt="Pic" src="{{ asset('storage/' . $category->image) }}" />
                                        </div>
                                    @endif

                                </div>       
                            </div>
                @endforeach


            </div>
     </div>
 </div>
</section>