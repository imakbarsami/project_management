import Pagination from "@/Components/Pagination";
import SelectInput from "@/Components/SelectInput";
import TextInput from "@/Components/TextInput";
import { TASK_STATUS_CLASS_MAP, TASK_STATUS_LABEL_MAP } from "@/Constant";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router, usePage } from '@inertiajs/react';
import TableHeader from "@/Components/TableHeader";
import TaskTable from "./TaskTable";


export default function Index({ tasks,queryPrams=null }) {

  const queryParams = queryPrams || {};
  return (
    <AuthenticatedLayout
      header={
        <h2 className="text-xl font-semibold leading-tight text-gray-800">
          Task
        </h2>
      }
    >
      <Head title="Task" />
      <div className="py-12">
        <div className="mx-auto max-w-7xl sm:px-6 lg:px-8">
          <div className="overflow-hidden bg-white shadow-sm sm:rounded-lg">
             <TaskTable tasks={tasks} queryParams={queryParams} />
          </div>
        </div>
      </div>
    </AuthenticatedLayout>
  );
}
