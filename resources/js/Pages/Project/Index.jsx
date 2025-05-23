import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link } from '@inertiajs/react';


export default function Index(props) {
  return (
    <AuthenticatedLayout
      header={
        <h2 className="text-xl font-semibold leading-tight text-gray-800">
          Project
        </h2>
      }
    >
      <Head title="Project" />
      <div className="py-12">
        <div className="mx-auto max-w-7xl sm:px-6 lg:px-8">
          <div className="overflow-hidden bg-white shadow-sm sm:rounded-lg">


            <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
              <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                  <tr>
                    <th className="px-6 py-3">ID</th>
                    <th className="px-6 py-3">IMAGE</th>
                    <th className="px-6 py-3">NAME</th>
                    <th className="px-6 py-3">STATUS</th>
                    <th className="px-6 py-3">CREATE DATE</th>
                    <th className="px-6 py-3">DUE DATE</th>
                    <th className="px-6 py-3 text-nowrap">CREATED BY</th>
                    <th className="px-6 py-3 text-right">ACTIONS</th>
                  </tr>
                </thead>
                <tbody>

                  {props.projects.data.map((project) =>  (
                      <tr
                        key={project.id}
                        className="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-gray-200"
                      >
                        <th
                          scope="row"
                          className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                        >
                          {project.id}
                        </th>
                        <td className="px-6 py-4">
                          <img
                            src={project.image_path}
                            style={{ width:60 }}
                          />
                        </td>
                        <td className="px-6 py-4">{project.name}</td>
                        <td className="px-6 py-4">{project.status}</td>
                        <td className="px-6 py-4 text-nowrap">{project.created_at}</td>
                        <td className="px-6 py-4 text-nowrap">{project.due_date}</td>
                        <td className="px-6 py-4 text-nowrap">{project.createdBy.name}</td>
                        <td className="px-6 py-4">
                          <a
                            href={route('project.edit', project.id)}
                            className="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                          >
                            Edit
                          </a>
                          <a
                            href={route('project.destroy', project.id)}
                            className="font-medium text-red-600 dark:text-red-500 hover:underline ml-2"
                          >
                            Delete
                          </a>
                        </td>
                      </tr>
                    ))}
                </tbody>
              </table>
            </div>


          </div>
        </div>
      </div>
    </AuthenticatedLayout>
  );
}