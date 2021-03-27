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


Route::get('/',['as'=>'index','uses'=>'PageController@getIndex']);
Route::get('/trademarks/{id}',['as'=>'trademarks','uses'=>'PageController@getTrademark'])->where('id',"[0-9]+");
Route::get('/detail/{id}',['as'=>'detail','uses'=>'PageController@getDetail'])->where('id',"[0-9]+");
Route::get('/register',['as'=>'register','uses'=>'PageController@getRegister']);
Route::post('/register',['as'=>'postregister','uses'=>'PageController@postRegister']);
Route::get('/login',['as'=>'getlogin','uses'=>'PageController@getLogin']);
Route::post('/login',['as'=>'postloginMember','uses'=>'PageController@postLogin']);
Route::get('/logout',['as'=>'getlogout','uses'=>'PageController@getLogout']);
Route::post('/cart',['as'=>'postCart','uses'=>'CartController@store']);
Route::get('/cart',['as'=>'getCart','uses'=>'CartController@index']);
Route::get('/removecart/{rowId}',['as'=>'getRemoveCart','uses'=>'CartController@remove']);
Route::post('/updatecart',['as'=>'postUpdateCart','uses'=>'CartController@Update']);
Route::get('/order',['as'=>'getOrder','uses'=>'OrderController@getOrder']);
Route::post('/order',['as'=>'postOrder','uses'=>'OrderController@postOrder']);
Route::get('/order/success','OrderController@getSuccess');
Route::post('search','PageController@Search');




Route::get('admin/login',['as'=>'getlogin','uses'=>'LoginController@getLogin']);
Route::post('admin/login',['as'=>'postLogin','uses'=>'LoginController@postLogin']);
Route::get('admin/logout',['as'=>'getLogout','uses'=>'LoginController@getLogout']);


Route::group(['middleware' => 'AdminAuth','namespace' => 'Admin','prefix' => 'admin'], function () {

    Route::get('/', function () {
      return redirect('admin/dashboard');
    });

    //dashboard
    Route::get('dashboard',function(){
      return view('admin.dashboard.dashboard');
    });
<<<<<<< HEAD
    //--------------------------------------------------------------------------////category
     Route::get('/category/list',['as'=>'cate.getlist','uses'=>'CategoryController@getList']);
    Route::get('/category/add',['as'=>'cate.getadd','uses'=>'CategoryController@getAdd']);
    Route::post('/category/add',['as'=>'cate.postadd','uses'=>'CategoryController@postAdd']);
    Route::get('/category/{id}/edit',['as'=>'cate.getedit','uses'=>'CategoryController@getEdit']);
    Route::post('/category/{id}/edit',['as'=>'cate.postedit','uses'=>'CategoryController@postEdit']);
    Route::get('/category/{id}/delete',['as'=>'cate.getdelete','uses'=>'CategoryController@getDelete']);
    //--------------------------------------------------------------------------////trademark
     Route::get('/trademark/list',['as'=>'trademark.getlist','uses'=>'TrademarkController@getList']);
    Route::get('/trademark/add',['as'=>'trademark.getadd','uses'=>'TrademarkController@getAdd']);
    Route::post('/trademark/add',['as'=>'trademark.postadd','uses'=>'TrademarkController@postAdd']);
    Route::get('/trademark/{id}/edit',['as'=>'trademark.getedit','uses'=>'TrademarkController@getEdit']);
    Route::post('/trademark/{id}/edit',['as'=>'trademark.postedit','uses'=>'TrademarkController@postEdit']);
    Route::get('/trademark/{id}/delete',['as'=>'trademark.getdelete','uses'=>'TrademarkController@getDelete']);

    //--------------------------------------------------------------------------//product
=======
    //category
    Route::get('/category/list',['as'=>'cate.getlist','uses'=>'CategoryController@getList']);
    
    //trademark
    Route::get('/trademark/list',['as'=>'trademark.getlist','uses'=>'TrademarkController@getList']);
   
    //product
>>>>>>> bao
    Route::get('/product/list',['as'=>'product.getlist','uses'=>'ProductController@getList']);
    Route::get('/product/add',['as'=>'product.getadd','uses'=>'ProductController@getAdd']);
    Route::get('/product/{cate_id}/ajax',['as'=>'product.getajax','uses'=>'AjaxController@getAjaxCate']);
    Route::post('/product/add',['as'=>'product.postadd','uses'=>'ProductController@postAdd']);
    Route::get('/product/{id}/delete',['as'=>'product.getdelete','uses'=>'ProductController@getDelete']);
    Route::get('/product/{id}/edit',['as'=>'product.getedit','uses'=>'ProductController@getEdit']);
    Route::post('/product/{id}/edit',['as'=>'product.postedit','uses'=>'ProductController@postEdit']);

    

    //Order
    Route::get('/order/list',['as'=>'order.getlist','uses'=>'OrderController@getList']);

    //OrderDetails
    Route::get('/orderdetail/{order_id}/list',['as'=>'orderdetail.getlist','uses'=>'OrderDetailController@getList']);

    //user
    Route::get('/user/list',['as'=>'user.getlist','uses'=>'UserController@getList']);

});
