<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<jsp:include page="fragments/headTag.jsp"/>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header navbar-brand"><fmt:message key="app.title"/></div>
        <div class="navbar-collapse collapse">
            <form class="navbar-form navbar-right" role="form" action="spring_security_check1" method="post">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control" name='username'>
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control" name='password'>
                </div>
                <button type="submit" class="btn btn-success"><fmt:message key="app.login"/></button>
            </form>
        </div>
    </div>
</div>

<div class="jumbotron">
    <div class="container">
        <c:if test="${error}">
            <div class="error">
<%--
                    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
--%>
            </div>
        </c:if>
        <c:if test="${not empty message}">
            <div class="message">
                <fmt:message key="${message}"/>
            </div>
        </c:if>
        <p>

        <p>User login: <b>user@gmail.com / password</b></p>

        <p>Admin login: <b>admin@gmail.com / admin</b></p>

    </div>
</div>
<div class="container">
    <div class="lead">
        &nbsp;&nbsp;&nbsp;<a href="https://github.com/vacoola1/vkapi">VK Api</a>
        Задание на Java Junior: Написать простое web приложение с работой VK API https://new.vk.com/dev/methods

        Обязательные технологии, которые должны быть включены в проект:

        Spring MVC
        Hibernate и Spring Data Приложение должно содержать авторизацию в ВКонтакте для работы с API.
        Приложение состоит из страниц: 1. Авторизация Пользователь может авторизовать под своей учетной записью ВКонтакте. Данные сохраняем в БД и используем далее.

        Форма добавления группы: содержит : • имя группы • ссылку на группу в VK, например: https://vk.com/apiclub • кнопка сохранить, сохраняет в нашей БД заполненные поля.

        Страница статуса: на этой странице отображаются все группы, добавленные с помощью формы добавления групп. Напротив каждой группы указано: • является ли текущий
        пользователь в системе подписчиков данной группы. • кол-во новых записей и ссылки на них.
        Каждый 5 минут идет фоновая проверка этой группы на наличие нового поста.
        Все данные сохраняются и берутся с Базы Данных.

    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
</body>
</html>