<%-- 
    Document   : addAuthor
    Created on : Feb 11, 2022, 9:13:46 AM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>Список книг</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Navbar</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Dropdown
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            </div>
        </nav>
        <div class="container-fluid">
            <h1 class="w-100 text-center my-5">Список книг</h1>
            <p class="w-100 text-center my-1 text-info">${info}&nbsp;</p>
            <div class="w-100 d-flex justify-content-center">
                <div class="card border-0" style="width: 30rem;">
                    <form action="createBook" method="POST">
                        <div class="mb-3">
                            <label for="bookName" class="form-label">Название книги</label>
                            <input type="text" class="form-control"  name="bookName" id="bookName" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label for="authorsId" class="form-label">Авторы</label>
                            <select name="authorsId" id="authorsId" multiple="true" class="form-select">
                                <c:forEach var="author" items="${authors}">
                                    <option value="${author.id}">${author.firstName} ${author.lastName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="releaseYear" class="form-label">Год публикации</label>
                            <input type="text" class="form-control  w-50"  name="releaseYear" id="releaseYear" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label for="quantity" class="form-label">Количество книг</label>
                            <input type="text" class="form-control w-25"  name="quantity" id="quantity" placeholder="">
                        </div>
                        <input class="btn btn-primary mt-3" type="submit" value="Запомнить">
                    </form>
                </div>
            </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
