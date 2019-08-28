<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

<<<<<<< HEAD
// Route::resource('ajax-crud', 'AjaxCrudController');
=======
Route::resource('ajax-crud', 'AjaxCrudController');
Route::get('user/getcompanies', 'UserController@getcompanies')->name('user.getcompanies');
>>>>>>> 8b5dd385b05be11c1e6b35ef86177088149ae1d9

// Route::post('ajax-crud/update', 'AjaxCrudController@update')->name('ajax-crud.update');

// Route::get('ajax-crud/destroy/{id}', 'AjaxCrudController@destroy');


Route::group(['prefix' => 'admin', 'middleware' => ['role:superadmin']], function () {
    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    Route::resource('clients', 'ClientController');
    Route::resource('users', 'UserController');

    Route::resource('customers', 'CustomerController');
    Route::resource('courses', 'CourseController');
    Route::resource('modules', 'ModuleController');

    Route::post('/company', 'CompanyController@store')->name('company.store');
    Route::get('/calendar', 'DashboardController@calendar')->name('calendar.index');

    Route::resource('settings', 'SettingController');
    Route::resource('storage', 'StorageController');
});
