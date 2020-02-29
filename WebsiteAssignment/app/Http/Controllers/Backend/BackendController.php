<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class BackendController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    protected $limit = 10;
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('check-permissions');
    }
}
