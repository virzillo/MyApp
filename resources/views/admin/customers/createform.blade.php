<div class="modal fade show" id="crea-customer" tabindex="-1" role="dialog" aria-labelledby="crea-utenteLabel"
    style="display:none;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="crea-utenteLabel">Crea Customer</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ route('customers.store') }}">
                    @csrf
                    <div class="form-group">
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror"
                            name="name" value="{{ old('name') }}" required autocomplete="name" autofocus
                            placeholder="Nome">
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email">

                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <select name="active" id="active" class="form-control">
                            <option value="" disabled>seleziona stato</option>
                            <option value="1">Attivo</option>
                            <option value="0">Inttivo</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="type" id="type" class="form-control">
                            <option value="" disabled>seleziona tipo cliente</option>
                            <option value="1">Cliente</option>
                            <option value="0">Potenziale</option>
                        </select>
                    </div>
                    <div class="row form-group">
                        <div class="col-lg-9">
                            <select name="company_id" id="company_id" class="form-control">
                                @foreach ($companies as $company)
                                <option value="{{$company->id}}">{{$company->name}}</option>

                                @endforeach
                            </select>
                        </div>
                        <div class="col-lg-3">
                            <a href="#" data-toggle="modal" data-target="#crea-company"
                                class="btn waves-effect waves-light btn-rounded btn-primary justify-content-end"> <i
                                    class="ti-plus text" aria-hidden="true"></i></a>

                        </div>


                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Salva</button>
            </div>
            </form>

        </div>
    </div>
</div>


<div class="modal fade bs-example-modal-sm" id="crea-company" tabindex="-1" role="dialog" aria-labelledby="companyLabel"
    style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="companyLabel">Small modal</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ route('company.store') }}">
                    @csrf
                    <div class="form-group">
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror"
                            name="name" value="{{ old('name') }}" required autocomplete="name" autofocus
                            placeholder="Nome">

                    </div>
                    <div class="form-group">
                        <input id="phone" type="text" class="form-control @error('phone') is-invalid @enderror"
                            name="phone" value="{{ old('phone') }}" required autocomplete="phone" placeholder="phone">

                    </div>



            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Crea</button>
            </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
