<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>로그인</title>

    <style>
        body { margin: 20px; }
        img, label { display:inline-block;}
        div#main { display: flex; padding: 10px 150px 0px 150px; }
        div#login { padding: 10px; width: 40%; }
    </style>

</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h1 class="my-0 mr-md-auto font-weight-normal">HGU CCM 추천 리스트</h1>
</div>

<div id="main">
    <img src='../img/istockphoto-1248542684-612x612.jpeg' height="250">
    <div id="login">
        <form method="post" action="loginOk">
            <label for="userid">아이디</label>
            <input type="text" class="form-control" id="userid" name="userid">
            <label for="password">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password">
            <br/>
            <button type='submit' class="btn btn btn-lg btn-primary btn-block">login</button>
        </form>
    </div>
</div>

<div id="bottom">
    <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3"></ul>
        <p class="text-center text-muted">권민하 박인수 이하경</p>
    </footer>
</div>

</body>
</html>