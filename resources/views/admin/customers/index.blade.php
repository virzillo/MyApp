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
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Customers</h4>
                    <div class="table-responsive">
                        <table class="table" id="myTable">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nome</th>
                                    <th>Email</th>
                                    <th>Tipo</th>
                                    <th>Stato</th>
                                    <th>Azienda</th>
                                    <th>Data</th>

                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($customers as $customer)
                                    <tr>
                                        <td>{{$customer->id}}</td>
                                        <td>{{$customer->name}}</td>
                                        <td>{{$customer->email}}</td>
                                        <td>{{$customer->type}}</td>
                                        <td>{{$customer->active}}</td>
                                        <td>{{$customer->company->name}} </td>
                                        <td>{{$customer->created_at->format('d/m/Y')}}</td>

                                        <td>
                                            <div class="button-group" style="display:flex;">
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
                            <a href="#" data-toggle="modal" data-target="#crea-customer" class="btn waves-effect waves-light btn-rounded btn-primary justify-content-end">Add Customer</a>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>


    @include('admin.customers.createform')

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
