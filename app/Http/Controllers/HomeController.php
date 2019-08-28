<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
<<<<<<< HEAD
use App\Customer;
=======
>>>>>>> 8b5dd385b05be11c1e6b35ef86177088149ae1d9
use App\Company;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
<<<<<<< HEAD
        $customers = Customer::all();
        $companies = Company::all();

        return view('home', compact('customers', 'companies'));
=======
        $companies = Company::all();
        return view('home',compact('companies'));
>>>>>>> 8b5dd385b05be11c1e6b35ef86177088149ae1d9
    }
}
