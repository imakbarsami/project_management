<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProjectRequest;
use App\Http\Requests\UpdateProjectRequest;
use App\Http\Resources\ProjectResource;
use App\Models\Project;
use Illuminate\Support\Facades\Request;
use Inertia\Inertia;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $query=Project::query();

        $sort_field=request('sort_field', 'created_at');
        $sort_direction=request('sort_direction', 'desc');

        if(request('name')){
            $query->where('name', 'like', '%' . request('name') . '%');
        }

        if(request('status')){
            $query->where('status', 'like', '%' . request('status') . '%');
        }

        $projects=$query->orderBy($sort_field,$sort_direction)->paginate(10)->onEachSide(1);

        return Inertia::render('Project/Index',[

            'projects'=>ProjectResource::collection($projects),
            'queryPrams'=>request()->query()?:null
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProjectRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Project $project)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Project $project)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProjectRequest $request, Project $project)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Project $project)
    {
        //
    }
}
