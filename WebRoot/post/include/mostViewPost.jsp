<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
				$(function() {
						$.get("<c:url value="/post/mostViewPost"></c:url>",function(data) {
						var str = "";
						for (var i = 0; i < data.length; i++){
							str = str + "<li class=''><a href=<c:url value="/post/detail"></c:url>/"+data[i].id+"> "+data[i].title+"</a></li>";
						}
						$("#mostViewPost").append(str);
			});
		});
</script>
      <div class="well">
      浏览最多的文章:
      <ol id ="mostViewPost">
      </ol>
      </div>