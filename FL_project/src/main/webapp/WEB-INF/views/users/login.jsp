<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <section class="vh-100 gradient-custom">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>



		const login_check=function(){
			if(!login_form.email.value){
				alert('아이디를 입력하세요');
				login_form.email.focus();
				return false;
			}
			if(!login_form.password.value){
				alert('비밀번호를 입력하세요');
				login_form.password.focus();
				return false;
			}
			return true;
		}
	</script>

<style>
/* 로그인 실패시 경고글 */
.login_warn{
    margin-top: 30px;
    text-align: center;
    color : red;
}
</style>






        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">


                      <form name="login_form"  action="/users/login" method="post" onsubmit="return login_check()">
                      <!--  onsubmit이벤트 핸들러는 form이 전송될때 실행된다. onsubmit에서 호출하는 함수의 반환값에 따라 전송 여부를 결정한다.
                      				true를 반환하면 전송하고, false를 반환하면 전송하지 않는다.
                      			 -->

                            <div class="mb-md-5 mt-md-4 pb-1">

                                <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                <p class="text-white-50 mb-5">이메일과 비밀번호를 입력하여 로그인하세요</p>

                                <div class="form-outline form-white mb-4">
                                    <input type="email" id="email" name="email"  class="form-control form-control-lg"/>
                                    <label class="form-label" for="typeEmailX">Email</label>
                                </div>

                                <div class="form-outline form-white mb-4">
                                    <input type="password" id="password" name="password" class="form-control form-control-lg" />
                                    <label class="form-label" for="typePasswordX">Password</label>
                                </div>
                                    	<tr>

                                    <c:if test = "${result == 0 }">
                                                    <div class = "login_warn"> Email 또는 비밀번호를 잘못 입력하셨습니다.</div>
                                                </c:if>


                                <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="/users/password">비밀번호를 잊으셨나요?</a>
                                </p>



                                <button class="btn btn-outline-light btn-lg btn-block" style="margin-bottom: 0px;">Login</button><br>
                                <button class="btn btn-lg btn-block btn-success" style="margin-bottom: 0px;" type="button" onclick="location.href='/users/naver';"
                                ><svg
                                width="15"
                                height="30"
                                viewBox="0 0 15 30"
                                fill="none"
                                xmlns="http://www.w3.org/2000/svg"
                                class="w-[15px] h-[30px] relative"
                                preserveAspectRatio="none"
                              >
                              </form>


                                <path
                                  d="M12.5124 9.05023C12.7836 9.05696 13 9.27877 13 9.55007V18.4874C13 18.7684 12.7685 18.9942 12.4875 18.9872L10.7375 18.9436C10.5872 18.9398 10.4471 18.8696 10.3556 18.7503C8.40093 16.2023 5.5 11.9934 5.5 12.4782C5.5 12.9438 5.49495 15.9932 5.49127 18.4508C5.49087 18.7217 5.27468 18.9431 5.00378 18.9498L3.51251 18.9872C3.23156 18.9942 3 18.7684 3 18.4873V9.54998C3 9.27871 3.21631 9.05692 3.48749 9.05014L5.2266 9.00661C5.39176 9.00247 5.54576 9.07665 5.64284 9.21034C6.48156 10.3653 10.5 15.8527 10.5 14.9626C10.5 14.0413 10.4951 11.7046 10.4914 9.51328C10.4909 9.23197 10.7226 9.00576 11.0038 9.01275L12.5124 9.05023Z"
                                  fill="white"
                                ></path>
                              </svg> 네이버로 로그인하기</button>
                            </div>

                            <div>
                                <p class="mb-0">계정이 없으신가요? <a href="/users/signup" class="text-white-50 fw-bold">회원가입
                                        </a>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>