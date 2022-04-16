$(document).ready(function(){
    idCheckBtn = $('#idCheckBtn');
    idCheckedText = $('#idCheckedText');
    idCheckResult = 0;
    regName = $('#regName');
    regId = $('#regId');
    regPassword = $('#regPassword');
    regPasswordCheck = $('#regPasswordCheck');
    regEmail = $('#regEmail');
    regGender = $('input[name="regGender"]');

    // 회원가입 정규표현식
    idRegExp = /^[A-Za-z]{1}[A-Za-z0-9]{3,19}$/;
    passwordRegExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#>&])[A-Za-z\d$@$!%*#>&]{8,}$/;
    emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
    nameRegExp = /^[가-힣]{2,4}$/;

    // 아이디가 변경 되었을 시
    $('#idCheckBtn').change(function(){
        idCheckBtn.show();
        idCheckedText.hide();
    });

    //회원가입 버튼 클릭
    $('#regForm').submit(function(){
        // 정규 표현식 검사
        if(!nameRegExp.test(regName.val())){
            alert('이름 형식이 올바르지 않습니다.');
            console.log(regName.val());
            regName.focus();
            return false;
        }
        if(!idRegExp.test(regId.val())){
            alert('아이디 형식이 올바르지 않습니다. (4-20자 영어, 숫자, 첫자에는 숫자 불가)');
            regId.focus();
            return false;
        }
        if(!passwordRegExp.test(regPassword.val())){
            alert('비밀번호 형식이 올바르지 않습니다. (8자 이상, 영어, 숫자, 특수문자 1개 이상');
            regPassword.focus();
            return false;
        }
        
        // 비밀번호 와 pwcheck가 다를 시
        if(regPassword.val() != regPasswordCheck.val()){
            alert('비밀번호가 check와 같지 않습니다.');
            regPasswordCheck.focus();
            return false;
        }
        
        if(!emailRegExp.test(regEmail.val())){
            alert('이메일 형식이 올바르지 않습니다.');
            regEmail.focus();
            return false;
        }
    
        // gender 선택하지 않았을 시
        if(!$('input:radio[name=regGender]').is(':checked')){
            alert('성별을 선택해 주세요.');
            return false;
        }
        /*
        // id 중복 검사 안했을 시
        if(idCheckResult != 1){
            alert('아이디 중복 검사를 해주세요.');
            regId.focus();
            return false;
        }
        */

    });
})

//아이디 중복 체크
function idCheck(){
    if(regId.val() == ''){
        alert('아이디를 입력해 주세요.');
        regId.focus();
        return;
    };
    if(!idRegExp.test(regId.val())){
        alert('아이디 형식이 올바르지 않습니다. (4-20자 영어, 숫자, 첫자에는 숫자 불가)');
        regId.focus();
        return;
    }

    $ajax({
        async: true,
        type: "POST",
        url: "/user/idCheck",
        datatype: 'json',
        data: {"regId" : regId.val()},
        contentType: "application/json; charset=UTF-8",
        success: function(data){
            if(data == 0){
                alert('사용 가능한 아이디입니다.');
                idCheckBtn.hide();
                idCheckedText.show();
                $('#regPassword').focus();
                idCheckResult = 1;
            }else{
                alert('같은 아이디가 존재합니다.');
                idCheckBtn.show();
                idCheckedText.hide();
                regId.focus();
            }
        },
        error: function(error){
            alert('error : ' + error);
        }
    });
}