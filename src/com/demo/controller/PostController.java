package com.demo.controller;
import com.demo.model.Cateroge;
import com.demo.model.Comment;
import com.demo.model.Post;
import com.jfinal.core.Controller;

public class PostController extends Controller{
		public void index(){
			setAttr("postList", Post.dao.find("select * from post"));
			setAttr("caterogeList",Cateroge.dao.find("select * from cateroge"));
			setAttr("lastestCommentList",Comment.dao.find("select * from comment order by id desc limit 5"));
			setAttr("mostViewPostList",Post.dao.find("select * from post order by viewCount desc limit 5"));
		}
		
		public void detail(){
			final Integer postId = getParaToInt(0);
			Post.dao.clear().set("id",postId).set("viewCount", Post.dao.findById(postId).getLong("viewCount")+1).update();
			setAttr("post", Post.dao.findById(getParaToInt()));
			setAttr("commentList",Comment.dao.find("select * from comment where fatherId= ?", getParaToInt()));
		}
		
		public void lastestComment(){
			renderJson(Comment.dao.find("select * from comment order by id desc limit 5"));
		}
		
		public void mostViewPost(){
			renderJson(Post.dao.find("select * from post order by viewCount desc limit 5"));
		}
		
		public void cateroge(){
			setAttr("cateroge",Cateroge.dao.findById(getPara()));
			setAttr("postList",Post.dao.find("select * from post where caterogeId = ?", getPara()));
		}
		
		public void addComment(){
			Comment comment = getModel(Comment.class);
			final Long postId = comment.get("fatherId");
			getModel(Comment.class).save();
			Post.dao.clear().set("id", postId).set("commentCount", Post.dao.findById(postId).getLong("commentCount")+1).update();
			redirect("/post");
		}
}