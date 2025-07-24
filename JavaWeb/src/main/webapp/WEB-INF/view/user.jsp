<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<User> users = (List<User>)request.getAttribute("users");
%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>使用者列表</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
	</head>
	<body style="padding: 20px">
		<h2>Hi <%=session.getAttribute("username") %> 您好 !</h2>
		<!-- 使用者列表 -->
		<div class="pure-form">
			<fieldset>
				<legend>使用者列表</legend>
				<table class="pure-table pure-table-borderd">
					<thead>
						<tr>
							<th>id</th><th>username</th><th>hash</th><th>salt</th>
						</tr>
					</thead>
					<tbody>
						<% for(User user : users) { %>
						<tr>
								<td><%=user.getId() %></td>
								<td><%=user.getUsername() %></td>
								<td><%=user.getHash() %></td>
								<td><%=user.getSalt() %></td>
							
						</tr>
						<% } %>
					</tbody>
				</table>
				<a href="/JavaWeb/register" class="pure-button pure-button-primary">註冊</a>
				<a href="/JavaWeb/logout" class="pure-button pure-button-primary">登出</a>
			</fieldset>
		</div>
			
	</body>
</html>