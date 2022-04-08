<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<main>
	    <!-- update content -->
	    <div class="container-sm my-5">
	        <form action="write.jsp" method="post" id="updateDetailForm">
	            <h3 class="text-muted fw-bold text-center mb-5">글 수정</h3>
	            <div class="form-group">
	                <input type="text" class="form-control" name="detailTitle" maxlength="50" value="detail title" id="detailTitle">
	            </div>
	            <div class="form-group">
	                <textarea type="text" class="form-control my-3" name="detailContent" maxlength="2048" style="height:350px" id="detailContent">detail content</textarea>
	            </div>
	            <div class="form-groun justify-content-end d-flex">
	                <input type="submit" class="btn btn-primary btn-lg" value="수정">
	            </div>
	        </form>
	    </div>
    </main>