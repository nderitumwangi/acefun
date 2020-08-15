<?php

use Illuminate\Database\Seeder;

class AdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       \App\Admin::query()->create([
          'name'=>'Dante',
           'email'=>'dante@gmail.com',
           'password'=>\Illuminate\Support\Facades\Hash::make('12345678')

       ]);
    }
}
