<%-- 
    Document   : ShowRegistration
    Created on : 03.03.2022, 10:43:44
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="w-100 text-center my-5">Регистрация</h1>
<div class="w-100 d-flex justify-content-center">
    <div class="card border-0  p-5 m-4" style="width: 30rem;">
        <form action="registration" method="POST">
            <div class="mb-3">
                <label for="name" class="form-label">Имя</label>
                <input type="text" class="form-control"  name="name" id="name" placeholder="">
            </div>
            <div class="mb-3">
                <label for="lastname" class="form-label">Фамилия</label>
                <input type="text" class="form-control"  name="lastname" id="lastname" placeholder="">
            </div>
            <div class="mb-3">
                <label for="tel" class="form-label">Телефон</label>
                <input type="text" class="form-control"  name="tel" id="tel" placeholder="">
            </div>
            <div class="mb-3">
                <label for="login" class="form-label">Логин</label>
                <input type="text" class="form-control"  name="login" id="login" placeholder="">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Пароль</label>
                <input type="text" class="form-control"  name="password" id="password" placeholder="">
            </div>
            <div class="mb-3">
                <label for="password2" class="form-label">Повторите пароль</label>
                <input type="text" class="form-control"  name="password2" id="password2" placeholder="">
            </div>
            <input class="btn btn-primary my-3" type="submit" value="Зарегистрироваться">
            <p><a href="showLogin">Войти</a></p>
        </form>
    </div>
</div>
