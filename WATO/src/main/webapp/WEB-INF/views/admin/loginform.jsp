<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="../resource/css/social-icon.css"> 
    <style> 
        @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');
 
        *  {
            box-sizing: border-box;
        }
        #loginform  {
            background: #f6f5f7;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            font-family: 'Montserrat', sans-serif;
            height: 0; 
            /* margin: -20px 0 50px; */
            /* margin-top: 300px; */
        }
       #loginform h1 {
            font-weight: bold;
            margin: 0;
        }
        #loginform h2 {
            text-align: center;
        }
        #loginform p {
            font-size: 14px; 
            font-weight: 100;
            line-height: 20px;
            letter-spacing: 0.5px;
            margin: 20px 0 30px;
        }
        #loginform span {
            font-size: 12px;
        }
        #loginform a {
            color: #333;
            font-size: 14px;
            text-decoration: none;
            margin: 15px 0;
        }
        #loginform button {
            border-radius: 20px;
            border: 1px solid #7B90D5;
            background-color: #7B90D5;
            color: #FFFFFF;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
        }
        #loginform button:active {
            transform: scale(0.95);
        } 
        #loginform button:focus {
            outline: none;
        }
        #loginform button.ghost {
            background-color: transparent;
            border-color: #FFFFFF;
        }
		/* button 대신 쓰는 input 버튼. 학생&강사 회원가입에서 쓰임 */
        #loginform input.angel {
            border-radius: 20px;
            border: 1px solid #7B90D5;
            background-color: #7B90D5;
            color: #FFFFFF;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
        }
        #loginform input.angel:active {
            transform: scale(0.95);
        } 
        #loginform input.angel:focus {
            outline: none;
        }
        #loginform input.angel.ghost {
            background-color: transparent;
            border-color: #FFFFFF;
        }
        #loginform form {
            background-color: #FFFFFF;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 50px;
            height: 100%;
            text-align: center;
        }
       #loginform input {
            background-color: #eee;
            border: none;
            padding: 12px 15px;
            margin: 8px 0;
            width: 100%;
        }
        #loginform .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0,0,0,0.25),
            0 10px 10px rgba(0,0,0,0.22);
            position: relative;
            overflow: hidden;
            width: 768px;
            max-width: 100%;
            min-height: 480px;
        }
        #loginform .form-container {
            position: absolute;
            top: 0;
            height: 100%;
            transition: all 0.6s ease-in-out;
        }
        #loginform .sign-in-container {
            left: 0;
            width: 50%;
            z-index: 2;
        }
        #loginform .container.right-panel-active .sign-in-container {
            transform: translateX(100%);
        }
        #loginform .sign-up-container {
            left: 0;
            width: 50%;
            opacity: 0;
            z-index: 1;
        }
       #loginform  .container.right-panel-active .sign-up-container {
            transform: translateX(100%);
            opacity: 1;
            z-index: 5;
            animation: show 0.6s;
        }
        @keyframes show {
            0%, 49.99% {
                opacity: 0;
                z-index: 1;
            }
            50%, 100% {
                opacity: 1;
                z-index: 5;
            }
        }
        #loginform .overlay-container {
            position: absolute;
            top: 0;
            left: 50%;
            width: 50%;
            height: 100%;
            overflow: hidden;
            transition: transform 0.6s ease-in-out;
            z-index: 100;
        }
        #loginform .container.right-panel-active .overlay-container{
            transform: translateX(-100%);
        }
        #loginform .overlay {
            background: #FF416C;
            background: -webkit-linear-gradient(to right, #FF4B2B, #FF416C);
            background: linear-gradient(to right, #495D9E, #7B90D5);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 0 0;
            color: #FFFFFF;
            position: relative;
            left: -100%;
            height: 100%;
            width: 200%;
            transform: translateX(0);
            transition: transform 0.6s ease-in-out;
        }
        #loginform .container.right-panel-active .overlay {
            transform: translateX(50%);
        }
        #loginform .overlay-panel {
            position: absolute;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 40px;
            text-align: center;
            top: 0;
            height: 100%;
            width: 50%;
            transform: translateX(0);
            transition: transform 0.6s ease-in-out;
        }
       #loginform  .overlay-left {
            transform: translateX(-20%);
        }
      #loginform  .container.right-panel-active .overlay-left {
            transform: translateX(0);
        }
       #loginform  .overlay-right {
            right: 0;
            transform: translateX(0);
        }
       #loginform  .container.right-panel-active .overlay-right {
            transform: translateX(20%);
        }
        #loginform .social-container {
            margin: 20px 0;
        }
        #loginform .social-container a {
            border: 1px solid #DDDDDD;
            border-radius: 50%;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            margin: 0 5px;
            height: 40px;
            width: 40px;
        }
       #loginform  footer {
            background-color: #222;
            color: #fff;
            font-size: 14px;
            bottom: 0; 
            position: fixed;
            left: 0;
            right: 0;
            text-align: center;
            z-index: 999;
        }
       #loginform  footer p {
            margin: 10px 0;
        }
       #loginform  footer i {
            color: red; 
        }
       #loginform footer a {
            color: #3c97bf;
            text-decoration: none;
        }
    </style>
