<%-- 
    Document   : index
    Created on : 16/06/2015
    Author     : LuisD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Insecure Login Form</title>
        <link rel="stylesheet" href="css/style.css">
        <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <div class="login">
            <h1 class="title">Login form</h1>
            <c:if test="${not empty requestScope.error}">
                <p class="error">
                    <% out.println(request.getAttribute("error"));%>
                </p>
            </c:if>

            <form method="post" action="LoginServlet">
                <p><input type="text" name="login" value="" placeholder="Username or email"></p>
                <p><input type="password" name="password" value="" placeholder="Password"></p>
                <p class="remember">
                    <label>
                    <input type="checkbox" name="remember">
                    Remember me
                    </label>
                </p>
                <p id="buttonholder"><input id="button" type="submit"  name="submit" value="Log in"></p>
            </form>
        </div>
        <div class="help">
            <p>Forgot your password? <a href="index.jsp">Reset it.</a></p>
        </div>

    </body>
</html>