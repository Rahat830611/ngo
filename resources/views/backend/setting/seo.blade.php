@extends('layouts.app')
@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">SEO Settings</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
          <li class="breadcrumb-item active">SEO Settings</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>



          <div class="card">
            <div class="card-header">
              <h3 class="card-title"> SEO Settings</h3>
            
            </div>
            <!-- /.card-header -->
            <div class="card-body col-lg-12">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4 class="modal-title">SEO Settingd</h4>
                       
                      </div>

                      <div class="modal-body">
                         <form action="{{ route('update.seo',$seo->id) }}" method="Post">
                         	@csrf
                           <div class="form-group">
                             <label for="exampleInputEmail1">Author</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_author }}" aria-describedby="emailHelp" name="meta_author" required="">
                           </div>
                           <div class="form-group">
                             <label for="exampleInputEmail1">Meta Title</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_title }}" aria-describedby="emailHelp" name="meta_title" required="">
                           </div>
                             <div class="form-group">
                             <label for="exampleInputEmail1">Meta Keyword</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_keyword }}" aria-describedby="emailHelp" name="meta_keyword" required="">
                           </div>
                           <div class="form-group">
                             <label for="exampleInputEmail1">Meta Description</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_description }}" aria-describedby="emailHelp" name="meta_description" required="">
                           </div>
						   
						   
                            <div class="form-group">
                             <label for="exampleInputEmail1">Google Analytics</label>
                             <input type="text" class="form-control " value="{{ $seo->google_analytics }}" aria-describedby="emailHelp" name="google_analytics" required="">
                           </div>
                            <div class="form-group">
                             <label for="exampleInputEmail1">Alexa Analytics</label>
                             <input type="text" class="form-control " value="{{ $seo->alexa_analytics }}" aria-describedby="emailHelp" name="alexa_analytics" required="">
                           </div>
                            <div class="form-group">
                             <label for="exampleInputEmail1">Service 1 Tittle</label>
                             <input type="text" class="form-control " value="{{ $seo->service1_tittle }}" aria-describedby="emailHelp" name="service1_tittle" required="">
                           </div>
						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Service 1 Text Long</label>
                               <textarea class="textarea" placeholder="Place some text here" name="service1_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->service1_text }}
                          </textarea>
                           </div>	
						                               <div class="form-group">
                             <label for="exampleInputEmail1">Service 2 Tittle</label>
                             <input type="text" class="form-control " value="{{ $seo->service2_tittle }}" aria-describedby="emailHelp" name="service2_tittle" required="">
                           </div>
						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Service 2 Text Long</label>
                               <textarea class="textarea" placeholder="Place some text here" name="service2_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->service2_text }}
                          </textarea>
                           </div>						   				
										<div class="form-group">
                             <label for="exampleInputEmail1">Service 3 Tittle</label>
                             <input type="text" class="form-control " value="{{ $seo->service3_tittle }}" aria-describedby="emailHelp" name="service3_tittle" required="">
                           </div>
						   						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Service 3 Text Long</label>
                               <textarea class="textarea" placeholder="Place some text here" name="service3_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->service3_text }}
                          </textarea>
                           </div>
								                               <div class="form-group">
                             <label for="exampleInputEmail1">Service 4 Tittle</label>
                             <input type="text" class="form-control " value="{{ $seo->service4_tittle }}" aria-describedby="emailHelp" name="service4_tittle" required="">
                           </div>
						   						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Service 4 Text Long</label>
                               <textarea class="textarea" placeholder="Place some text here" name="service4_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->service4_text }}
                          </textarea>
                           </div>

						                               <div class="form-group">
                             <label for="exampleInputEmail1">Service 5 Tittle</label>
                             <input type="text" class="form-control " value="{{ $seo->service5_tittle }}" aria-describedby="emailHelp" name="service5_tittle" required="">
                           </div>
						   						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Service 5 Text Long</label>
                               <textarea class="textarea" placeholder="Place some text here" name="service5_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->service5_text }}
                          </textarea>
                           </div>
						                               <div class="form-group">
                             <label for="exampleInputEmail1">Service 6 Tittle</label>
                             <input type="text" class="form-control " value="{{ $seo->service6_tittle }}" aria-describedby="emailHelp" name="service6_tittle" required="">
                           </div>
						   						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Service 6 Text Long</label>
                               <textarea class="textarea" placeholder="Place some text here" name="service6_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->service6_text }}
                          </textarea>
                           </div>

                           <button type="submit" class="btn btn-success btn-block">Update</button>
                         </form>
                      </div>
                    </div>
            </div>
            <!-- /.card-body -->
          </div>


@endsection