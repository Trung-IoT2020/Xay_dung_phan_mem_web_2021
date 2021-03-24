<?php

namespace App\Http\Controllers;
use App\Product;
use App\Category;

use Illuminate\Http\Request;

class ApiController extends Controller
{
   

    ////////////////////////////// CATEGORIES ///////////////////////////////////
    public function getAllCategories() 
    {
        $category = Category::all();
        return response($category, 200);
    }
  
    public function createCategory(Request $request)
    {
        if(Category::create($request->all()))
        {
            return response()->json($request);
        }
        else
        {
            return response()->json("Không tạo được :'<");
        }
    }

    public function getCategory($id) 
    {
        if($category = Category::all()->find($id))
        {
            return response()->json($category, 200);
        }
        else
        {
            return response()->json("Category not found!!", 200);
        }
    }

    public function updateCategory(Request $request, $id) 
    {
        if($category = Category::where('id',$id)->update($request->all()))
        {
            return response()->json($request);
        }
        else
        {
            return response()->json("Sửa không thành công :'<");
        }
    }

    public function deleteCategory($id) 
    {
        if($category = Category::where('id', $id)->delete())
        {
            return response()->json("Deleted success!!");
        }
        else
        {
            return response()->json("Cannot delete :((");
        }
    }
    /////////////////////////////////////////////////////////////////////////////
}
