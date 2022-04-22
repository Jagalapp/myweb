<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<main>
		<!-- login form -->
		<c:choose>
		<c:when test="${empty user }">
	    <section class="container-lg my-5">
	        <div class="row justify-content-center">
	            <form action="/user/login" method="post" class="col-md-6" id="loginForm">
	                <h3 class="text-center fw-bold text-muted mb-5">로그인</h3>
	                <div class="form-grounp my-2">
	                    <input type="text" class="form-control" placeholder="ID" name="userId" id="loginId" maxlength="20">
	                </div>
	                <div class="form-groupd my-2">
	                    <input type="password" class="form-control" placeholder="PASSWORD" name="userPassword"  id="loginPassword" maxlength="20">
	                </div>
	                <input type="hidden" name="gTD" value="${gTD }"> 
	                <input type="submit" class="btn btn-secondary form-control"  id="loginSubmitBtn" value="로그인">
	            </form>
	        </div>
	    </section>
	
	    <!-- go to reg -->
	    <a href="reg.jsp"><div class="text-center">가입된 계정이 없나요?(click)</div></a>
	    </c:when>
	    
	    <c:otherwise>
	    	<h4 class="text-center fw-bold  my-5">이미 로그인 상태입니다.</h4>
	    </c:otherwise>
	    </c:choose>
    </main>