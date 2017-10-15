<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>welcome</title>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <t:navbar basic="index"/>
</div>
<br>
<br>
<br>

<meta name="viewport" content="width=device-width, initial-scale=1">

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3 col-sm-4 visible-md visible-sm visible-lg">
            <img src="../../../resources/img/analyze.png" height="250">
        </div>
        <div class="col-md-6 col-sm-5 col-xs-12 text-center">
            <h1 class="text-info">TrackQ</h1>
            <h3>Welcome to our projects tracking system</h3>
            <h3>We wish you good luck whits this tool.</h3>
        </div>
        <div class="col-md-3 col-sm-3 visible-md visible-sm visible-lg">
            <img src="../../../resources/img/Project%20Tracking.png" height="250">
        </div>
    </div>
</div>

<br>

<div class="container-fluid">
    <div class="row">

        <div class="col-xs-12 col-sm-3 panel-body panel panel-default">
            <h4>What should we do?</h4>
            <div class="form-group">
                <a href="CreateProject.html" class="btn btn-warning">Create Project</a>
            </div>
            <div class="form-group">
                <a href="CreateIssue.html" class="btn btn-info">Create Issue</a>
            </div>
            <div class=class="form-group">
                <a href="InviteCovorkers.html" class="btn btn-success">Invite coworker</a>
            </div>
        </div>


        <div class="col-xs-12 col-sm-9 panel-body panel panel-default">
            <div class="row">
                <h4 class="text-danger">My projects</h4>
                <table class="table-condensed table-bordered">
                    <thead>
                    <tr>
                        <th class="text-center">Project name</th>
                        <th class="text-center">Your role</th>
                        <th class="text-center">Issues</th>
                        <th class="text-center">My issues</th>
                        <th class="text-center">actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <input name="orderId" readonly style="width: 75px">
                        </td>
                        <td>
                            <input name="userId" readonly style="width: 75px">
                        </td>
                        <td>
                            <input type="date" readonly disabled style="width: 150px">
                        </td>
                        <td>
                            <select class="form-control bg-warning" name="status" style="width: 150px">
                                <option value="1" selected="selected">they are dorks</option>
                                <option value="2">they kick me =(</option>
                                <option value="3">I like to fuck up</option>
                            </select>
                        </td>

                        <td>
                            <button class="btn-link" value="update" name="command"><span
                                    class="glyphicon glyphicon-refresh"></span>
                                checkout
                            </button>
                        </td>
                    </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>


</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
