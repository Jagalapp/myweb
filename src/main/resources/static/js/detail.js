$(document).ready(function(){
    // comment post btn 클릭 내용이 없을 시
    $('#commentForm').submit(function(){
        if($('#commentContent').val() == ''){
            alert('댓글 내용을 입력하세요.');
            $('#commentContent').focus();
            return false;
        }
    })
    
    // 댓글 작성 로그인 필요 클릭 시
    $('#needLoginCommentBox').click(function(){
		var goLoginPage = confirm('로그인 하시겠습니까?');
		if(goLoginPage){
			location.href='/user/login';
		}
	})
    
})

 // like 버튼 클릭
function likeBtnClick(id){
    $.ajax({
		url:"/board/addLike",
		type:"POST",
		data:{	"id":id},
		success: function(data){
        	if(data.addLikeResult >= 1){
				$('#likeText').text("좋아요:"+data.likeNumber);
				$('#likeBtn').hide();
				$('#liked').show();
			}else{
				alert('예상치 못한 에러가 발생했습니다.');
			}
        },
        error: function(error){
            alert('error : ' + error);
        }
	})
};