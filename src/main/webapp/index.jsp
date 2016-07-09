<html>
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<body>
<div class="jumbotron">
    <div class="container">

        <h1>Restaurant Vote</h1>
        <p>RESTful API: Maven/ Spring/ JPA(Hibernate)/ REST(Jackson)/ JUnit/ Spring RestDoc</p>

        <p>Build a voting system for deciding where to have lunch.</p>
        <ul>
            <li>2 types of users: admin and regular users</li>
            <li>Admin can input a restaurant and it's lunch menu of the day (2-5 items usually, just a dish name and
                price)
            </li>
            <li>Menu changes each day (admins do the updates)</li>
            <li>Users can vote on which restaurant they want to have lunch at</li>
            <li>Only one vote counted per user</li>
            <li>If user votes again the same day:</li>
            <ul>
                <li>If it is before 11:00 we asume that he changed his mind.</li>
                <li>If it is after 11:00 then it is too late, vote can't be changed</li>
            </ul>
        </ul>
        <p>Each restaurant provides new menu each day.</p>
        <hr>
        <p>P.S: API will used by a frontend developer to build frontend on top of that.</p>

        <p><a class="btn btn-primary btn-lg" href="./static/docs/api-guide.html" role="button">API Documentation</a></p>
    </div>

</div>
</body>
</html>