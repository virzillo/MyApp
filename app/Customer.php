<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $guarded = [];

    public function getActiveAttribute($attribute)
    {
        return [
            1 => 'Attivo',
            0 => 'Inattivo',
        ][$attribute];
    }
    public function getTypeAttribute($attribute)
    {
        return [
            0 => 'Potenziale',
            1 => 'Cliente',
        ][$attribute];
    }
    public function scopeActive($query)
    {

        return $query->where('active', 1);
    }
    public function scopeInactive($query)
    {

        return $query->where('active', 0);
    }

    public function company()
    {
        return $this->belongsTo(Company::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
