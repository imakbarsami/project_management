<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTaskRequest;
use App\Http\Requests\UpdateTaskRequest;
use App\Http\Resources\ProjectResource;
use App\Http\Resources\TaskResource;
use App\Http\Resources\UserResource;
use App\Models\Project;
use App\Models\Task;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;
use Illuminate\Support\Str;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $query=Task::query();

        $sort_field=request('sort_field', 'created_at');
        $sort_direction=request('sort_direction', 'desc');

        if(request('name')){
            $query->where('name', 'like', '%' . request('name') . '%');
        }

        if(request('status')){
            $query->where('status', 'like', '%' . request('status') . '%');
        }

        $tasks=$query->orderBy($sort_field,$sort_direction)->paginate(10)->onEachSide(1);

        return Inertia::render('Task/Index',[

            'tasks'=>TaskResource::collection($tasks),
            'queryPrams'=>request()->query()?:null
        ]);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $users=User::all();
        $projects=Project::all();

        return Inertia::render('Task/Create', [
            'users' => UserResource::collection($users),
            'projects' => ProjectResource::collection($projects),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTaskRequest $request)
    {
        $data= $request->validated();
        $image=$data['image'] ?? null;

        $data['created_by']=Auth::id();
        $data['updated_by']=Auth::id();

        //dd($data);

        if($image){
            $data['image_path']=$image->store('tasks/'.Str::random(), 'public');
        }

        Task::create($data);

        return to_route('task.index')->with('success', 'Task created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Task $task)
    {
        $task=$task->with('project', 'assignedUser', 'createdBy', 'updatedBy')->find($task->id);
        //dd($task);
        return Inertia::render('Task/Show', [
            'task' => new TaskResource($task),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Task $task)
    {
        $users=User::all();
        $projects=Project::all();

        return Inertia::render('Task/Edit', [
            'task' => new TaskResource($task),
            'users'=>UserResource::collection($users),
            'projects'=>ProjectResource::collection($projects)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateTaskRequest $request, Task $task)
    {
        $data= $request->validated();
        $data['updated_by']=Auth::id();
        $image=$data['image'] ?? null;
        if($image){
            if($task->image_path){
                Storage::disk('public')->deleteDirectory(dirname($task->image_path));
            }
            $data['image_path']=$image->store('tasks/'.Str::random(), 'public');
        }

        $task->update($data);
        return to_route('task.index')->with('success', 'Task updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Task $task)
    {
        $image= $task->image_path??null;
        if($image){
            Storage::disk('public')->deleteDirectory(dirname($image));
        }

        $task->delete();
        return to_route('task.index')->with('success', 'Task deleted successfully.');
    }
}
