$(document).ready(function(){
    // comment post btn 클릭 내용이 없을 시
    $('#commentForm').submit(function(){
        if($('#commentContent').val() == ''){
            alert('댓글 내용을 입력하세요.');
            $('#commentContent').focus();
            return false;
        }
    })

    /*
    // like 클릭 with ajax
    function likeBtnClick(){
        // 회원이 아닐 시 로그인 하라는 알림 띄우기

        // ajax로 전달
        $ajax({
            url: "jsp",
            type: "POST",
            cache: false,
            dataType: "json",

        });
    };
    */
})