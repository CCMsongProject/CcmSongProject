<%--
  Created by IntelliJ IDEA.
  User: insu_park
  Date: 2022/12/04
  Time: 12:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CCM 등록</title>
</head>
<body>
<form action="addok" method="post">
  <table id="edit">
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>닉네임</td><td><input type="text" name="nickname"/></td></tr>
    <tr><td>가수</td><td><input type="text" name="singer"/></td></tr>
    <tr><td>앨범</td><td><input type="text" name="album"/></td></tr>
    <tr><td>재생시간</td><td><input type="text" name="playtime"/></td></tr>
    <tr><td>장르</td><td><input type="text" name="genre"/></td></tr>
    <tr><td>내용</td><td><textarea cols="50" rows="5" name="comment"></textarea></td></tr>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type="submit">등록하기</button>
</form>

</body>
</html>
