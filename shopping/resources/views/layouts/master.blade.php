<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield('title')</title>
  <base href="{{asset('')}}">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="{!! asset('css/style.css') !!}">


  <!-- get jQuery from the google apis or use your own -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <!-- Scripts -->
  <script src="{{ asset('js/xzoom.min.js') }}" defer></script>
  <!-- Styles -->
  <link href="{{ asset('css/xzoom.css') }}" rel="stylesheet" media="all">


</head>

<body>

  <header>
    <div class="container-fluid">
      <div class="header-top">
        <div class="container">
          <div class="pull-left auto-width-left">
            <ul class="top-menu menu-beta l-inline">
              <li><i class="fa fa-home"></i> Cửa hàng điện thoại xin chào quý khách</li>
              <li><i class="fa fa-phone"></i> 0394367243</li>
            </ul>
          </div>
          <div class="pull-right auto-width-right">
            <ul class="top-details menu-beta l-inline">

			<!--đăng nhập đăng ký-->
			@if(Auth::check())
              <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> {!! Auth::user()->name !!}</a></li>
              <li><a href="{{route('getlogout')}}"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
              @else
                <li><a href="{{ url('/register') }}">Đăng kí</a></li>
                <li><a href="{{ url('/login') }}">Đăng nhập</a></li>
              @endif
              

              <!--đăng nhập đăng ký-->


            </ul>
          </div>
          <div class="clearfix"></div>
        </div> <!-- .container -->
      </div> <!-- .header-top -->
      <!--header bottom-->
      <div class="header-bottom">
        <div class="container">
          <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-6 logo">
              <img src="images/15.png" alt="logo">
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6 search">
              <div class="form-group timkiem">
                <form action="{{url('search')}}" method="post">
                  <input type="hidden" name="_token" value="{{csrf_token()}}">
                  <input type="text" name="key" class="form-control" placeholder="Nhập Từ Khóa Để Tìm Kiếm">
                  <button name="button" class="btn btn-default"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
              </div>

              <div class="cart">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i> <a href="{!! route('getCart') !!}">Giỏ Hàng ({{ Cart::count() }})</a>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
      <!--end header bottom-->
    </div>
    <!--menu-->
    @include('layouts.menu')
    <!--end menu-->
  </header>

  <div class="container-fluid">
    @yield('content')
  </div>







  <div id="footer" class="color-div">
    <div class="container">
      <div class="row">
        <div class="col-sm-3">
          <div class="widget">
            <h4 class="widget-title">Instagram Feed</h4>
            <div id="beta-instagram-feed">
              <div></div>
            </div>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="widget">
            <h4 class="widget-title">Hỗ trợ </h4>
            <div>
              <ul>
                <li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"> https://www.facebook.com/theanh.tran.50552338/</i></a></li>
                <li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right">0394367243 </i></a></li>


              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="col-sm-10">
            <div class="widget">
              <h4 class="widget-title">Liên hệ</h4>
              <div>
                <div class="contact-info">
                  <i class="fa fa-map-marker"></i>
                  <p>Lo j015 chung cư Đồng Diều P4 quận 8,HCM Phone: 0394367243</p>
                  <p>Khách hàng là thượng đế</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="widget">
            <h4 class="widget-title">Newsletter Subscribe</h4>
            <form action="#" method="post">
              <input type="email" name="your_email" class="form-control">
              <button class="pull-right" type="submit">Subscribe <i class="fa fa-chevron-right"></i></button>
            </form>
          </div>
        </div>
      </div> <!-- .row -->
    </div> <!-- .container -->
  </div> <!-- #footer -->



  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="{{  asset('js/jquery.min.js')}}"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="{{  asset('js/bootstrap.min.js')}}"></script>

  <script src="{{  asset('js/setup.js')}}"></script>


  @yield('script')
</body>

</html>