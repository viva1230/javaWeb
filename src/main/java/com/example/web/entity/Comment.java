package com.example.web.entity;

public class Comment { //JavaBean类
    private Integer userId;
    private Integer commentId;
    private String content;

    public Comment() {
    }//构造函数

    public Comment(Integer userId, Integer commentId, String content) {
        this.userId = userId;
        this.commentId = commentId;
        this.content = content;
    } //构造函数

    public Comment(Integer userId, String content) {
        this.userId = userId;
        this.content = content;
    }//构造函数 重载问题？

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    } //通过表单赋值content
}
