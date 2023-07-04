package com.example.web;

import com.example.web.dao.CommentDao;
import com.example.web.entity.CommentVo;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<CommentVo> allComments = new CommentDao().getAllComments();
        allComments.forEach(c->{System.out.println(c.getName());});
    }
}
