<?php

namespace App\Http\Controllers;
use App\Product;
use App\Category;

use Illuminate\Http\Request;

class ApiController extends Controller
{
    ///////////////////// PRODUCT //////////////////////////
    public function getAllProducts() 
    {
        $product = Product::all();
        return response($product, 200);
    }
  
    public function createProduct(Request $request)
    {
        if(Product::create($request->all()))
        {
            return response()->json($request);
            // return ['Tạo thành công :>'=>(response()->json($request))];
        }
        else
        {
            return response()->json("Không tạo được :'<", );
        }
    }

    public function getProduct($id) 
    {
        if($product = Product::all()->find($id))
        {
            return response()->json($product, 200);
        }
        else
        {
            return response()->json("Product not found!!", 200);
        }
    }

    public function updateProduct(Request $request, $id) 
    {
        if($product = Product::where('id',$id)->update($request->all()))
        {
            return response()->json($request);
        }
        else
        {
            return response()->json("Sửa không thành công :'<");
        }
    }

    public function deleteProduct ($id) 
    {
        if($product = Product::where('id', $id)->delete())
        {
            return response()->json("Deleted success!!");
        }
        else
        {
            return response()->json("Cannot delete :((");
        }
    }
    /////////////////////////////////////////////////////////////////////////////

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
