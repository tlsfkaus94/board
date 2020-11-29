<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>게시판</title>
	</head>
	<body>
		<div id="root">
			<header>
				<h1>전체 게시판</h1>
			</header>
			<hr />
			 
			<nav>
			  홈 - 글 작성
			<input type="button" value="글쓰기" onclick="location.href='./boardRegForm.do'">
			
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" method="post" action="board_write.do">
					<table>
						<tr><th>번호</th><th>종류</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
						
						<c:forEach items="${list}" var = "board">
							<tr>
								<td>${board.bNum}</td>
								
								<td>
									<c:if test="${board.bKind==0}">일반글</c:if>
									<c:if test="${board.bKind==1}">정보글</c:if>
									<c:if test="${board.bKind==2}">유머글</c:if>
								</td>
								<td><a href="board_read.do?bNum=${board.bNum}">${board.bTitle}</a></td>
								<td>${board.bRegname}</td>
								<td>${board.bRegdate}</td>
							</tr>
						</c:forEach>
						
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>