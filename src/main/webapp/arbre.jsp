<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="matchmaker.*" %>
<%@page import="model.*" %>
<%@page import="model.MatchDao" %>
<%@page import="entity.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.persistence.*" %>

<!doctype html>
<html lang=fr>
<head>
    <meta charset="utf-8">
    <title>MatchMaker : Tree view</title>

    <link href="css/all.min.css" rel="stylesheet">
    <link href="css/normalize.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
<% EntityManagerFactory entity = Persistence.createEntityManagerFactory("jpa-unit"); %>
<% EntityManager em =  entity.createEntityManager(); %>
<% MatchDao matchtest = new MatchDao(em); %>
<%=matchtest.getMatch(1).getPlayer2() %>


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



</body>
</html>