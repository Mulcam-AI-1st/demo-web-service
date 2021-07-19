<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<jsp:include page="./header.jsp"></jsp:include>

<!-- Bootstrap core CSS -->
<link href="./lib/bootstrap-5.0.2-dist/css/bootstrap.css" rel="stylesheet">

<style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }

</style>


<jsp:include page="./navi.jsp"></jsp:include>

<!--  가로 출력 개수 지정  -->
<c:set var="i" value="0" />
<c:set var="j" value="3" />


<main>

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">회원 요리 자랑</h1>
                <p class="lead text-muted">좋아하는 요리에 좋아요 추천을 눌러주세요!!</p>
                <p>
                </p>
            </div>
        </div>
    </section>

    <div class="row">
        <!--  앨범 형태 요리 자랑 식단 -->

        <section class="main__sect care hd__inner1100">
            <p class="main__desc hPara fadeInUp">이 요리, 인기 짱!</p>
            <h3 class="main__h3 hPara fadeInUp">
                <a href="#">
                    <strong>회원 요리 - 인기순위 </strong>
                </a>
            </h3>

        </section>

        <div class="album py-5 bg-light">
            <div class="container">
				<!-- 서버에서 불러오는 게시글  -->
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				        <c:forEach items="${csList}" var="List">

				            <c:if test="${i%j == 0 }">
				
				                <br>
				
				            </c:if>
								<div class="col">
                        			<div class="card shadow-sm">
                        			  <img src="${List.imageurl}" width="100%" height="225" onclick="javascript:location.href='./CookingShowDetail'" />
                        			  <div class="card-body">
                        			  <input type="hidden" name="idx" value="${List.idx}">
                                	  <p class="card-text" onclick="javascript:location.href='./CookingShowDetail'">${List.authorid} 님 "${List.categoryid}" <br> ${List.title} <br> ${List.contents} </p>
				                      <div class="d-flex justify-content-between align-items-center">
	                                    <div class="btn-group">
	                                        <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
	                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
	                                                <path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z"></path>
	                                            </svg>
	                                            좋아요
	                                        </button>
	                                        <button type="button" class="btn btn-sm btn-outline-secondary">${List.recommendation}</button>
				                            </div>
		                                    <small class="text-muted">
		                                    <fmt:formatDate value="${List.postdate}" pattern="yyyy.MM.dd"/>
		                                     <c:choose>
						                        <c:when test="${List.modifydate ne null }">
						                             (<fmt:formatDate value="${List.modifydate}" pattern="yyyy.MM.dd"/>) 
						                        </c:when>
						                    </c:choose>
		                                    
		                                   
		                                    </small>
		                                </div>
		                            	</div>
		                        	</div>
		                    	</div>
				       
				
				            <c:if test="${i%j == j-1 }">
				
				                <br>
				
				            </c:if>
				
				            <c:set var="i" value="${i+1 }" />
				
				        </c:forEach>

				
				</div>
                
            </div>
        </div>
    </div> <!-- 앨범 형태 추천 식단	   -->

</main>



<script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.js"></script>


<jsp:include page="./footer.jsp"></jsp:include>
