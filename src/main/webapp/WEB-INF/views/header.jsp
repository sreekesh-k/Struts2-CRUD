<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Employee Management System</title>
            <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        </head>

        <body class="bg-gray-100 max-w-[96rem] mx-auto">
            <nav class="w-full bg-[#5a4da3] text-white shadow-md">
                <div class="container mx-auto flex justify-between items-center py-3 px-4">
                    <a class="text-2xl font-bold" href="<s:url action='listEmployees'/>">Employee Management System</a>
                    <div class="hidden md:flex space-x-6">
                        <a class="hover:text-gray-300 transition" href="<s:url action='listEmployees'/>">View
                            Employees</a>
                        <a class="hover:text-gray-300 transition" href="<s:url action='addEmployeeForm'/>">Add
                            Employee</a>
                    </div>
                    <button class="md:hidden text-white focus:outline-none" onclick="toggleMenu()">
                        ☰
                    </button>
                </div>
                <div class="hidden md:hidden flex flex-col bg-blue-700 space-y-2 py-2 text-center" id="mobileMenu">
                    <a class="hover:text-gray-300 transition" href="<s:url action='listEmployees'/>">View Employees</a>
                    <a class="hover:text-gray-300 transition" href="<s:url action='addEmployeeForm'/>">Add Employee</a>
                </div>
            </nav>

            <div class="container mx-auto mt-6">
                <!-- Display action errors/messages -->
                <s:if test="hasActionErrors()">
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-2 rounded-md mb-4">
                        <s:actionerror />
                    </div>
                </s:if>
                <s:if test="hasActionMessages()">
                    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-2 rounded-md mb-4">
                        <s:actionmessage />
                    </div>
                </s:if>
            </div>