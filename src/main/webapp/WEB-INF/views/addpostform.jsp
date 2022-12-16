
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

  <title>CCM 등록</title>

  <style>
    .btn-primary{
      margin: 0 20px;
    }

    div#forms{
      margin: 20px;
      display: flex;
    }

    body {
      margin: 20px;
    }
  </style>

</head>
<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <h1 class="my-0 mr-md-auto font-weight-normal">HGU CCM 추천 리스트</h1>
  <br/><a class="btn btn-primary" onclick="history.back()">추천 리스트 보기</a>
</div>

<form action="addok" method="post">
<div id="forms">
  <div class="col-md-6 mb-3">
    <h4 class="mb-3">CCM 곡 정보</h4>

    <div class="mb-3">
      <label for="title">제목</label>
      <input type="text" class="form-control" id="title" name="title" placeholder="CCM 제목">
    </div>
    <div class="mb-3">
      <label for="singer">가수</label>
      <input type="text" class="form-control" id="singer" name="singer" placeholder="CCM 가수">
    </div>
    <div class="mb-3">
      <label for="album">앨범</label>
      <input type="text" class="form-control" id="album" name="album" placeholder="CCM 앨범">
    </div>

    <div class="row">
      <div class="d-block my-3 col-md-6 mb-3">
        <label>재생 시간</label>
        <div class="custom-control custom-radio">
          <input id="1" name="playtime" value="1분 미만" type="radio" class="custom-control-input" checked>
          <label class="custom-control-label" for="1">1분 미만</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="2" name="playtime" value="1~2분" type="radio" class="custom-control-input">
          <label class="custom-control-label" for="2">1~2분</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="3" name="playtime" value="2~3분" type="radio" class="custom-control-input">
          <label class="custom-control-label" for="3">2~3분</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="4" name="playtime" value="3분 이상" type="radio" class="custom-control-input">
          <label class="custom-control-label" for="4">3분 이상</label>
        </div>
      </div>

      <div class="d-block my-3 col-md-6 mb-3">
        <label>장르</label>
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" id="hobby1" name="genre"  value="잔잔한">
          <label class="custom-control-label" for="hobby1">잔잔한</label>
        </div>
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" id="hobby2" name="genre" value="신나는">
          <label class="custom-control-label" for="hobby2">신나는</label>
        </div>
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" id="hobby3" name="genre" value="피아노">
          <label class="custom-control-label" for="hobby3">피아노</label>
        </div>
        <small class="text-muted">장르는 최대 두 개까지만 선택해주세요</small>
      </div>
    </div>
  </div>

  <div class="col-md-6 mb-3">
    <h4 class="mb-3">CCM 추천</h4>
    <div class="mb-3">
      <label for="album">닉네임</label>
      <input type="text" class="form-control" id="nickname" name="nickname" placeholder="추천자 닉네임">
    </div>
    <div class="mb-3">
      <label for="album">추천 내용</label>
      <textarea cols="50" rows="5" id="comment" name="comment"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">등록하기</button>
  </div>
</div>
</form>


<div id="bottom">
  <footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3"></ul>
    <p class="text-center text-muted">권민하 박인수 이하경</p>
  </footer>
</div>

</body>
</html>
