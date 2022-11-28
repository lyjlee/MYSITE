<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="${contextPath}/resources/css/common.css" type="text/css">
<link rel="stylesheet" href="${contextPath}/resources/css/index.css" type="text/css">

</head>
<script>
   function goTop() {
        $('html').animate({scrollTop:0},400);
        return false;
   }
   window.onload = function () {
            
        }
</script>
<body>
    <!-- 헤더 안에 로고, nav로 메인배너, 로그인,회원가입 앵커 -->
   <header>
    <nav>
        <h1 class="logo">
            <a href="index.html"><img src="${contextPath}/resources/images/logo.png" alt="로고"></a>
        </h1>
        <div class="bannerdiv">
            <a href="comment.html">
            <ul class="banner">
                <li>영화 한 줄평</li>
            </ul>
            </a>
        </div>
        <div class="bannerdiv">
            <a href="#">
            <ul class="banner">
                <li>영화 이야기</li>            
            </ul>
            </a>
        </div>
        <div class="bannerdiv">
            <a href="#"><p>마이 페이지</p></a>
            <!-- <ul class="banner">
                <a href="#"><li>나의 한 줄평</li></a>
                <a href="#"><li>회원정보</li></a>
            </ul> -->
        </div>
        <div id="loginjoin">
            <a href="#">로그인</a>
            <a href="#">회원가입</a>
        </div>
    </nav>
    </header> 
    <!-- 메인 안에 아티클로 슬라이드배너, 섹션1 영화 한 줄평 , 
        아티클 두 개 -> 영화이야기, 자유게시판 -->
    <main>
        <!-- 이 달의 영화 슬라이드-->
        <article id="monthmovie">
		<img src="${contextPath}/resources/images/monthly.png" alt="">
        </article>
        <!--섹션-->
        <section class="content">
            <!-- 영화 한 줄평-->
            <article id="moviecomment">
                <a href="#" class="more">영화 한 줄평</a>
                <div id="movieinfodiv">
                    <img src="${contextPath}/resources/images/poster.jpg" alt="">
                </div>
                <div id="commentdiv">
                    <table border="1">
                        <legend>한 줄평</legend>
                        <!-- index에선 최대 10개 까지만 보이게-->
                        <tr><td>⭐×5</td><td>이 영화 엄청납니다 대박</td><td>아무개1</td></tr>
                        <tr><td>⭐×3</td><td>올해 최고의 영화입니다</td><td>아무개2</td></tr>
                        <tr><td>⭐×5</td><td>최고의 영화였습니다 쥐락펴락하는 스토리가 인상깊었습니다</td><td>아무개2</td></tr>
                        <tr><td>⭐×5</td><td>엄청난 내러티브의 영화였습니다</td><td>아무개2</td></tr>
                        <tr><td>⭐×5</td><td>팀버튼의 배트맨도 좋지만 역시 놀란의 것도 좋네요</td><td>아무개2</td></tr>
                        <tr><td>⭐×5</td><td>조커의 메소드연기가 엄청났습니다</td><td>아무개2</td></tr>
                        <tr><td>⭐×5</td><td>서로의 가치관이 빗는 마찰이 대단합니다</td><td>아무개2</td></tr>
                        <tr><td>⭐×5</td><td>불살이 모토인 히어로의 삶은 힘드네요</td><td>아무개2</td></tr>
                        <tr><td>⭐×5</td><td>터널에서의 액션씬이 굉장합니다 ㄷㄷ</td><td>아무개2</td></tr>
                    </table>
                    <div>
                        <input type="button" value="나도 한 줄평 쓰러가기" id="gocomment" onclick="">
                    </div>

            </article>
            <!-- 영화 이야기 게시판-->
            <article class="board" id="movieboard">                
                <a href="#" class="more">영화 이야기</a>
                <div class="inboard">
                	<a href="#">게시글 한 개 더 라스트 연결
                        <span class="boarddate">2022.11.28</span>
                    </a>
                    <br>
                    <a href="#">예시 게시글제목이div보다더길면...으로보이게만들어보거라
                        <span class="boarddate">2022.11.19</span>
                    </a>
                    <br>
                    <a href="#">한 개 더 임시로 임시로 임시로 임시로
                        <span class="boarddate">2022.11.19</span>
                    </a>
                    <br>
                    <a href="#">한 개 더 임시로 임시로 임시로 임시로
                        <span class="boarddate">2022.11.17</span>
                    </a>
                    <br>
                    <a href="#">한 개 더 임시로 임시로 임시로 임시로
                        <span class="boarddate">2022.11.16</span>
                    </a>
                    <br>
                </div>
            </article>

            <!-- 자유게시판-->
            <article class="board" id="freeboard">
                <a href="#" class="more">자유 이야기</a>
                <div class="inboard">
    	            <a href="#">자유 게시판 123456
                        <span class="boarddate">2022.11.28</span>
                    </a>
                    <br>
                    <a href="#">예시 게시글제목이div보다더길면...으로보이게만들어보거라
                        <span class="boarddate">2022.11.19</span>
                    </a>
                    <br>
                    <a href="#">한 개 더 임시로 만들어 본다 이렇게
                        <span class="boarddate">2022.11.19</span>
                    </a>
                    <br>
                    <a href="#">테스트 글 1234567
                        <span class="boarddate">2022.11.19</span>
                    </a>
                    <br>
                </div>
            </article>
        </section>
    </main>
    <!-- 푸터-->
    <footer>

            <div>
               <p>전화번호 : 000-000-0000, 010-0000-0000  사업자정보 : 이영재</p> 
               <p>주소: 의정부시 범골로 29번길 34</p>
               <p>Copyright © 영화 한 줄평 All Rights Reserved.</p>
            </div>
    </footer>
    <button id="scrollbtn" onclick="goTop();"><img src="${contextPath}/resources/images/up.png" alt=""></button>    
</body>
</html>