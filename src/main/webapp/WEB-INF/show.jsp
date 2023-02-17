<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Omikuji Show</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/superhero.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container m-5">
      <div class="card">
        <div class="card-header text-center">
          <h1>Here's Your Omikuji!</h1>
        </div>
        <div class="card-body m-3">
          <h3>
            <!-- // Dynamically render the template for the /omikuji/show route using the information saved in session. -->
            In <c:out value="${number}"></c:out> years, you will live in
            <c:out value="${city}"></c:out> with
            <c:out value="${person}"></c:out> as your roommate,
            <c:out value="${hobby}"></c:out> for a living. The next time you see
            a <c:out value="${livthing}"></c:out>, you will have good luck.
            Also, <c:out value="${something}"></c:out>
          </h3>
        </div>
      </div>
      <!-- Include an anchor tag that goes back to /omikuji. -->
      <div class="m-3"><a href="/omikuji">Go Back</a></div>
    </div>
  </body>
</html>
