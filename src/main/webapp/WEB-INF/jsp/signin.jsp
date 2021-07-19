<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="./header.jsp"></jsp:include>


<script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.js"></script>

 <script >
  // form summit(modal);		
var form_name = "#signin_form";
var form_target = "./SignIn";

	
$(document).ready(function() {
	


		$("#signin-submit").click(function(){
    	 
	      $.ajax({
	          type: "POST",
	          dataType: "text",
	          //async: false,
	          url: form_target,
	          data: $(form_name).serialize(),
	          
	          // 전송 전 작업
	          beforeSend : function () {},
	          
	          // 요청에 성공하면 함수 실행 data는 응답 데이터가 들어간다
	          success: function(data, textStatus){     
			      alert(textStatus);
	        	  if( data == 'success') {
		        	alert("로그인에 성공했습니다. ")
	        	  } else {
			        alert("로그인에 실패했습니다. ")

	        	  };
	          },
	          
	          // 응답이 종료되면 실행, 성공여부와 상관없이 ajax 완료후 작업 
	          complete : function(data) {
	          },
	          
	          // 에러가 났을 경우의 작업
			  error: function(response, textStatus){
				   
				  alert("오류가 발생했습니다. ")
        		  
	          }
	     });
	     
	     return false; // 페이지 리로딩을 막는다. 
  
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

<main class="form-signin">

<div class="empty-50"></div>
    <div class="row justify-content-center">

        <div class="col-md-4">


            <form name="signin_form" id="signin_form" >
                <h1 class="h3 mb-3 fw-normal">로그인</h1>

                <div class="form-floating">
                    <input type="text" name="id" class="form-control" id="floatingInput" placeholder="id">
                    <label for="floatingInput">아이디</label>
                </div>
                <div class="empty-10"></div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">비밀번호</label>
                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit" id="signin-submit">로그인</button>
                <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
            </form>


        </div>
    </div>

</main>


<jsp:include page="./footer.jsp"></jsp:include>
