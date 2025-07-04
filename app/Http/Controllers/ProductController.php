<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
        $products = \App\Models\Product::paginate(5);
        return view('pages.product.index', compact('products'));
    }
}
