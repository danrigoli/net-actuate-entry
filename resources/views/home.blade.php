@extends('layouts.app')

@section('content')
    @if($user->role == 7)
    <tasks-admin></tasks-admin>
    @else
        <div id="id_view" class='d-none'>{{Auth::id()}}</div>
        <tasks-user></tasks-user>
    @endif
</div>
@endsection

