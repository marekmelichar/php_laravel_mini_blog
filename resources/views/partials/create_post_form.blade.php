<header class="post-header">
    <h1 class="box-heading">{{ $title }}</h1>
</header>

<div class="form-group">
    {!! Form::text('title', null, [
        'class' => 'form-control',
        'placeholder' => 'title of new post'
    ]) !!}
</div>

<div class="form-group">
    {!! Form::label('text', 'Text:') !!}
    {!! Form::textarea('text', null, [
        'class' => 'form-control',
        'placeholder' => 'text of new post',
        'rows' => 16
    ]) !!}
</div>

<div class="form-group">
    @foreach($tags as $tag)
        <label class="checkbox">
            {!! Form::checkbox('tags[]', $tag->id) !!}
            {{ $tag->name }}
        </label>
    @endforeach
</div>

<div class="form-group">
    {!! Form::button($title, [
        'type' => 'submit',
        'class' => 'btn btn-primary'
    ]) !!}
</div>

<a class="btn btn-info" href="{!! URL::previous() !!}">back</a>