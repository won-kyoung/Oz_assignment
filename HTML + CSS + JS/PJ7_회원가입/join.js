//제출 이벤트 받기
//입력값에 문제있는 경우 감지 (비번확인)

const form = document.getElementById("form")

form.addEventListener("submit", function(event){
    event.preventDefault()  //기존기능 차단

    let userID = event.target.id.value
    let userPw1 = event.target.pw1.value
    let userPw2 = event.target.pw2.value
    let userName = event.target.name.value
    let userPhone = event.target.phone.value
    let userPosition = event.target.position.value
    let userGender = event.target.gender.value
    let userEmail = event.target.email.value
    let userIntro = event.target.intro.value    

    
    if(userID.length < 6){
        alert("아이디가 너무 짧습니다. 6자 이상 입력해주세요.")
        return  //여기서 문제있으면 굳이 다음거 실행안하고 멈춤 
    }
    if(userPw1 !== userPw2){
        alert("비밀번호가 일치하지 않습니다.")
        return
    }

    document.body.innerHTML = ""    //html의 바디태그 다 없애기 (환영멘트위함)
    document.write(`<p>${userID}님 환영합니다`)
    document.write("<p>회원가입 시 입력하신 내역은 다음과 같습니다")
    document.write(`<p>아이디 : ${userID}`)
    document.write(`<p>이름 : ${userName}`)
    document.write(`<p>전화번호 : ${userPhone}`)
    document.write(`<p>원하는 직무 : ${userPosition}`)
    

})