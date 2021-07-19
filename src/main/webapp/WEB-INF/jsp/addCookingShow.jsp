<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="./header.jsp"></jsp:include>


<script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.js"></script>

<script >

$(document).ready(function() {
	
 		$("#CookingShow-submit").click(function(){
			
			//alert("와따");
			
			$("form").submit();
			
			//alert("됐다");
	      
  
      });  //end of btn-submit 
      
  }); 

 </script> 

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

<main class="form-cookingshow-add-article">

<div class="empty-50"></div>
    <div class="row justify-content-center">

        <div class="col-md-4">


            <form name="cookingshow_form" id="cookingshow_form" action="./addCookingShow" method="post" >
                <h1 class="h3 mb-3 fw-normal">게시글 등록</h1>

                <div class="form-floating">
                    <input type="text" name="id" value="${id}" class="form-control" id="floatingInput" placeholder="id" readonly>
                    <label for="floatingInput">아이디</label>
                </div>
                
                <div class="empty-10"></div>
                <div class="form-floating">
                    <input type="text" name="name" value="${name}" class="form-control" id="floatingName" placeholder="이름" readonly>
                    <label for="floatingName">이름 </label>
                </div>
                
                <div class="empty-10"></div>
                <div class="form-floating">
                    <input type="text" name="title" class="form-control" id="floatingTitle" placeholder="제목을 입력하세요">
                    <label for="floatingTitle">제목 </label>
                </div>
                
                <div class="empty-10"></div>
                <div class="form-floating">
                	<select name="category" class="form-control" id="floatingCategory">
                		<option value="a">당을 낮추는 식단</option>
                		<option value="b">저지방 식단</option>
                		<option value="c">기분이 좋아지는 식단</option>
                	
                	</select>
                    <label for="floatingCategory">카테고리 </label>
                </div>
                
                <div class="empty-10"></div>
                <div class="form-floating">
                	<textarea name="contents" class="form-control" id="floatingContents" style="height: 100px"></textarea>
                    <label for="floatingContents">본문 </label>
                </div>
                
                <div class="empty-10"></div>
           
                
                <div class="mb-3">
				  <label for="formFileMultiple" class="form-label">이미지 첨부</label>
				  <input class="form-control" name="imageurl" type="file" id="formFileMultiple" multiple>
				</div>

               
                <button class="w-100 btn btn-lg btn-primary" type="submit" id="CookingShow-submit">등록하기</button>
                <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
            </form>


        </div>
    </div>

</main>


<jsp:include page="./footer.jsp"></jsp:include>
