<%@page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    	<c:forEach var="post" items="${postList }">
    		<div id="post-${post.id }"class="well well-large">
    		
    			<p><a href="<c:url value="/post/detail/${post.id }"/>">${post.title }</a><span class="pull-right"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${post.time}"/></span> <br/>
    			<p>${post.content }
    			<p><a href="<c:url value="/post/detail/${post.id }"/>#comments"><i class="icon-comment"></i>${post.commentCount }条评论</a>
    			<i class="icon-eye-open"></i>${post.viewCount }次浏览
    			<hr>
    		</div>
    	</c:forEach>