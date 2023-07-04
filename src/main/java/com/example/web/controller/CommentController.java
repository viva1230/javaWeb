package com.example.web.controller;

import com.example.web.dao.CommentDao;
import com.example.web.entity.Comment;
import com.example.web.entity.CommentVo;
import com.example.web.entity.LoginInfo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CommentController", value = "/commentController")//与表单建立映射关系
public class CommentController extends HttpServlet {
    @Override //从父类继承而来的
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodType = request.getParameter("type");
        switch (methodType) {
            case "all":
                try {
                    getAllComment(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }//获取评论列表
                break;
            case "find":
                try {
                    findComment(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
            case "delete":
                try {
                    deleteComment(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
            case "girls":
                try {
                    getAllCommentToGirls(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
            case "add":
                try {
                    addComment(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
            default:
                break;
        }
    }

    private void getAllComment(HttpServletRequest request, HttpServletResponse response) throws Exception {
        LoginInfo info = (LoginInfo) request.getSession().getAttribute("loginInfo");
        if (info.getLevel() == 2) {
            request.setAttribute("commentList", new CommentDao().getAllComments());
        } else {
            request.setAttribute("commentList", new CommentDao().findCommentByUserId(info.getId()));
        }
        request.getRequestDispatcher("comment.jsp").forward(request, response);
    }

    private void findComment(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String name = request.getParameter("name");
        List<CommentVo> allComments = new CommentDao().getAllComments();
        for (int i = allComments.size() - 1; i >= 0; i--) {
            if (!allComments.get(i).getName().equals(name)) {
                allComments.remove(i);
            }

        }
        request.setAttribute("commentList", allComments);
        request.getRequestDispatcher("comment.jsp").forward(request, response);
    }

    private void deleteComment(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        new CommentDao().deleteComment(Integer.parseInt(id));
        request.getRequestDispatcher("commentController?type=all").forward(request, response);
    }

    private void getAllCommentToGirls(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setAttribute("commentList", new CommentDao().getAllComments());
        request.getRequestDispatcher("Girls.jsp").forward(request, response);
    }

    private void addComment(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String content = request.getParameter("content");

        LoginInfo info = (LoginInfo) request.getSession().getAttribute("loginInfo");
        if (info == null){
            request.setAttribute("errorMessage", "您未登录！");
            request.getRequestDispatcher("commentController?type=girls").forward(request, response);
            return;
        }
        if (info.getLevel() == 2){
            request.setAttribute("errorMessage", "请管理员使用私人账号评论！");
            request.getRequestDispatcher("commentController?type=girls").forward(request, response);
            return;
        }
        Comment comment = new Comment();
        comment.setUserId(info.getId());
        comment.setContent(content);

        new CommentDao().insertComment(comment);
        request.getRequestDispatcher("commentController?type=girls").forward(request, response);
    }
}
