<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Rediriger vers la servlet home
    response.sendRedirect(request.getContextPath() + "/home");
%>