<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .headerH{position:relative; background-color: rgb(54, 59, 65); width: auto; height: 70px; padding: 15px;}
        .headerName{color: white; position:absolute;  margin-left: 15%;}
        .main{position:relative; width:auto; height: 1000px; background-color: rgb(238, 238, 238);}
        .mainName{position: absolute; width: 70%; height: 100%; margin-left: 15%; background-color: rgb(255, 255, 255); padding: 30px; }
        .search{ width:700px; 
            height: auto; background-color: rgb(238, 238, 238); padding: 25px;}
        .danger{color: red; font-style: italic;}
        .result_box{position: relative; background-color: aquamarine; margin-top: 10px;  width: 100%; height: auto;
        border-radius: 5px; padding:10px;
        }
        .add_data{position:relative;
             width:700px; height: 300px; background-color: rgb(238, 238, 238); padding: 25px;}
        .hide {
  			display: none !important;	/* 사용자가 아무것도 입력하지 않았을 때 검색창을 숨기는 용도*/
		}
             
    </style>
    <link rel="stylesheet" href="css/autocomplete.css">
    <!-- css에는 autocomplet의 요소를 만들떄 필요한 scrpit가 담겨져 있습니다. -->
    <script type="text/javascript" src="js/autocomplate.js"></script>
    <!-- css에는 autocomplet의 요소의 샘플 json의 값이 담겨져 있습니다. -->
    <script type="text/javascript" src="js/animal.js"></script>
</head>
<body>
    <div class="headerH">
        <h3 class="headerName">국사무쌍</h3>
    </div>

    <!-- 메인 전체 div -->
    <div class="main">

        <!-- 중앙 흰색 div -->
        <div class="mainName">
            <h3>라오킹 국사무쌍 지식광장</h3>
            <hr>

            <!-- 문답찾기 회색 div -->
            <div class="search">
                <h4>문답 찾기</h4>
                <br>
                <p>문제 키워드를 입력해주세요.</p>
                <p>-검색 후 엔터키를 누르면 초기화</p>
                <p>-대소문자, 띄어쓰기 구분없이 검색가능</p>
                <p>-<span class="danger">[주의]</span>가 표기된 문제는 헷갈리기 쉽거나 오답일 가능성이 있으니 다시 확인</p>
                <form class="d-flex" action="search_question">
                    <input class="form-control me-sm-2" type="search" id="search_field" placeholder="Search" onkeyup="addQuestionList()">
                   		
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                </form>
                <div class="result_box">            
                                                     
                </div>
                
            </div>
            <br>

            <!-- 문답 등록 2번째 div -->
	        <div class="add_data">
	            <h4>문답 등록(데이터 추가)</h4>
	            <br>
	            <form class="d-flex" action="newquestion.jsp">
	                <input class="form-control me-sm-2" type="text" name="question" placeholder="문제">
	                <input class="form-control me-sm-2" type="text" name="answer" placeholder="정답">
	            
		            
		            <div class="col text-center">
		            <button type="submit" class="btn btn-secondary">제출하기</button>
		        	</div>
	        	</form>
	        </div>
        </div>
        
    </div>
    <script>
        
        function addQuestionList(){
        	const name = document.getElementById('search_field').value;
        	document.getElementById("result_box").innerText = name;
        }
        
    </script>
</body>
</html>