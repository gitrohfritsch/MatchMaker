<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="matchmaker.*" %>
<%@page import="model.*" %>
<%@page import="model.MatchDao" %>
<%@page import="entity.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.persistence.*" %>
<% String myFlag = "Update";
/*
if (request.getParameter("id") == null){

    if (request.getParameter("nickname") != null && request.getParameter("nickname") != ""){
        int rank = 0;
        if ( request.getParameter("rank") != "") {
            rank = Integer.parseInt(request.getParameter("rank"));
        }
        String nickname = request.getParameter("nickname");

        User user = new User();
        user.setNickname(nickname);
        user.setLevel(rank);


        EntityManager em = entity.createEntityManager();
        UserDao userDao = new UserDao(em);
        userDao.create(user);

    }
}*/


EntityManagerFactory entity = Persistence.createEntityManagerFactory("jpa-unit");
EntityManager em = entity.createEntityManager();
UserDao userDao = new UserDao(em);

User user = new User();

String id = request.getParameter("id");

if (id != null && Integer.parseInt(id) > 0){

   user = em.find(User.class, Integer.parseInt(id));
}else
{
myFlag = "Create";
}

if(request.getParameter("flag") != null && request.getParameter("flag").equals("SUBMIT")) {
    user.setNickname(request.getParameter("nickname"));
    String rank = request.getParameter("rank");

    if (id != null){
        user.setLevel(Integer.parseInt(rank));
        userDao.update(user);
    }  else {

        if(rank != null) {
            user.setLevel(Integer.parseInt(rank));
        } else {
            user.setLevel(0);
        }
        userDao.create(user);
    }
}
%>
<!doctype html>
<html lang=fr>
<head>
    <meta charset="utf-8">
    <title>MatchMaker : Player Management !</title>

    <link href="css/all.min.css" rel="stylesheet">
    <link href="css/normalize.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
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



<form action="player.jsp" method="post">
  <div class="form-group">
    <label for="nickname">Nickname</label>
    <input type="text" class="form-control" name="nickname" id="nickname" aria-describedby="nicknameHelp"
    value='<%= (id == "")? user.getNickname() : "" %>'>
    <small id="nickname help" class="form-text text-muted">Enter Nickname</small>
  </div>
  <div class="form-group">
    <label for="rank">Rank</label>
    <input type="text" name="rank" class="form-control " id="rank"
    value='<%= user.getLevel() %>'>
    <small id="nickname help" class="form-text text-muted">Numbers Only !!!</small>
  </div>
  <div>
        <input type='hidden' name='id' value='<%=user.getId() %>'>
        <input type='hidden' name='flag' value='SUBMIT'>
  </div>

  <button type="submit" class="btn btn-dark"><%= myFlag %></button>
</form>