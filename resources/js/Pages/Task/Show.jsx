import { Head, Link } from '@inertiajs/react';
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { TASK_STATUS_CLASS_MAP, TASK_STATUS_LABEL_MAP } from '@/Constant';


export default function Show({task}) {

  //console.log(task)

  return (
    <AuthenticatedLayout
      header={
        <div className="flex justify-between items-center">
        <h2 className="text-xl font-semibold leading-tight text-white">
          {`Task "${task.name}"`}
        </h2>
        <Link href={route('task.index')} className="bg-sky-500 py-1 px-3 text-white rounded shadow transition-all hover:bg-sky-700">Back</Link>
      </div>
      }
    >
      <Head title={`Task "${task.name}"`} />
      <div className="py-12">
        <div className="mx-auto max-w-7xl sm:px-6 lg:px-8">
          <div className="overflow-hidden dark:bg-gray-900 bg-white shadow-sm sm:rounded-lg">
            <div>
              <img src={'http://127.0.0.1:8000/storage/'+task.image_path} alt=""
                className='w-full h-96 object-cover'
              />
            </div>
            <div className='p-6 text-gray-900 dark:text-gray-100'>
              <div className='grid gap-1 grid-cols-2 mt-2 '>

                <div>
                  <div>
                    <label className='font-bold text-lg'>Task ID </label>
                    <p className='mt-1'>{task.id}</p>
                  </div>
                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Task Name </label>
                    <p className='mt-1'>{task.name}</p>
                  </div>
                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Task Status </label>
                    <p className='mt-2'>
                      <span className={"px-2 py-1 rounded text-white " + TASK_STATUS_CLASS_MAP[task.status]}>
                        {TASK_STATUS_LABEL_MAP[task.status]}
                      </span>
                    </p>
                  </div>
                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Priority </label>
                    <p>{task.priority.charAt(0).toUpperCase() + task.priority.slice(1)}</p>

                  </div>
                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Created By </label>
                    <p className='mt-1'>
                      {task.createdBy.name}
                    </p>
                  </div>

                </div>
                <div>


                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Project Name </label>
                    <p className='mt-1'>
                      {task.project.name}
                    </p>
                  </div>
                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Assigned User Name</label>
                    <p className='mt-1'>
                      {task.assignedUser.name}
                    </p>
                  </div>
                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Assigned User Email </label>
                    <p className='mt-1'>
                      {task.assignedUser.email}
                    </p>
                  </div>
                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Due Date </label>
                    <p className='mt-1'>
                      {task.due_date}
                    </p>
                  </div>

                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Created At </label>
                    <p className='mt-1'>
                      {task.created_at}
                    </p>
                  </div>


                  <div className='mt-4'>
                    <label className='font-bold text-lg'>Updated By </label>
                    <p className='mt-1'>
                      {task.updatedBy.name}
                    </p>
                  </div>


                </div>
              </div>

              <div className='mt-4'>
                <label className='font-bold text-lg'>Task Description </label>
                <p className='mt-1'>
                  {task.description}
                </p>
              </div>


            </div>
          </div>
        </div>
      </div>

    </AuthenticatedLayout>
  )
}