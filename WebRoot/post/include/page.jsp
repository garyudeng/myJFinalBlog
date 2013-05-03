<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 分页,需要get传入url参数 -->
<div class="pagination">
    <ul>
        <li><a href="<c:url value="${param.url }"></c:url>">首页</a></li>
        <c:forEach begin="1" end="${pageAll }" var="page">
        	<li><a href="<c:url value="${param.url }?pageIndex=${page }"></c:url>">${page }</a></li>
		</c:forEach>
        <li><a href="<c:url value="${param.url }?pageIndex=${pageAll }"></c:url>">末页</a></li>
        <li><a href="#">${pageIndex } / ${pageAll }</a></li>
</ul>
</div>