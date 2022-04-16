<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<main>
		<c:choose>
		<c:when test="${empty user }">
	    <!-- reg form -->
	    <section class="cotainer-lg mx-2 my-5">
	        <div class="row justify-content-center">
	            <form action="/user/reg" method="post" class="col-md-6" id="regForm">
	                <h3 class="text-muted fw-bold text-center">회원가입</h3>
	                <div class="form-group">
	                    <label for="regName">NAME</label>
	                    <input type="text" class="form-control" placeholder="NAME" id="regName" name="regName">
	                </div>
	                <div class="form-group">
	                    <label for="regId">ID</label>
	                    <input type="text" class="form-control" placeholder="ID" id="regId" name="regId">
	                    <input type="button" class="btn btn-secondary btn-sm" id="idCheckBtn" value="ID CHECK" onclick="idCheck">
	                    <div class="text-success" id="idCheckedText">checked!</div>
	                </div>
	                <div class="form-group">
	                    <label for="regPassword">PASSWORD</label>
	                    <input type="password" class="form-control" placeholder="PASSWORD" id="regPassword" name="regPassword">
	                </div>
	                <div class="form-group">
	                    <label for="regPasswordCheck">PASSWORD CHECK</label>
	                    <input type="password" class="form-control" placeholder="PASSWORD CHECK" id="regPasswordCheck" name="regPasswordCheck">
	                </div>
	                <div class="form-group">
	                    <label for="regEmail">EMAIL</label>
	                    <input type="text" class="form-control" placeholder="EMAIL" id="regEmail" name="regEmail">
	                </div>
	                <div class="form-group" id="genderFormGroup">
	                    <label class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="regGender" value="regMale">
	                        <span class="form-check-label"> Male </span>
	                    </label>
	                    <label class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="regGender" value="regMale">
	                        <span class="form-check-label"> Female</span>
	                    </label>
	                </div>
	                <div class="form-groun justify-content-center d-flex" id="regFormSubmitBtn">
	                    <input type="submit" class="btn btn-primary" value="회원가입" id="regSubmitBtn">
	                </div>
	            </form>
	        </div>
	    </section>
	
	    <!-- go to login -->
	    <a href="login.jsp"><div class="text-center">가입된 계정이 있나요?(click)</div></a>
	    </c:when>
	    <c:otherwise>
	    	<h4 class="text-center fw-bold my-5">회원가입을 위해서 로그아웃을 해주세요.</h4>
	    </c:otherwise>
	    </c:choose>
    </main>