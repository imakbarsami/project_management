import Pagination from "@/Components/Pagination";
import SelectInput from "@/Components/SelectInput";
import TextInput from "@/Components/TextInput";
import { TASK_STATUS_CLASS_MAP, TASK_STATUS_LABEL_MAP } from "@/Constant";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router, usePage } from '@inertiajs/react';
import TableHeader from "@/Components/TableHeader";
import TaskTable from "./TaskTable";


export default function MyTask({ tasks, queryPrams = null }) {

  const queryParams = queryPrams || {};
  const { flash } = usePage().props;
  const user = usePage().props.auth.user;
  return (
    <AuthenticatedLayout
      header={
        <div className="flex justify-between items-center">
          <h2 className="text-xl font-semibold leading-tight text-white ">
            My Task
          </h2>
           </div>
      }

    >
      <Head title="Task" />
      <div className="py-12 bg-gray-900">

        <div className="border m-8 overflow-auto shadow">
          {flash.success && (
            <div className="bg-emerald-500 py-2 text-black text-2xl rounded mb-4 px-3 h-15">
              {flash.success}
            </div>
          )}
          {/* <div className="mx-auto max-w-7xl sm:px-6 lg:px-8 bg-pink-50"> */}
          {/* <div className="overflow-hidden bg-gray-900  shadow-sm sm:rounded-lg"> */}
          <TaskTable tasks={tasks} queryParams={queryParams} myTask={true} user={user} />
          {/* </div> */}
          {/* </div> */}
        </div>
      </div>
    </AuthenticatedLayout>
  );
}
