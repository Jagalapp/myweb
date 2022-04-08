<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <main>
		<section class="container-md my-5" id="detailSection">
	        <div class="row m-auto">
	            <div class="col-8">
	                <div class="fw-bold fs-4 mb-3">listTitle</div>
	            </div>
	            <div class="col-4">
	                <div class="fs-5 text-muted text-end">1999-12-01</div>
	            </div>
	            <div class="col-3" id="detailUserName">
	                <div class="userNameText">userName</div>
	            </div>
	            <div class="col-3" id="detailHits">
	                <div class="hitsLikeCommentText">조회수:180</div>
	            </div>
	            <div class="col-3" id="detailLike">
	                <div class="hitsLikeCommentText">좋아요:32</div>
	            </div>
	            <div class="col-3 mb-4" id="detailComment">
	                <div class="hitsLikeCommentText">댓글 수:6</div>
	            </div>
	            <div class="col-12 border-top pt-4" id="detailContent">
	                <div>
	                    listContent위키백과, 우리 모두의 백과사전.
	                    문장의 다른 뜻은 다음과 같다.
	                    문장(文章)은 생각이나 감정을 말로 표현할 때 완결된 내용을 나타내는 최소의 단위이다.
	                    문장(文章)은 논리학에서 자유 변수를 갖지 않는 정식을 의미한다.
	                    문장(文章)은 불교에서 심불상응행법 가운데 하나인 구신(句身)을 말한다.
	                    문장(紋章)은 국가나 단체 또는 집안 따위를 나타내기 위하여 사용하는 상징적인 표지이다.
	                    문장》(文章)은 1939년 2월에 창간한 순 문예지이다.
	                    Disambiguation icon	이 문서는 명칭은 같지만 대상이 다를 때에 쓰이는 동음이의어 문서입니다.
	                    어떤 링크가 이 문서를 가리키고 있다면, 그 링크를 알맞게 고쳐 주세요.
	                    분류: 동음이의어 문서
	                    이 문서는 2018년 5월 29일 (화) 13:17에 마지막으로 편집되었습니다.
	                    모든 문서는 크리에이티브 커먼즈 저작자표시-동일조건변경허락 3.0에 따라 사용할 수 있으며, 추가적인 조건이 적용될 수 있습니다. 자세한 내용은 이용 약관을 참고하십시오.
	                    Wikipedia®는 미국 및 다른 국가에 등록되어 있는 Wikimedia Foundation, Inc. 소유의 등록 상표입니다.
	                </div>
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