<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
				$(function() {
						$.get("<c:url value="/cateroge"></c:url>",function(data) {
						var str = "";
						for (var i = 0; i < data.length; i++){
							str = str + "<li class=''><a href=<c:url value="/post/cateroge"></c:url>/"+data[i].id+"> "+data[i].name+"</a></li>";
							
						}
						$("#cateroge").append(str);
			});
		});
</script>
<div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="./index.html">Bootstrap</a>
          <div class="nav-collapse">
            <ul class="nav" id="cateroge">
            	<li><a href="<c:url value="/post"/>">首页</a></li>
            </ul>
            <form class="navbar-form pull-right" method="get" action="">
              <input class="span2" type="text" placeholder="标题" x-webkit-speech>
              <button type="submit" class="btn">搜索</button>
            </form>
          </div>
        </div>
      </div>