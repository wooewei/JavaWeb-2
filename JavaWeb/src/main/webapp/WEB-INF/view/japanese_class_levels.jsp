<%@ page import="java.util.List"%>
<%@ page import="model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 接收 servlet 傳來的資料
	List<Student> students = (List<Student>)request.getAttribute("students");
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>遊學日文能力分班大冒險</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
	</head>
	<body style="padding: 20px">
		
		<table>
			<td valign="top">
				<!-- 日文能力分班表單 -->
				<form method="post" action="/JavaWeb/japanese/class/level" class="pure-form">
					<fieldset>
						<legend>日文能力分班表單</legend>
						姓名:<input type="text" id="name" name="name" placeholder="請輸入名字" required /><p />
						國別:<select id="country" name="country">
								<option value="">請選擇國別</option>
								<option value="TW">台灣(TW)</option>
								<option value="US">美國(US)</option>
								<option value="CN">大陸(CN)</option>
								<option value="KR">韓國(KR)</option>
								<option value="VN">越南(VN)</option>
								<option value="ID">印尼(ID)</option>
							</select><p />
						年齡:<input type="number" id="age" name="age" value="18" min="12" max="99" required /><p />	
						程度:
						<ol>
							<li><input type="radio" id="level" name="level" value="N5" /> 初級班(N5): 能夠簡單用日文自我介紹</li>
							<li><input type="radio" id="level" name="level" value="N4" /> 初中級班(N4): 理解基本句型, 能夠溝通日常主題</li>
							<li><input type="radio" id="level" name="level" value="N3" /> 中級班(N3): 能理解生活中複雜的句子</li>
							<li><input type="radio" id="level" name="level" value="N2" /> 高級班(N2): 能夠理解新聞報導等較正式的內容, 能流暢表達想法</li>
							<li><input type="radio" id="level" name="level" value="N1" /> 菁英班(N1): 能夠靈活應用日文進行學術交流, 理解複雜的文章</li>
						</ol><p />
						<button type="submit">傳送</button>
					</fieldset>
				</form>
			</td>
			<td valign="top">
				<!-- 日文能力分班紀錄 -->
				<div class="pure-form">
					<fieldset>
						<legend>日文能力分班紀錄</legend>
						<table class="pure-table pure-table-bordered">
							<thead>
								<tr>
									<th>Id</th><th>姓名</th><th>國別</th><th>年齡</th><th>程度</th>
								</tr>
							</thead>
							<tbody>
								<% for(int i=0;i<students.size();i++) { 
									Student st = students.get(i);       %>
									<tr>
										<td><%=i %></td>
										<td><%=st.getName() %></td>
										<td><%=st.getCountry() %></td>
										<td><%=st.getAge() %></td>
										<td><%=st.getLevel() %></td>
									</tr>
								<% } %>
							</tbody>
						</table>
					</fieldset>
				</div>
			</td>
		</table>
	</body>
</html>