<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<main>
		<!-- login form -->
	    <section class="container-lg my-5">
	        <div class="row justify-content-center">
	            <form action="loginAction" method="post" class="col-md-6">
	                <h3 class="text-center fw-bold text-muted mb-5">로그인</h3>
	                <div class="form-grounp my-2">
	                    <input type="text" class="form-control" placeholder="ID" name="userId" maxlength="20">
	                </div>
	                <div class="form-groupd my-2">
	                    <input type="password" class="form-control" placeholder="PASSWORD" name="userPassword" maxlength="20">
	                </div>
	                <input type="submit" class="btn btn-secondary form-control" value="로그인">
	            </form>
	        </div>
	    </section>
	
	    <!-- go to reg -->
	    <a href="reg.jsp"><div class="text-center">가입된 계정이 없나요?(click)</div></a>
    </main>