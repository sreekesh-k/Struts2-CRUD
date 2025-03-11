<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
        <jsp:include page="header.jsp" />

        <div class="max-w-2xl mx-auto mt-10">
            <div class="bg-red-100 border-l-4 border-red-500 text-red-700 p-5 rounded-lg shadow-md">
                <div class="flex items-center mb-3">
                    <svg class="w-6 h-6 text-red-600 mr-2" fill="none" stroke="currentColor" stroke-width="2"
                        viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M12 9v2m0 4h.01M12 3a9 9 0 110 18 9 9 0 010-18z"></path>
                    </svg>
                    <h3 class="text-lg font-semibold">Error Occurred</h3>
                </div>

                <s:if test="hasActionErrors()">
                    <div class="bg-red-200 text-red-800 text-sm px-4 py-3 rounded-md mb-4">
                        <s:actionerror />
                    </div>
                </s:if>

                <s:else>
                    <div class="bg-red-200 text-red-800 text-sm px-4 py-3 rounded-md mb-4">
                        Unknown error occurred. Please try again later or contact the administrator.
                    </div>
                </s:else>

                <a href="<s:url action='listEmployees'/>"
                    class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition">
                    ← Return to Employee List
                </a>
            </div>
        </div>

        <jsp:include page="footer.jsp" />