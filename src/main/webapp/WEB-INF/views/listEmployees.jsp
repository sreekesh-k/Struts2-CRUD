<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
        <jsp:include page="header.jsp" />

        <div class="bg-white shadow-md rounded-lg p-6 max-w-7xl mx-auto mt-6">
            <div class="flex justify-between items-center border-b pb-4 mb-4 border-gray-300">
                <h3 class="text-2xl font-bold text-gray-700">Employees</h3>
                <a href="<s:url action='addEmployeeForm'/>"
                    class="bg-[#5a4da3] text-white px-4 py-2 rounded-lg text-sm hover:scale-105 transition">
                    + Add
                </a>
            </div>

            <s:if test="employees != null && !employees.isEmpty()">
                <div class="overflow-x-auto">
                    <table class="min-w-full border border-gray-200 rounded-lg">
                        <thead class="bg-gray-100">
                            <tr>
                                <th
                                    class="text-left text-sm font-medium text-gray-600 py-2 px-4 border-b border-gray-300">
                                    ID</th>
                                <th
                                    class="text-left text-sm font-medium text-gray-600 py-2 px-4 border-b border-gray-300">
                                    Name</th>
                                <th
                                    class="text-left text-sm font-medium text-gray-600 py-2 px-4 border-b border-gray-300">
                                    Email</th>
                                <th
                                    class="text-left text-sm font-medium text-gray-600 py-2 px-4 border-b border-gray-300">
                                    Salary</th>
                                <th
                                    class="text-left text-sm font-medium text-gray-600 py-2 px-4 border-b border-gray-300">
                                    Designation
                                </th>
                                <th
                                    class="text-left text-sm font-medium text-gray-600 py-2 px-4 border-b border-gray-300">
                                    Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <s:iterator value="employees">
                                <tr class="hover:bg-gray-50 transition">
                                    <td class="text-sm text-gray-700 py-2 px-4 border-b border-gray-300">
                                        <s:property value="id" />
                                    </td>
                                    <td class="text-sm text-gray-700 py-2 px-4 border-b border-gray-300">
                                        <s:property value="name" />
                                    </td>
                                    <td class="text-sm text-gray-700 py-2 px-4 border-b border-gray-300">
                                        <s:property value="email" />
                                    </td>
                                    <td class="text-sm text-gray-700 py-2 px-4 border-b border-gray-300">
                                        ₹
                                        <s:property value="salary" />
                                    </td>
                                    <td class="text-sm text-gray-700 py-2 px-4 border-b border-gray-300">
                                        <s:property value="designation" />
                                    </td>
                                    <td class="text-sm text-gray-700 py-2 px-4 border-b border-gray-300 flex gap-2">
                                        <a href="<s:url action='editEmployeeForm'><s:param name='employeeId' value='%{id}'/></s:url>"
                                            class="bg-[#5a4da3] text-white text-xs px-3 py-1 rounded-md hover:scale-105 transition">
                                            Edit
                                        </a>
                                        <a href="<s:url action='deleteEmployee'><s:param name='employeeId' value='%{id}'/></s:url>"
                                            class="bg-red-500 text-white text-xs px-3 py-1 rounded-md hover:scale-105 transition"
                                            onclick="return confirm('Are you sure you want to delete this employee?')">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            </s:iterator>
                        </tbody>
                    </table>
                </div>
            </s:if>

            <s:else>
                <div class="bg-blue-100 text-blue-700 px-4 py-3 rounded-md">
                    No employees found.
                </div>
            </s:else>
        </div>

        <jsp:include page="footer.jsp" />