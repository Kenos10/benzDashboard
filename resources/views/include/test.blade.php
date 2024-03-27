@if($category->name === 'Rice Meals & Benz Breakfast')
<div class="row">
    <div class="col-md-8 ">
        <h3 class="uppercase text-center mb40 mb-xs-24"></h3>
        <div class="mb40">
            @if($subRmbbItem->isNotEmpty())
                <div class="col-md-4 hidden-lg">
                    <img alt="Pic" src="{{ asset('storage/' . $subRmbbItem->first()->image) }}" />
                </div>
            @endif
            
            @foreach($subRmbbItem as $item)
            <div class="row" style="padding-top: 15px;">
                <div class="col-xs-10">
                    <h5 class="mb0 uppercase">{{ $item->name }}</h5>
                    <p class="mt0 mb-xs-24">
                        {{ $item->sub_name }}
                    </p>
                </div>
                                                       
                <div class="col-xs-2">
                    <h5 class="mb8 uppercase">{{ $item->price }}</h5>
                </div>
            </div>
            @endforeach

        </div>
    </div> 
    @if($subRmbbItem->isNotEmpty())
        <div class="col-md-4 hidden-sm hidden-xs">
            <img alt="Pic" src="{{ asset('storage/' . $subRmbbItem->first()->image) }}" />
        </div>
    @endif
</div>
@endif 