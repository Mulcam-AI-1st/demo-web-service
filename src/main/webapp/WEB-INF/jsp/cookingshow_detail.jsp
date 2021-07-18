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
                <h1 class="fw-light">조경석 님 "저지방 식단"</h1>
                <H2> <a href="#">연관 식단 : #피로를 완화시켜 주는 음식</a> </H2>

            </div>
        </div>
    </section>


    <!--  블로그 형태 본문  -->
    <div class="row g-5">
        <div class="col-md-12">
            <article class="blog-post">

                <h3 class="main__h3 hPara fadeInUp">
                    <a href="#">
                        <strong>식단 소개 </strong>
                    </a>

                </h3>
                <p class="main__desc hPara fadeInUp">저를 몸짱으로 만들어준 식단을 소개 합니다. </p>
                <div style="text-align:center">
                    <img src="./lib/images/lowfat03.jpg" class="img-fluid">
                </div>
            </article>

            <hr />

            <article class="blog-post">
                <h3 class="main__h3 hPara fadeInUp">
                    <a href="#">
                        <strong>추천 이유 </strong>
                    </a>

                </h3>
                <p class="main__desc hPara fadeInUp">1. 질리지 않고 맛있어요.<br> 2. 닭가슴살이라 살이 찌지 않아요 .<br> 3. 야채와 함께 먹을 수 있어요.<br> 4.지방이 적어요. </p>
            </article>

            <article class="blog-post" style="text-align:center">
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
                            <path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z"></path>
                        </svg>
                        좋아요
                    </button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">100</button>
                </div>

            </article>
            <br>
            <!--  댓글  -->
            <div class="card">
                <div class="card-header">
                    김지영 님
                </div>
                <div class="card-body">
                    <blockquote class="blockquote mb-0">
                        <p> 어머 정말 맛있어요 보여요 .</p>
                        <footer class="blockquote-footer">2021. 7. 18 <cite title="Source Title">좋아요 추천을 누르셨습니다. </cite></footer>
                    </blockquote>
                </div>
            </div> <!--  댓글  -->
            <br>
            <!--  댓글  -->
            <div class="card">
                <div class="card-header">
                    조경석 님
                </div>
                <div class="card-body">
                    <blockquote class="blockquote mb-0">
                        <p>매일 먹습니다.</p>
                        <footer class="blockquote-footer">2021. 7. 18 <cite title="Source Title">좋아요 추천을 누르셨습니다. </cite></footer>
                    </blockquote>
                </div>
            </div> <!--  댓글  -->
            <br>
            <!--  댓글  -->
            <div class="card">
                <div class="card-header">
                    조현영 님
                </div>
                <div class="card-body">
                    <blockquote class="blockquote mb-0">
                        <p>저도 해먹고 싶네요 .</p>
                        <footer class="blockquote-footer">2021. 7. 18 <cite title="Source Title">좋아요 추천을 누르셨습니다. </cite></footer>
                    </blockquote>
                </div>
            </div> <!--  댓글  -->
            <br>
            <!--  댓글  -->
            <div class="card">
                <div class="card-header">
                    황명환 님
                </div>
                <div class="card-body">
                    <blockquote class="blockquote mb-0">
                        <p>저는 정기배달 고고 합니다.</p>
                        <footer class="blockquote-footer">2021. 7. 18 <cite title="Source Title">Source Title</cite></footer>
                    </blockquote>
                </div>
            </div> <!--  댓글  -->

            <br>


            <nav class="blog-pagination" aria-label="Pagination">
                <a class="btn btn-outline-primary" href="#"> 이전 식단 </a>
                <a class="btn btn-outline-secondary disabled" href="#" tabindex="-1" aria-disabled="true"> 다음 식단 </a>
            </nav>

        </div>


    </div> <!--  블로그 형태 본문  -->


</main>


<script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.js"></script>

<jsp:include page="./footer.jsp"></jsp:include>