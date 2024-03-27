<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Benz Coffee</title>
        <!-- HEADER -->
        @include('include.header')
    </head>
    <body class="scroll-assist" style="background-color: #f2f2f2;">

        <!-- Navbar Section-->
        @include('include.navbar')
        
        <div class="main-container">

        <!-- Introduction Section-->
         @include('include.intro')


         <!-- Menu Section -->
         @include('include.menu')

         <!-- Feature and Map Section -->
         @include('include.featured-map')
            
        <!-- Footer Section -->
        @include('include.footer')
        </div>
         <!-- Footer Javascript Section -->
        @include('include.footer-javascript')
    </body>
</html>