<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <main>
		<section class="container-md my-5" id="detailSection">
	        <div class="row m-auto">
	            <div class="col-8">
	                <div class="fw-bold fs-4 mb-3">${n.listTitle }</div>
	            </div>
	            <div class="col-4">
	                <div class="fs-5 text-muted text-end"><fmt:formatDate value="${n.listDate }" pattern="yyyy-MM-dd"/></div>
	            </div>
	            <div class="col-3" id="detailUserName">
	                <div class="userNameText">${n.userId }</div>
	            </div>
	            <div class="col-3" id="detailHits">
	                <div class="hitsLikeCommentText">조회수:${n.listHit }</div>
	            </div>
	            <div class="col-3" id="detailLike">
	                <div class="hitsLikeCommentText" id="likeText">좋아요:${listLike }</div>
	            </div>
	            <div class="col-3 mb-4" id="detailComment">
	                <div class="hitsLikeCommentText">댓글 수:${commentCount }</div>
	            </div>
	            <div class="col-12 border-top pt-4" id="detailContent">
	                <div>${n.listContent }</div>
	            </div>
	        </div>
	        <!-- like -->
	        <c:choose>
	        <c:when test="${empty user }">
	        	<div id="needLoginLikeBox">like</div>
	        </c:when>
	        <%-- <c:when test="${user.userId == n.listId }">
	        	<div class="my-5"></div>
	        </c:when>
	        <c:when test="${usersLike >= 1 }">
	        	<div class="fw-bold text-primary text-center h4 my-5">liked</div>
	        </c:when> --%>
	        <c:otherwise>
		        <div class="fw-bold text-primary text-center h4 my-5" id="liked">liked</div>
		        <button class="btn my-5" id="likeBtn" onclick="likeBtnClick(${n.listId})">like</button>
	        </c:otherwise>
	        </c:choose>
	        <!-- list, update, delete -->
	        <c:if test="${n.userId == user.userId }">
	        <div class="justify-content-end d-flex gap-2 my-5 lUDBtn">
	            <a href="/board/list"><button class="btn btn-secondary lUDBtn">목록</button></a>
	            <a href="/board/updateDetail?id=${n.listId }"><button class="btn btn-secondary lUDBtn">수정</button></a>
	            <a href="/board/deleteDetail?id=${n.listId }"><button class="btn btn-secondary lUDBtn">삭제</button></a>
	        </div>
	        </c:if>
	    </section>
	
	    <!-- regComment -->
	    <div class="container">
	        <div class="border-top border-bottom p-3 mt-4">
	            <form action="detailPostComment" id="commentForm" method="post">
	            	<c:choose>
	            	<c:when test="${empty user }">
	            	<div id="needLoginCommentBox">댓글 작성을 위해선 로그인이 필요합니다.</div>
	            	</c:when>
	                <c:otherwise>
	                <div class="form-floating form-group">
	                    <input type="textarea" class="form-control" id="commentContent" name="commentContent">
	                    <label for="commentContent">Comments</label>
	                </div>
	                <input type="hidden" name="userId" value="${user.userId }">
	                <input type="hidden" name="id" value="${n.listId }">
	                <div class="justify-content-end d-flex form-group">
	                    <input type="submit" class="btn btn-secondary mt-2" value="post" id="commentSubmitBtn">
	                </div>
	                </c:otherwise>
	                </c:choose>
	            </form>
	        </div>
	    </div>
	
	    <!-- comments -->
	    <div class="container my-3">
	        <div class="row">
	        	<c:forEach var="c" items="${comment }">
	            <div class="col-6 userNameText">
	                <div>${c.userId }</div>
	            </div>
	            <div class="col-5 text-muted">
	                <div><fmt:formatDate value="${c.commentDate }" pattern="yyyy-MM-dd"/></div>
	            </div>
	            <c:if test="${c.userId == user.userId }">
	            <div class="col-1 text-decoration-none text-muted"><a href="/board/deleteComment?cId=${c.commentId }&id=${n.listId}">삭제</a></div>
	            </c:if>
	            <div class="col-12 mt-2 mb-4 pb-3 border-bottom">
	                <div>${c.commentContent }</div>
	            </div>
	            </c:forEach>
	        </div>
	    </div>
	</main>