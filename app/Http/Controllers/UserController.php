<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    //index
    public function index(Request $request)
    {
        //get users with pagination
        $users = DB::table('users')
            // ->when($request->search, function ($query) use ($request) {
            //     return $query->where('name', 'like', '%' . $request->search . '%');
            // })
            ->when($request->input('name'), function ($query, $name) {
                return $query->where('name', 'like', '%' . $name . '%');
            })
            ->paginate(5);
        return view('pages.user.index', compact('users'));
    }

    //create
    public function create()
    {
        return view('pages.dashboard');
    }

    //store
    public function store(Request $request)
    {
        return view('pages.dashboard');
    }

    //show
    public function show($id)
    {
        return view('pages.dashboard');
    }

    //edit
    public function edit($id)
    {
        return view('pages.dashboard');
    }

    //update
    public function update(Request $request, $id)
    {
        return view('pages.dashboard');
    }

    //destroy
    public function destroy($id)
    {
        return view('pages.dashboard');
    }
}
