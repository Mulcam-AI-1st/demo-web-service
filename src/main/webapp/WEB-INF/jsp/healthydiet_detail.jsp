<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<main>
    <!--  식단 소개   -->
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">피로를 완화시켜 주는 음식</h1>
                <p class="lead text-muted" style="text-align:left;">
                    <strong>식단구성</strong> <br>

                    <strong>식단소개</strong> 피로회복에는 매콤짭짤한 단호박고등어조림과 닭살부추죽! <br>
                    단호박과 부추는 간 기능과 눈의 피로를 회복시키는데 탁월한 효과가 있고 <br>
                    고등어에는 오메가 3 지방산이 풍부하게 들어있어 기분을 좋게 해준답니다. <br>
                    시원하면서 새콤한 나박김치와 함께 곁들여 먹으면 아삭한 식감이 더해져서 좋아요~ <br>
                    (매실차를 곁들여도 좋아요. 매실은 간의 해독작용을 돕고 시트르산이 풍부하여 피로를 푸는데 효과적이다)<br>
                    <br>
                    <strong>영양소</strong>
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
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">단호박 고등어조림</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">닭살 부추죽 </a>
        </li>
    </ul>

    <div class="row" style="height:10px;"></div><!-- 공백  -->

    <div class="row">

        <section class="main__sect care hd__inner1100">
            
            

        </section>
    </div>

    <!--  블로그 형태 본문  -->
    <div class="row g-5">
        <div class="col-md-8">
            <article class="blog-post">
                <h3 class="main__h3 hPara fadeInUp">
                <a href="#">
                    <strong>식단 구성 </strong>
                </a>
	            </h3>
	            <p class="main__desc hPara fadeInUp">고등어 2마리, 단호박 1/2통, 양파 1/2개, 홍고추 1개, 청양고추 1개, 대파 1/2대, 청주 2큰술 <br>양념장(된장 5큰술, 간장 2큰술, 다시마국물 1컵, 물엿 2큰술, 마늘(다진 것)2큰술, 생강(다진 것) 1작은술, 고춧가루 1큰술)</p>
	                
            </article>

			<hr/>         

            <article class="blog-post">
               <h3 class="main__h3 hPara fadeInUp">
                <a href="#">
                    <strong>식단 소개 </strong>
                </a>
            </h3>
            <p class="main__desc hPara fadeInUp">1. 고등어는 손질 후 5cm 간격으로 어슷하게 토막 낸다.<br> 2. 단호박 1/2통은 반으로 가른 뒤 1cm 두께로 모양을 살려 슬라이스 한다.<br> 3. 양파는 사방 3cm 크기로 썰고, 청.홍고추, 청양고추, 대파는 어슷 썬다.<br> 4. 분량의 양념재료를 섞어 양념장을 만든다. <br>5. 냄비에 올리브유를 약간 두르고 슬라이스 한 단호박을 깐 뒤 그 위에 어슷 썬 고등어를 올린다.<br> 6. 양념장과 청주를 위에 부어 20분간 뚜껑을 덮어 조린 뒤 양파를 넣고 양념을 고등어 위에 끼얹어가며 약불에서 졸이다가 홍고추, 청양고추, 대파를 얹어 잠시 조린 뒤 불을 끈다.</p>
  </article>

            <nav class="blog-pagination" aria-label="Pagination">
                <a class="btn btn-outline-primary" href="#"> 이전 식단 </a>
                <a class="btn btn-outline-secondary disabled" href="#" tabindex="-1" aria-disabled="true"> 다음 식단 </a>
            </nav>

        </div>
        
		<!--  본문 사이드 바  -->
        <div class="col-md-4">
            <div class="position-sticky" style="top: 2rem;">
                <div class="p-4 mb-3 bg-light rounded">
                    <h4 class="fst-bold">단호박 고등어조림</h4>
                
                	<img src="./lib/images/rda_lowpressure01_01.png" class="img-fluid" alt="단호박 고등어조림">
                </div>

            </div>
        </div> <!--  본문 사이드 바  -->
    </div> <!--  블로그 형태 본문  -->
</main>


<script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.js"></script>

<jsp:include page="./footer.jsp"></jsp:include>
