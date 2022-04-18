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
    $('#needLoginBox').click(function(){
		var goLoginPage = confirm('로그인 하시겠습니까?');
		if(goLoginPage){
			location.href='/user/login';
		}
	})
    
})

 // like 버튼 클릭
function likeBtnClick(id){
	var listId = id;
	alert(listId);
    /*$.ajax({
		url:"/board/addLike",
		type:"post",
		data:{
			
		}
	})*/
};