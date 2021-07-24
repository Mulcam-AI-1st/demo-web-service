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

<script>

$(document).ready(function() {
		// 초기 메뉴 세팅
	   $(".nav-tabs li a").eq(0).addClass("active");
	   $(".nav-tabs li a").eq(0).attr("aria-current","page");
	   $(".tab-cont").hide();
	   $("#composition_1").show();
	   
	   // 클릭시 메뉴 변경
	  $(".nav-tabs li").click(function() {
		  //alert("click");
	    var idx = $(this).index();
	      //alert(idx);
	    $(".nav-tabs li a").removeClass("active");
	    $(".nav-tabs li a").removeAttr("aria-current");
	    $(".nav-tabs li a").eq(idx).addClass("active");
	    $(".nav-tabs li a").eq(idx).attr("aria-current","page");
	     
	    $(".tab-cont").hide();
	    $("#composition_"+(idx+1)).show();
	  })
	});


</script>
<jsp:include page="./navi.jsp"></jsp:include>


<main>
    <!--  식단 소개   -->
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">${hd.categoryid }</h1>
                <p class="lead text-muted" style="text-align:left;">
                    <strong>식단구성</strong> <br>

                    <strong>식단소개</strong> <br>
                    ${hd.contents}
                    <br>
                    
                    <img src="${hd.imageurl}" class="img-fluid" alt="식단이미지" width="300px" height="300px"><br>
                	<strong>영양소</strong><br>
                	${hd.nutrients}
                </p>
            </div>
        </div>
    </section>


    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                   	<img src="./lib/images/cookingshow_recomm_01.png" class="img-fluid" alt="추천 이유 ">
                   	<img src="./lib/images/cookingshow_desc_01.png" class="img-fluid" alt="영양 상식">
                                	

            </div>
        </div>
    </section>
    <!--  식단 구성별 네비 바  -->

    <ul class="nav nav-tabs">
    	<!-- 식단 구성요소 반복문 -->
    	<c:forEach var="composition" items="${hddList}" varStatus="status">
	        <li class="nav-item" >
	        	<a class="nav-link" >${composition.compositionno}. ${composition.title }</a>
	            <!--<a class="nav-link" aria-current="page" href="#composition_${composition.compositionno}">${composition.compositionno}. ${composition.title }</a>  -->
	        </li>
       </c:forEach>
       <!-- 식단 구성요소 반복문 끝 -->
    </ul>

    <div class="row" style="height:10px;"></div><!-- 공백  -->

    <div class="row">

        <section class="main__sect care hd__inner1100">
            
            

        </section>
    </div>

    <!--  블로그 형태 본문  -->
    <!--   식단구성요소 상세 정보  -->
    <c:forEach var="composition" items="${hddList}" varStatus="status">
    <div class="row g-5 tab-cont" id="composition_${composition.compositionno}">
        <div class="col-md-8">
            <article class="blog-post">
                <h3 class="main__h3 hPara fadeInUp">
                    <strong>재료 </strong>
	            </h3>
	            <p class="main__desc hPara fadeInUp">${composition.ingredients}</p>
	                
            </article>

			<hr/>         

            <article class="blog-post">
               <h3 class="main__h3 hPara fadeInUp">
                    <strong>조리 방법 </strong>
            </h3>
            <p class="main__desc hPara fadeInUp">${composition.recipe }</p>
  </article>

          

        </div>
        
		<!--  본문 사이드 바  -->
        <div class="col-md-4">
            <div class="position-sticky" style="top: 2rem;">
                <div class="p-4 mb-3 bg-light rounded">
                    <h4 class="fst-bold">${composition.title }</h4>
                
                	<img src="./lib/images/rda_lowpressure01_01.png" class="img-fluid" alt="단호박 고등어조림">
                </div>

            </div>
        </div> <!--  본문 사이드 바  -->
    </div> <!--  블로그 형태 본문  -->
   </c:forEach>     <!--   식단구성요소 상세 정보 끝 -->
     <nav class="blog-pagination" aria-label="Pagination">
                <a class="btn btn-outline-primary" href="#"> 이전 식단 </a>
                <a class="btn btn-outline-secondary disabled" href="#" tabindex="-1" aria-disabled="true"> 다음 식단 </a>
            </nav>
</main>


<script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.js"></script>

<jsp:include page="./footer.jsp"></jsp:include>
