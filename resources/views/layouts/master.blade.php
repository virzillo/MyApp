<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{url('/')}}/assets/images/favicon.png">
    <title>@yield('title')</title>
    <!-- Bootstrap Core CSS -->
    <link href="{{url('/')}}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    @stack('style')
    <!-- Custom CSS -->
    <link href="{{url('/')}}/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="{{url('/')}}/css/colors/blue.css" id="theme" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>


    <!-- Main wrapper - style you can find in pages.scss -->
    <div id="main-wrapper">


        <!-- Topbar header - style you can find in pages.scss -->
       @include('layouts.header')
        <!-- End Topbar header -->



        <!-- Left Sidebar - style you can find in sidebar.scss  -->
      @include('layouts.sidebar')
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->


        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Container fluid  -->

            <div class="container-fluid">

                <!-- Bread crumb and right sidebar toggle -->
                {{-- @yield('breadcrumb') --}}
                <!-- End Bread crumb and right sidebar toggle -->


                <!-- Start Page Content -->
                @yield('content')
                <!-- End PAge Content -->

                <!-- Right sidebar -->
               {{-- @include('layouts.rightbar') --}}
                <!-- .right-sidebar -->

            </div>

            <!-- End Container fluid  -->




            <!-- footer -->
            <footer class="footer">
                © 2019
            </footer>
            <!-- End footer -->




        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- End Wrapper -->




    <!-- All Jquery -->
    <script src="{{url('/')}}/assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="{{url('/')}}/assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="{{url('/')}}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="{{url('/')}}/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="{{url('/')}}/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="{{url('/')}}/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="{{url('/')}}/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="{{url('/')}}/assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="{{url('/')}}/js/custom.min.js"></script>
    @stack('script')


    <!-- Style switcher -->
    <script src="{{url('/')}}/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>

    <script>
            @if(Session::has('message'))
            var type = "{{ Session::get('alert-type') }}";
            switch(type){
                case 'info':
                    toastr.info("{{ Session::get('message') }}");
                    break;

                case 'warning':
                    toastr.warning("{{ Session::get('message') }}");
                    break;

                case 'success':
                    toastr.success("{{ Session::get('message') }}");
                    break;

                case 'error':
                    toastr.error("{{ Session::get('message') }}");
                    break;
            }
            @endif
        </script>
</body>

</html>
