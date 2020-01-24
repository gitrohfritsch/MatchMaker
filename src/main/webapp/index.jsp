<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="matchmaker.*" %>
<%@page import="java.util.*" %>

<!doctype html>
<html lang=fr>
<head>
    <meta charset="utf-8">
    <title>MatchMaker : Make match not war !</title>

    <link href="css/all.min.css" rel="stylesheet">
    <link href="css/normalize.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>


<%

 %>
<%  %>

<%  %>




<nav style="background-image: url('img/banner.jpg'); background-size: 100% ;">
    <div>
        <a href="index.jsp" class="btn btn-outline-light">I<small class="text-muted">ndex</small></a>
        <a href="index.jsp" class="btn btn-outline-light">M<small class="text-muted">atch</small></a>
        <a href="index.jsp" class="btn btn-outline-light">C<small class="text-muted">ompetition</small></a>
        <a href="arbre.jsp" class="btn btn-outline-light">A<small class="text-muted">rbre</small></a>
        <a href="index.jsp" class="btn btn-outline-light">R<small class="text-muted">esultat</small></a>
        <a href="index.jsp" class="btn btn-outline-light">A<small class="text-muted"> Propos</small></a>
    </div>
</nav>

<h1>M<small class="text-muted">atch</small> M<small class="text-muted">aker</small></h1>

<table class="table table-striped">
    <thead class="thead-dark" >

    <TR >
        <th scope="col">Name</th>
        <th scope="col">Rank</th>
        <th scope="col">Level</th>
        <th scope="col">Divers</th>
        <th scope="col">Action</th>
    </TR>
    </thead>

    <tbody>
<%
    Request myTests = new Request();
    List<User> list = myTests.findAll();


    for(int i = 0 ; i < list.size(); i++){
        out.println("<tr><td>"+list.get(i).getNickname()+"</td><td>"+list.get(i).getLevel()+"</td><td></td><td></td><td><a class='btn btn-dark' href=''>Match</a> <a class='btn btn-dark' href=''>Competition</a> <a class='btn btn-dark' href=''>Edition</a></td></tr>");
    }
%>
    </tbody>

</table>

</body>
</html>