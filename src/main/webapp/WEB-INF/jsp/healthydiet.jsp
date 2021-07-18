<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="./header.jsp" ></jsp:include>

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

    
<jsp:include page="./navi.jsp" ></jsp:include>


<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">현대인 필수 건강 식단</h1>
        <p class="lead text-muted">조경석 박사가 추천하는 건강식단</p>
        <p>
          <a href="#" class="btn btn-primary my-2">당을 낮추는 저당식단</a>
          <a href="#" class="btn btn-secondary my-2">고지혈에 좋은 저지방 식단</a>
          <a href="#" class="btn btn-secondary my-2">혈압을 낮추는 차분해 식단</a>
        </p>
      </div>
    </div>
  </section>

  
<div class="row" style="height:50px;"></div><!-- 공백  -->
	  
	  <div class="row"> <!--  앨범 형태 추천 식단 -->
	  
	  <section class="main__sect care hd__inner1100">
                    <p class="main__desc hPara fadeInUp">조경석 박사가 추천하는 건강식단 </p>
                    <h3 class="main__h3 hPara fadeInUp">
                            <strong>당을 낮추는 건강식단 </strong>
                    </h3>
                    
		        </section>
	  
	    <div class="album py-5 bg-light">
			    <div class="container">
			
			      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			        <div class="col">
			          <div class="card shadow-sm">
						<img src="./lib/images/lowsugar01.jpg" width="100%" height="225" onclick="javascript:location.href='./HealthyDietDetail'"/>
			            <div class="card-body">
			              <p class="card-text">차조밥,조개국,불고기,시금치나물,배추김치</p>
			              <div class="d-flex justify-content-between align-items-center">
			                <div class="btn-group">
			                  <button type="button" class="btn btn-sm btn-outline-secondary">당을 낮추는 저당식단 </button>
			                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="javascript:location.href='./HealthyDietDetail'">자세히 보기</button>
			                </div>
			                <small class="text-muted">9 mins</small>
			              </div>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
									<img src="./lib/images/lowsugar02.jpg" width="100%" height="225" onclick="javascript:location.href='./HealthyDietDetail'"/>
			
			            <div class="card-body">
			            <p class="card-text">보리밥,김치찌개,잡채,김구이,오이생채,깍두기</p>
			              <div class="d-flex justify-content-between align-items-center">
			                <div class="btn-group">
			                   <button type="button" class="btn btn-sm btn-outline-secondary">당을 낮추는 저당식단 </button>
			                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="javascript:location.href='./HealthyDietDetail'">자세히 보기</button>
			                </div>
			                <small class="text-muted">9 mins</small>
			              </div>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
			<img src="./lib/images/lowfat01.jpg" width="100%" height="225" onclick="javascript:location.href='./HealthyDietDetail'"/>
			            <div class="card-body">
			              <p class="card-text">현미밥,냉이된장국,임연수구이,두부조림,마늘쫑무침,배추김치</p>
			              <div class="d-flex justify-content-between align-items-center">
			                <div class="btn-group">
			                   <button type="button" class="btn btn-sm btn-outline-secondary">고지혈에 좋은 저지방 식단 </button>
			                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="javascript:location.href='./HealthyDietDetail'">자세히 보기</button>
			                </div>
			                <small class="text-muted">9 mins</small>
			              </div>
			            </div>
			          </div>
			        </div>
			
			        <div class="col">
			          <div class="card shadow-sm">
									<img src="./lib/images/lowfat02.jpg" width="100%" height="225" onclick="javascript:location.href='./HealthyDietDetail'"/>
			
			            <div class="card-body">
			              <p class="card-text">	수수밥,근대국,삼치간장조림,취나물볶음,총각김치</p>
			              <div class="d-flex justify-content-between align-items-center">
			                <div class="btn-group">
			                   <button type="button" class="btn btn-sm btn-outline-secondary">고지혈에 좋은 저지방 식단 </button>
			                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="javascript:location.href='./HealthyDietDetail'">자세히 보기</button>
			                </div>
			                <small class="text-muted">9 mins</small>
			              </div>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
									<img src="./lib/images/lowsugar01.jpg" width="100%" height="225"/>
			
			            <div class="card-body">
			              <p class="card-text">차조밥,콩나물국,달걀채소말이,마늘쫑건새우볶음,감자조림,배추김치</p>
			              <div class="d-flex justify-content-between align-items-center">
			                <div class="btn-group">
			                   <button type="button" class="btn btn-sm btn-outline-secondary">혈압을 낮추는 차분해 식단 </button>
			                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="javascript:location.href='./HealthyDietDetail'">자세히 보기</button>
			                </div>
			                <small class="text-muted">9 mins</small>
			              </div>
			            </div>
			          </div>
			        </div>
			        <div class="col">
			          <div class="card shadow-sm">
									<img src="./lib/images/lowsugar02.jpg" width="100%" height="225" onclick="javascript:location.href='./HealthyDietDetail'"/>
			
			            <div class="card-body">
			              <p class="card-text">김치볶음밥,무국,고추멸치볶음,감자샐러드,나박김치</p>
			              <div class="d-flex justify-content-between align-items-center">
			                <div class="btn-group">
			                   <button type="button" class="btn btn-sm btn-outline-secondary">혈압을 낮추는 차분해 식단 </button>
			                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="javascript:location.href='./HealthyDietDetail'">자세히 보기</button>
			                </div>
			                <small class="text-muted">9 mins</small>
			              </div>
			            </div>
			          </div>
			        </div>
			
			      </div>
			    </div>
			  </div>
	  </div> <!-- 앨범 형태 추천  식단	   -->
</main>


<script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.js"></script>

<jsp:include page="./footer.jsp" ></jsp:include>

