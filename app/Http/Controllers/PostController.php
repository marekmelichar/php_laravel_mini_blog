<?php

namespace App\Http\Controllers;

// use Illuminate\Support\Facades\Input;
use Validator;

use Illuminate\Support\Facades\Auth;

//use Illuminate\Database\Eloquent\Model;
//use App\Http\Controllers\Auth;
//use Auth;

use Illuminate\Http\Request;
use App\Post;
use App\Tag;

class PostController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::all();

        return view('home')
            ->with('posts', $posts);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::findOrFail($id);

        return view('full_post')
            ->with('post', $post);

    //    return view('full_post', ['post' => Post::findOrFail($id)]);
    }   

    public function create() {

        $tags = Tag::all();

        return view('create_post')
            ->with('title', 'Add new post')
            ->with('tags', $tags);
    }

    public function store(Request $request) {

    //    $validator = Validator::make($request->all(), [
    //        'title' => 'required|unique:posts|max:255',
    //    ]);

    //    if ($validator->fails()) {
    //        return redirect('post/create')
    //            ->withErrors($validator)
    //            ->withInput();
    //    }


    //    $post = Auth::user()->posts->create( $request->all() );
    //    $post->tags()->sync( $request->get('tags') ? : [] );

    //    return $request->all();
    //    return redirect()->route('post/{id}', $post->id);
    }
}
