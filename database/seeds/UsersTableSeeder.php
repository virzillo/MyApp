<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Role;


class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {




            factory(App\User::class, 50)->create()->each(function ($user) {
                $user
                ->roles()
                ->attach(Role::where('name', 'user')->first());
            });


    }
}
