$(document).ready(function(){
    detailTitle = $('#detailTitle');
    detailContent = $('#detailContent');

    $('#updateDetailForm').submit(function(){
        if(detailTitle.val() == ''){
            alert('제목을 작성하세요.');
            detailTitle.focus();
            return false;
        }
        if(detailContent.val() == ''){
            alert('내용을 작성하세요.');
            detailContent.focus();
            return false; 
        }
    })

})