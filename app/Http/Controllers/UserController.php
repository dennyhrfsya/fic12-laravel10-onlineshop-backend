<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

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
        return view('pages.user.create');
    }

    //store
    public function store(StoreUserRequest $request)
    {
        $data = $request->all();
        $data['password'] = Hash::make($request->input('password'));
        User::create($data);
        return redirect()->route('user.index')->with('success', 'User created successfully!');
    }

    //show
    public function show($id)
    {
        return view('pages.dashboard');
    }

    //edit
    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('pages.user.edit', compact('user'));
    }

    //update
    public function update(UpdateUserRequest $request, User $user)
    {
        // $data = $request->all();
        // $user = User::findOrFail($id);
        $data = $request->validated();

        // cek jika password tidak kosong
        if ($request->input('password')) {
            $data['password'] = Hash::make($request->input('password'));
        } else {
            // jika password kosong, menggunakan password lama
            $data['password'] = $user->password;
        }

        $user->update($data);
        return redirect()->route('user.index')->with('success', 'User updated successfully!');
    }

    //destroy
    public function destroy($id)
    {
        // hapus user
        $user = User::findOrFail($id);
        $user->delete();
        return redirect()->route('user.index')->with('success', 'User deleted successfully!');
    }
}
