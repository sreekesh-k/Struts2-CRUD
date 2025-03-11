<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
        <jsp:include page="header.jsp" />

        <div class="max-w-4xl mx-auto mt-10 bg-white shadow-lg rounded-lg p-6">
            <h3 class="text-2xl font-semibold text-gray-700 mb-5">Edit Employee</h3>

            <s:form action="updateEmployee" method="post" theme="simple" cssClass="space-y-5">
                <s:hidden name="employee.id" />

                <!-- Name Field -->
                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">Name <span
                            class="text-red-500">*</span></label>
                    <s:textfield name="employee.name"
                        cssClass=" px-2 py-3 mt-1 block w-full border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 text-sm"
                        id="name" />
                    <s:fielderror fieldName="employee.name" cssClass="text-red-500 text-xs mt-1" />
                </div>

                <!-- Email Field -->
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">Email <span
                            class="text-red-500">*</span></label>
                    <s:textfield name="employee.email"
                        cssClass=" px-2 py-3 mt-1 block w-full border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 text-sm"
                        id="email" />
                    <s:fielderror fieldName="employee.email" cssClass="text-red-500 text-xs mt-1" />
                </div>

                <!-- Salary Field -->
                <div>
                    <label for="salary" class="block text-sm font-medium text-gray-700">Salary <span
                            class="text-red-500">*</span></label>
                    <s:textfield name="employee.salary"
                        cssClass=" px-2 py-3 mt-1 block w-full border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 text-sm"
                        id="salary" type="number" step="0.01" />
                    <s:fielderror fieldName="employee.salary" cssClass="text-red-500 text-xs mt-1" />
                </div>

                <!-- Designation Field -->
                <div>
                    <label for="designation" class="block text-sm font-medium text-gray-700">Designation</label>
                    <s:textfield name="employee.designation"
                        cssClass=" px-2 py-3 mt-1 block w-full border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 text-sm"
                        id="designation" />
                </div>

                <!-- Action Buttons -->
                <div class="flex space-x-4">
                    <s:submit value="Update"
                        cssClass="bg-[#5a4da3] text-white text-sm px-4 py-2 rounded-lg hover:scale-105 transition" />
                    <a href="<s:url action='listEmployees'/>"
                        class="bg-gray-500 text-white text-sm px-4 py-2 rounded-lg hover:scale-105 transition">
                        Cancel
                    </a>
                </div>
            </s:form>
        </div>

        <jsp:include page="footer.jsp" />