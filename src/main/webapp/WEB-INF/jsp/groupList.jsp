<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<jsp:include page="fragments/headTag.jsp"/>
<link rel="stylesheet" href="webjars/datatables/1.10.11/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="webjars/datetimepicker/2.4.7/jquery.datetimepicker.css">

<body>
<jsp:include page="fragments/bodyHeader.jsp"/>

<div class="jumbotron">
    <div class="container">
        <div class="shadow">
            <h3><fmt:message key="group.title"/></h3>

            <div class="view-box">
                <a class="btn btn-sm btn-info" onclick="add()"><fmt:message key="group.add"/></a>
                <table class="table table-striped display" id="datatable">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Signed</th>
                        <th>New messages</th>
                        <th></th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>

<div class="modal fade" id="editRow">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h2 class="modal-title"><fmt:message key="meals.edit"/></h2>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" method="post" id="detailsForm">
                    <input type="hidden" id="id" name="id">

                    <div class="form-group">
                        <label for="dateTime" class="control-label col-xs-3">Date</label>

                        <div class="col-xs-9">
                            <input class="form-control" id="dateTime" name="dateTime" placeholder="Date">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="control-label col-xs-3">Description</label>

                        <div class="col-xs-9">
                            <input type="text" class="form-control" id="description" name="description"
                                   placeholder="Description">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="calories" class="control-label col-xs-3">Calories</label>

                        <div class="col-xs-9">
                            <input type="number" class="form-control" id="calories" name="calories"
                                   placeholder="2000">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-offset-3 col-xs-9">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="webjars/jquery/2.2.3/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="webjars/datetimepicker/2.4.7/build/jquery.datetimepicker.full.min.js"></script>
<script type="text/javascript" src="webjars/datatables/1.10.11/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="webjars/noty/2.3.8/js/noty/packaged/jquery.noty.packaged.min.js"></script>
<script type="text/javascript" src="resources/js/datatablesUtil.js"></script>
<script type="text/javascript" src="resources/js/mealDatatables.js"></script>
</html>