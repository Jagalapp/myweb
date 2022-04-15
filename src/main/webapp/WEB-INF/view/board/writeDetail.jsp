<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<main>
	    <!-- write content -->
	    <div class="container-sm my-5">
	        <form action="/board/writeDetail" method="post" id="writeForm">
	            <h3 class="text-muted fw-bold text-center mb-5">글 작성</h3>
	            <div class="form-group">
	                <input type="text" class="form-control" placeholder="제목" maxlength="50" id="writeTitle", name="writeTitle">
	            </div>
	            <div class="form-group">
	                <textarea type="text" class="form-control my-3" placeholder="내용" maxlength="2048" style="height:350px" id="writeContent" name="writeContent"></textarea>
	            </div>
	            <div class="form-groun justify-content-end d-flex">
	                <input type="submit" class="btn btn-primary btn-lg" value="Post">
	            </div>
	        </form>
	    </div>
    </main>