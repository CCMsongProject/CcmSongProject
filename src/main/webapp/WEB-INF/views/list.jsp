
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>CCM 추천 리스트</title>

    <style>
        .btn-primary{ margin: 0 20px;}
        body { margin: 20px; }
    </style>

    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>

<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h1 class="my-0 mr-md-auto font-weight-normal">HGU CCM 추천 리스트</h1>
    <br/><a class="btn btn-primary" href="add">새 CCM 추천하기</a>
    <br/><a class="btn btn-primary" href="login/logout">로그아웃</a><br/>
</div>

<table id="list" class="table table-striped table-sm" width="90%">
<tr>
    <th></th>
    <th>제목</th>
    <th>닉네임</th>
    <th>가수</th>
    <th>앨범</th>
    <th>재생 시간</th>
    <th>장르</th>
    <th>추천이유</th>
    <th>작성일</th>
    <th>수정</th>
    <th>삭제</th>
</tr>

<c:forEach items="${list}" var="u">
    <tr>
        <td>${u.seq}</td>
        <td>${u.title}</td>
        <td>${u.nickname}</td>
        <td>${u.singer}</td>
        <td>${u.album}</td>
        <td>${u.playtime}</td>
        <td>${u.genre}</td>
        <td>${u.comment}</td>
        <td>${u.regdate}</td>
        <td><a class="btn btn-outline-secondary" href="editform/${u.seq}">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
            </svg>
        </a></td>
        <td><a class="btn btn-outline-secondary" href="javascript:delete_ok('${u.seq}')">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
            </svg>
        </a></td>
    </tr>
</c:forEach>
</table>

<div id="bottom">
    <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a href="login/logout" class="nav-link px-2 text-muted">로그아웃</a></li>
            <li class="nav-item"><a href="add" class="nav-link px-2 text-muted">새 CCM 추천하기</a></li>
            <li class="nav-item"><a href="list" class="nav-link px-2 text-muted">맨 위로</a></li>
        </ul>
        <p class="text-center text-muted">권민하 박인수 이하경</p>
    </footer>
</div>

</body>
</html>
