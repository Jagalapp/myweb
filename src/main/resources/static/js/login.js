$(document).ready(function(){
	
	//로그인 폼 입력시
	$('#loginForm').submit(function(){
		
		// 아이디 입력 안했을 시
		if($('#loginId').val() == ""){
			alert('아이디를 입력하세요.');
            $('#loginId').focus();
            return false;
		}
		//비밀번호 입력 안했을 시
		if($('#loginPassword').val() == ""){
			alert('비밀번호를 입력하세요.');
			$('#loginPassword').focus();
			return false
		}
	})
})