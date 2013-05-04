<%@page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>Cyber姬的博客</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<script src="../assets/js/jquery.js"></script>
<!-- Le styles -->
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../assets/css/docs.css" rel="stylesheet">
<link href="../assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body data-spy="scroll" data-target=".subnav" data-offset="50">


	<!-- Navbar
    ================================================== -->
	<div class="navbar navbar-fixed-top">
	<c:import url="include/navTop.jsp"></c:import>
	</div>

	<div class="container">
		<div class="row-fluid">
			<div class="span9">
			<div class="well">
				<p><h2>${post.title }</h2>--发表于发布于<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${post.time}"/>
				<p>${post.content }
				<p>${post.title }位于${post.caterogeId }分类,查看<a href="../cateroge/${post.caterogeId }">${post.caterogeId }</a>中的其他文章.
			</div>
			<div class="well">
				<h3>评论列表:</h3>
				<hr>
				<c:forEach var="comment" items="${commentList }">
					<p>${comment.authorName }在<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${comment.time}"/>说道:${comment.content }
				</c:forEach>
				</div>
				<div class="well">
				<h3>添加评论:</h3>
				<hr>
				<form method="post" action="../addComment">
					<input type="hidden" name="comment.fatherId" value="${post.id }" />
					<p><label>昵称:</label><input name="comment.authorName"  required/>${authorNameMsg } 
					<p><label>Email:</label><input name="comment.authorEmail" required/>${authorEmailMsg } 
					<p><label>评论内容:</label><textarea name="comment.content">${contentMsg }</textarea>
					<p><input type="submit" class="btn btn-primary"/>
				</form>
				</div>

			</div>
			    <div class="span3">
      <div class="well well-samll">作者</div>
		<c:import url="include/mostViewPost.jsp"></c:import>
		<c:import url="include/lastestComment.jsp"></c:import>
    </div>
		</div>

		<!-- Footer
      ================================================== -->
		<footer class="footer">
			<p class="pull-right">
				<a href="#">回到顶端</a>
			</p>
			<p>
				我们倾注世间之爱于设计与创作 <a href="http://twitter.com/twitter" target="_blank">@twitter</a>
				by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a
					href="http://twitter.com/fat" target="_blank">@fat</a>，由<a
					href="http://weibo.com/tvlikedev">Tvlike.me/TV来客开发者</a>翻译
			</p>
			<p>
				开源依照 <a href="http://www.apache.org/licenses/LICENSE-2.0"
					target="_blank">Apache License v2.0</a> 发布。 文档依照 <a
					href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>
				发布。
			</p>
			<p>
				Icons取自 <a href="http://glyphicons.com">Glyphicons Free</a>，授权依照 <a
					href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>。
			</p>
		</footer>

	</div>
	<!-- /container -->



	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="../assets/js/google-code-prettify/prettify.js"></script>
	<script src="../assets/js/bootstrap-transition.js"></script>
	<script src="../assets/js/bootstrap-alert.js"></script>
	<script src="../assets/js/bootstrap-modal.js"></script>
	<script src="../assets/js/bootstrap-dropdown.js"></script>
	<script src="../assets/js/bootstrap-scrollspy.js"></script>
	<script src="../assets/js/bootstrap-tab.js"></script>
	<script src="../assets/js/bootstrap-tooltip.js"></script>
	<script src="../assets/js/bootstrap-popover.js"></script>
	<script src="../assets/js/bootstrap-button.js"></script>
	<script src="../assets/js/bootstrap-collapse.js"></script>
	<script src="../assets/js/bootstrap-carousel.js"></script>
	<script src="../assets/js/bootstrap-typeahead.js"></script>
	<script src="../assets/js/application.js"></script>


</body>
</html>
