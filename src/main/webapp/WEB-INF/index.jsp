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
    <title>Omikuji Form</title>
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
          <h1>Send an Omikuji!</h1>
        </div>
        <div class="card-body">
          <form action="/omikuji/submit" method="post">
            <!--DOUBLE CHECK THIS -->
            <label for="number" class="form-label">
              <h6>Pick any number from 5 to 25</h6>
            </label>
            <input
              class="form-control mb-3"
              type="number"
              name="number"
              min="5"
              max="25"
            />
            <label class="form-label" for="city">
              <h6>Enter the name of any city.</h6>
            </label>
            <input class="form-control mb-3" type="text" name="city" />
            <label class="form-label" for="person">
              <h6>Enter the name of any real person.</h6>
            </label>
            <input class="form-control mb-3" type="text" name="person"/>
            <label class="form-label" for="hobby">
              <h6>Enter professional endeavor or hobby:</h6>
            </label>
            <input class="form-control mb-3" type="text" name="hobby"/>
            <label class="form-label" for="livthing">
              <h6>Enter any type of living thing.</h6>
            </label>
            <input class="form-control mb-3" type="text" name="livthing"/>
            <label class="form-label" for="something">
              <h6>Say something nice to someone:</h6>
            </label>
            <textarea rows="5" class="form-control mb-3" name="something"> </textarea>
            <h6><i>Send and show a friend</i></h6>
            <div class="d-flex justify-content-end">
              <button type="submit" class="btn btn-primary m-3">Send</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
