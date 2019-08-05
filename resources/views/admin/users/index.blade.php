@extends('layouts.master')


@section('content')

@include('widgets.breadcrumb', [
    'titolo' => 'User',
    'posizione' => 'User',
    'pulsante' => ' <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#add-contact">Add New Contact</button>  <a href="#" data-toggle="modal" data-target="#crea-utente" class="btn waves-effect waves-light btn-rounded btn-primary justify-content-end">Add User</a>'
    
    ] )
                                                   

  <!-- Row -->
    <div class="row">
        <!-- Column -->
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Utenti</h4>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nome</th>
                                    <th>Email</th>
                                    <th>Data</th>
                                    <th>Ruolo</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($users as $user)
                                    <tr>
                                        <td>{{$user->id}}</td>
                                        <td>{{$user->name}}</td>
                                        <td>{{$user->email}}</td>
                                        <td>{{$user->created_at->format('d/m/Y')}}</td>
                                        <td>@foreach ($user->roles as $role) 
                                            {{$role->name=='superadmin' ? '<span class="label label-success">' : '<span class="label label-info">'}} 
                                            @endforeach
                                        </td>
                                        <td>
                                            <div class=" button-group">
                                            <a href="{{route('users.edit',$user->id)}}" class="btn btn-sm waves-effect waves-light btn-outline-info" style="float:left;">Edit</a>
                                            <form action="{{route('users.destroy',$user->id)}}" method="POST" >{{ method_field('DELETE') }} {{csrf_field()}}
                                                    <button type="submit" name="del-user" class="btn btn-sm waves-effect waves-light btn-outline-danger" onclick="return ConfirmDelete()">
                                                        <i class="ft-x" aria-hidden="true" ></i>Elimina</button>
                                                    </form>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                          
                        </table>
                    </div>
                </div>
            </div>


            </div>

                    
        </div>

    </div>

    <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Add New Contact</h4> 
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('users.index') }}">
                                        @csrf
                            <div class="form-group">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Nome">

                                                @error('name')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                            </div>
                            <div class="form-group">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email">

                                                @error('email')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                            </div>
                            <div class="form-group">
                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Password">

                                                @error('password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                            </div>
                            <div class="form-group">
                                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password"  placeholder="Confirm Password">
                            </div>
                            <div class="col-md-12 m-b-20">
                                        <div class="fileupload btn btn-danger btn-rounded waves-effect waves-light"><span><i class="ion-upload m-r-5"></i>Upload Contact Image</span>
                                            <input type="file" class="upload"> </div>
                                    </div>
                    </div>
                        <div class="modal-footer">
                        <button type="sumbit" class="btn btn-info waves-effect">Save</button>
                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
                        </div>
                    </form>
    
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    @include('admin.users.modalform')

@endsection



    @push('script')
     <!-- This is data table -->
    <script src="{{url('/')}}/assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- start - This is for export functionality only -->
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <!-- end - This is for export functionality only -->
    <script>
  
  function ConfirmDelete()
    {
      var x = confirm("Are you sure you want to delete?");
      if (x)

          return;
      else
        return false;
    }

     $(document).ready(function() {
            var table = $('#myTable').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [0, 'asc']
                ],
                "displayLength": 10,
                dom: 'Bfrtip',
                buttons: [
                    'csv', 'pdf', 'print'
                ]
            });
           
        });
 
</script>
@endpush
