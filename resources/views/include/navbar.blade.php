	<div class="nav-container">
		    <nav class="bg-dark sticky-top">
		        <div class="nav-bar text-center">
		            <div class="col-md-2 col-md-push-5 col-sm-12 text-center">
		                <a href="#">
		                    <img alt="logo" class="image-xxs" src="img/coffee/logo-white.png">
		                </a>
		            </div>
		
		            <div class="col-sm-12 col-md-5 col-md-pull-2 overflow-hidden-xs">
		                <ul class="menu inline-block pull-right">
		                    <li><a href="#">MENU</a>
                            <ul style="margin-right: -70px">
                                @foreach($navbar_categories as $category)
                                    <li style="margin-left: 5px"><a href="#{{ $category->name }}">{{ $category->name }}</a></li>
                                @endforeach
                            </ul>
		                    </li>
		                </ul>
		            </div>
		        
		            <div class="col-sm-12 col-md-5 pb-xs-24">
		                <ul class="menu">
		                    <li><a href="#contactus">Contact Us</a></li>
		                </ul>
		            </div>
		        </div>
		
		        <div class="module widget-handle mobile-toggle right visible-sm visible-xs absolute-xs">
		            <i class="ti-menu"></i>
		        </div>
		    </nav>
		</div>