</head>
<body> 
<div id="loginform">
	<div class="container" id="container" >
	    <div class="form-container sign-up-container">
	        <form action="#"> 
	            <h1>Create Account</h1> 
	            <div class="social-container">
	                <a href="#" class="social-icon-button twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a>
			
					<a href="#" class="social-icon-button facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a>
										
					<a href="#" class="social-icon-button gplus"><i class="fa fa-google-plus" aria-hidden="true"></i><span></span></a>
	            </div>
	            <a href="../student/terms"><input type="button" class="angel" value="학생 회원가입"></a>
	            <a href="../teach/terms"><input type="button" class="angel" value="강사 회원가입"></a>
	        </form>
	
	    </div>
	    <div class="form-container sign-in-container">
	        <form name="loginform" role="form" method="post" autocomplete="off">
	            <h1>Sign in</h1> 
	            <div class="social-container">
	               <a href="#" class="social-icon-button twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a>
			
					<a href="#" class="social-icon-button facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a>
										
					<a href="#" class="social-icon-button gplus"><i class="fa fa-google-plus" aria-hidden="true"></i><span></span></a>
	            </div>
	            <span>or use your account</span>
	            <div><label><input type="radio" name="radio" class="radio" value="10" checked="checked">학생</label>
	            	 <label><input type="radio" name="radio" class="radio" value="20">강사</label>
	            </div>
	            <input type="text" name="User_Id" placeholder="Email" />
	            <input type="password" name="User_Pwd" placeholder="Password" /><br>
	            <div><a href="../admin/forgot_id_pwd">아이디 또는 비밀번호 찾기</a></div><br> 
	            <button type="submit" id="login" class="login">SIGN IN</button>
	        </form>
	    </div>
	    <div class="overlay-container">
	        <div class="overlay">
	            <div class="overlay-panel overlay-left">
	                <h1>환영합니다!</h1>
	                <p>당신의 개인정보를 입력해주세요.</p>
	                <button class="ghost" id="signIn">로그인하기</button>
	            </div>
	            <div class="overlay-panel overlay-right">
	                <h1>안녕하십니까!<br><font style="font-size: 20px;">아직 회원이 아니신가요?</font></h1>
	                <p>회원가입 하기를 원하시면 '회원가입' click</p>
	                <button class="ghost" id="signUp1">회원가입</button>
	            </div>
	        </div>
	    </div> 
	</div>
</div>
<script>
    var modal = document.getElementById('container');
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    var signUpButton1 = document.getElementById('signUp1');
    var signInButton = document.getElementById('signIn');
    var container = document.getElementById('container');
    signUpButton1.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });
    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });
    // If user clicks anywhere outside of the modal, Modal will close
</script>

<script type="text/javascript">
	$('#login').click(function() {
		
		var radioval = $('input[name="radio"]:checked').val();
		
		if(null != radioval && radioval == 10) {
			$('form[name="loginform"]').attr('action',"/admin/loginstd");
		
		} else if(null != radioval && radioval == 20) {
			$('form[name="loginform"]').attr('action',"/admin/logintch");
		} 
	});
</script>
</body>
</html>