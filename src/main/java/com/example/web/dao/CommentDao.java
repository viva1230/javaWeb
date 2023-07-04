package com.example.web.dao;

import com.example.web.entity.Comment;
import com.example.web.entity.CommentVo;
import com.example.web.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CommentDao {
    public void insertComment(Comment comment) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "insert into comment(user_id, content) values(?,?)";//sql语句向数据库插入新评论 更多用法？DDL等类型的语句？
        try {
            connection = JDBCUtils.getConnection();//连接数据库，利用了JDBCUtils类
            preparedStatement = connection.prepareStatement(sql);//将字符串转换为sql语句
            preparedStatement.setInt(1, comment.getUserId());
            preparedStatement.setString(2, comment.getContent());

            preparedStatement.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            JDBCUtils.close(connection, preparedStatement);//关闭数据库
        }




    }

    public void updateComment(Comment comment) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "update comment set content=? where comment_id=? and user_id=?";
        try {
            connection = JDBCUtils.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, comment.getContent());
            preparedStatement.setInt(2, comment.getCommentId());
            preparedStatement.setInt(3, comment.getUserId());

            preparedStatement.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            JDBCUtils.close(connection, preparedStatement);
        }




    }

    public void deleteComment(Integer id){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "delete from comment where comment_id=?"; //数据库的删除指令
        try {
            connection = JDBCUtils.getConnection();//连接到数据库，使用了JDBCUtils类封装的方法
            preparedStatement = connection.prepareStatement(sql);//将string类型转换为sql语句
            preparedStatement.setInt(1, id);//在上面的sql语句中的第一个？设置为需要删除的评论id

            preparedStatement.executeUpdate();//数据库执行sql语句

        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            JDBCUtils.close(connection, preparedStatement);//无论是否执行成功都需要关闭数据库与preparedStatement资源
        }
    }

    public List<CommentVo> findCommentByUserId(Integer userId){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<CommentVo> result = new ArrayList<>();
        try {
            connection = JDBCUtils.getConnection();
            String sql = "select * from comment where user_id=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, userId);
            resultSet = preparedStatement.executeQuery();
            LoginInfoDao loginInfoDao = new LoginInfoDao();
            while (resultSet.next()) {
                CommentVo resultComment = new CommentVo();
                resultComment.setCommentId(resultSet.getInt("comment_id"));
                resultComment.setName(loginInfoDao.findLoginInfoById(resultSet.getInt("user_id"))
                        .getName());
                resultComment.setContent(resultSet.getString("content"));

                result.add(resultComment);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            assert resultSet != null;
            JDBCUtils.close(connection, preparedStatement, resultSet);
        }
        return result;
    }

    public List<CommentVo> getAllComments(){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<CommentVo> result = new ArrayList<>();
        try {
            connection = JDBCUtils.getConnection();
            String sql = "select * from comment";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            LoginInfoDao loginInfoDao = new LoginInfoDao();
            while (resultSet.next()) {
                CommentVo resultComment = new CommentVo();
                resultComment.setCommentId(resultSet.getInt("comment_id"));
                resultComment.setName(loginInfoDao.findLoginInfoById(resultSet.getInt("user_id"))
                        .getName());
                resultComment.setContent(resultSet.getString("content"));

                result.add(resultComment);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection, preparedStatement, resultSet);
        }
        return result;
    }
}
