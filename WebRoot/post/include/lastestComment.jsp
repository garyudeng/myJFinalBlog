<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
				$(function() {
						$.get("<c:url value="/post/lastestComment"></c:url>",function(data) {
						var str = "";
						for (var i = 0; i < data.length; i++){
							str = str + "<li class=''><a href=<c:url value="/post/cateroge"></c:url>/"+data[i].id+">"+data[i].authorName+"</a> 发表在<a href=''>"+data[i].fatherId+"</a></li>";
							
						}
						$("#lastestComment").append(str);
			});
		});
</script>
      <div class="well">
      近期评论:
      <ul id ="lastestComment">
      </ul>
      </div>