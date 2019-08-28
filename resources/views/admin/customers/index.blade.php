@extends('layouts.master')

@section('title','Creazione Customers')

@section('content')

@include('widgets.breadcrumb', [
    'titolo' => 'Customers',
    'posizione' => 'Customers',
    'pulsante' => ''
    ] )

  <!-- Row -->
    <div class="row">
        <!-- Column -->
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                <a href="#" data-toggle="modal" data-target="#crea-customer" class="pull-right  btn waves-effect waves-light btn-rounded btn-primary justify-content-end">Add Customer</a>

                    <h4 class="card-title">Customers</h4>
                    <div class="table-responsive">
                        <table class="table stylish-table" id="myTable">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th colspan="2">Nome</th>
                                    <th>Email</th>
                                    <th>Telefono</th>

                                    <th>Tipo</th>
                                    <th>Stato</th>
                                    <th>Data</th>

                                    <th>Azioni</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($customers as $customer)
                                    <tr>
                                        <td>{{$customer->id}}</td>
                                        <td><a href="{{route('customers.show',$customer->id)}}"  data-toggle="tooltip" data-original-title="Vai alla pagina del cliente"> {{$customer->nome}} {{$customer->cognome}}</a></td>
                                        <td></td>
                                        <td>{{$customer->email}}</td>
                                        <td>{{$customer->telefono}} </td>
                                        <td><span class="badge badge-danger">{{$customer->type}}</span> </td>
                                        <td><span class="badge badge-success">{{$customer->active}}</span></td>
                                        <td>{{$customer->created_at->format('d/m/Y')}}</td>

                                        <td>
                                            <div class="button-group" style="display:flex;">
                                            <a href="{{route('customers.show',$customer->id)}}" class="btn btn-sm waves-effect waves-light btn-outline-success" >Show</a>
                                            {{-- <a href="#" data-toggle="modal" data-target="#edita-customer" class="btn btn-sm waves-effect waves-light btn-outline-info">Edit</a> --}}

                                            <a href="{{route('customers.edit',$customer->id)}}" class="btn btn-sm waves-effect waves-light btn-outline-info" >Edit</a>
                                            <form action="{{route('customers.destroy',$customer->id)}}" method="POST" >{{ method_field('DELETE') }} {{csrf_field()}}
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


    @include('admin.customers.createform')
    {{-- @include('admin.customers.modaledit') --}}

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
    $(document).ready(function() {

        $('#myTable').DataTable({
                  "columnDefs": [
                        { "orderable": false, "targets":[1,2,3,4,5,6,8]  }
                    ],
                    "displayLength": 10,
                    "order": [
                    [0, 'asc']
                ],

            });
    });
    function ConfirmDelete()
    {
      var x = confirm("Are you sure you want to delete?");
      if (x)

          return;
      else
        return false;
    }


    </script>
@endpush
