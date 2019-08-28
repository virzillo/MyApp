@extends('layouts.master')


@section('content')

@include('widgets.breadcrumb', [
    'titolo' => 'Impostazioni Generali Programma',
    'posizione' => 'Impostazioni',
    'pulsante' => ' '
    
    ] )
@push('style')
      <!-- Calendar CSS -->
    <link href="{{url('/')}}/assets/plugins/calendar/dist/fullcalendar.css" rel="stylesheet" />
@endpush

  <div class="row">
        <div class="col-lg-4 col-md-12">
            <div class="card">
                <div class="card-body bg-info">
                    <h4 class="text-white card-title">Aggiungi CARD</h4>
                    <h6 class="card-subtitle text-white m-b-0 op-5">inserisci il numro di card acquistate</h6> </div>
                <div class="card-body">
                    <div class="message-box contact-box">
                        <h2 class="add-ct-btn"><button type="button" class="btn btn-circle btn-lg btn-success waves-effect waves-dark">+</button></h2>
                        <div class="message-widget contact-widget">
                          
                            <!-- Message -->
                            <a href="#">
                              
                                <div class="mail-contnet">
                                    <h5>EICARD</h5> <span class="mail-desc">50</span>
                                </div>
                            </a>
                            <!-- Message -->
                            <a href="#">
                                <div class="mail-contnet">
                                    <h5>PEKIT</h5> <span class="mail-desc">100</span>
                                </div>
                            </a>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-12">
            <div class="card">
                <div class="card-body bg-info">
                    <h4 class="text-white card-title">Misc</h4>
                    <h6 class="card-subtitle text-white m-b-0 op-5">Inserisci acquisti misc</h6> </div>
                <div class="card-body">
                    <div class="message-box contact-box">
                        <h2 class="add-ct-btn"><button type="button" class="btn btn-circle btn-lg btn-success waves-effect waves-dark">+</button></h2>
                        <div class="message-widget contact-widget">
                            <!-- Message -->
                            <a href="#">
                                <div class="mail-contnet">
                                    <h5>Pavan kumar</h5> <span class="mail-desc">200€</span></div>
                            </a>
                            <!-- Message -->
                            <a href="#">
                                <div class="user-img"> <img src="../assets/images/users/2.jpg" alt="user" class="img-circle"> <span class="profile-status busy pull-right"></span> </div>
                                <div class="mail-contnet">
                                    <h5>Sonu Nigam</h5> <span class="mail-desc">pamela1987@gmail.com</span></div>
                            </a>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
                   
@endsection



@push('script')
    
  

      <!-- Calendar JavaScript -->
    <script src="{{url('/')}}/assets/plugins/calendar/jquery-ui.min.js"></script>
    <script src="{{url('/')}}/assets/plugins/moment/moment.js"></script>
    <script src='{{url('/')}}/assets/plugins/calendar/dist/fullcalendar.min.js'></script>
    <script src="{{url('/')}}/assets/plugins/calendar/dist/cal-init.js"></script>

@endpush
