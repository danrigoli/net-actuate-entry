<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Task;
use App\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\Task as TaskResource;
use App\Http\Resources\User as UserResource;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {

        $tasks = User::find($id)->tasks()->get();
        return TaskResource::collection($tasks);
    }

    public function indexAdmin()
    {
        $users = User::get();
        $tasks = Task::get();
        return [UserResource::collection($users), TaskResource::collection($tasks)];
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $task = new Task;
        $task->id = $request->input('task_id');
        $task->name = $request->input('name');
        $task->status = $request->input('status');
        $task->user_id = $request->input('user_id');
        if($task->save()){
            return new TaskResource($task);
        }
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $task = Task::findOrFail($request->id);
        $task->id = $request->input('id');
        $task->name = $request->input('name');
        $task->status = $request->input('status');
        $task->user_id = $request->input('user_id');
        if($task->save()){
            return new TaskResource($task);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $task = Task::findOrFail($id);
        if ($task->delete()) {
            return new TaskResource($task);
        }

    }
}
