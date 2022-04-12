<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <main>
		<section class="container-md my-5" id="detailSection">
	        <div class="row m-auto">
	            <div class="col-8">
	                <div class="fw-bold fs-4 mb-3">${n.listTitle }</div>
	            </div>
	            <div class="col-4">
	                <div class="fs-5 text-muted text-end"><fmt:formatDate value="${n.listDate }" pattern="yyyy-mm-dd"/></div>
	            </div>
	            <div class="col-3" id="detailUserName">
	                <div class="userNameText">${n.userId }</div>
	            </div>
	            <div class="col-3" id="detailHits">
	                <div class="hitsLikeCommentText">${n.listHit }</div>
	            </div>
	            <div class="col-3" id="detailLike">
	                <div class="hitsLikeCommentText">${n.listLlike }</div>
	            </div>
	            <div class="col-3 mb-4" id="detailComment">
	                <div class="hitsLikeCommentText">댓글 수:6</div>
	            </div>
	            <div class="col-12 border-top pt-4" id="detailContent">
	                <div>${n.listContent }</div>
	            </div>
	        </div>
	        <!-- like -->
	        <button class="btn my-5" id="likeBtn" onclick="likeBtnClick">like</button>
	        <!-- list, update, delete -->
	        <div class="justify-content-end d-flex gap-2 my-5 lUDBtn">
	            <a href="/list.jsp"><button class="btn btn-secondary lUDBtn">목록</button></a>
	            <a href="/update.jsp"><button class="btn btn-secondary lUDBtn">수정</button></a>
	            <a href="/delete.jsp"><button class="btn btn-secondary lUDBtn">삭제</button></a>
	        </div>
	    </section>
	
	    <!-- regComment -->
	    <div class="container">
	        <div class="border-top border-bottom p-3 mt-4">
	            <form action="postComment.jsp" id="commentForm">
	                <div class="form-floating form-group">
	                    <input type="textarea" class="form-control" id="commentContent">
	                    <label for="commentContent">Comments</label>
	                </div>
	                <div class="justify-content-end d-flex form-group">
	                    <input type="submit" class="btn btn-secondary mt-2" value="post" id="commentSubmitBtn">
	                </div>
	            </form>
	        </div>
	    </div>
	
	    <!-- comments -->
	    <div class="container my-3">
	        <div class="row">
	            <div class="col-6 userNameText">
	                <div>userName</div>
	            </div>
	            <div class="col-6 text-muted">
	                <div>1999-01-01</div>
	            </div>
	            <div class="col-12 mt-2 mb-4 pb-3 border-bottom">
	                <div>분류: 동음이의어 문서</div>
	            </div>
	            <div class="col-6 userNameText">
	                <div>userName</div>
	            </div>
	            <div class="col-6 text-muted">
	                <div>1999-01-01</div>
	            </div>
	            <div class="col-12 mt-2 mb-4 pb-3 border-bottom">
	                <div>분류: 동음이의어 문서</div>
	            </div>
	            <div class="col-6 userNameText">
	                <div>userName</div>
	            </div>
	            <div class="col-6 text-muted">
	                <div>1999-01-01</div>
	            </div>
	            <div class="col-12 mt-2 mb-4 pb-3 border-bottom">
	                <div>분류: 동음이의어 창간한 순 문예지이다.
	                    Disambiguation icon	이 문서는 명칭은 같지만 대상이 다를 때에 쓰이는 동음이의어 문서입니다.
	                    어떤 링크가 이 문서를 가리키고 있다면, 그 링크를</div>
	            </div>
	        </div>
	    </div>
	</main>