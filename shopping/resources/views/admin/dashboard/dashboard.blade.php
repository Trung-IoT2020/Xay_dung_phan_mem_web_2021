@extends('admin.layouts.master')
@section('title','Trang Chủ Admin')
@section('content')
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12 col-lg-12">
        <h2 style="font-weight:bold;">Dashboard</h2>
        <hr>
      </div>
    <?php
        $total_order = DB::table('orders')->count();
        $total_neworder = DB::table('orders')->where('status',0)->count();
        $total_products = DB::table('products')->count();
        $total_customer = DB::table('users')->where('level',0)->count();
        $total_admin = DB::table('users')->where('level',1)->count();
      ?> 
      <!--Them phan hien thi tại đây-->
<a>Hello</a>
    </div>
  </div>
@stop
