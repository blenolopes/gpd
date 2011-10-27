<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%
session.invalidate();
response.sendRedirect("../index.jsp?modulo=home");
%>