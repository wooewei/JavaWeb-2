<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登入頁面</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
	</head>
	<body style="padding: 20px">
		
		<!-- 登入頁面表單 -->
		<form method="post" action="/JavaWeb/login" class="pure-form">
			<fieldset>
				<legend>登入頁面</legend>
				🤵 <input type="text" name="username" placeholder="請輸入帳號" required /><p />
				🔑 <input type="password" name="password" placeholder="請輸入密碼" required /><p />
				🐴 <input type="number" name="code" placeholder="請輸入驗證碼" required />
				   <img src="/JavaWeb/code/image" alt="驗證碼" title="我是驗證碼" valign="middle" />
				<p />
				<button type="submit" class="pure-button pure-button-primary">傳送</button>
			</fieldset>
		</form>
			
	</body>
</html>