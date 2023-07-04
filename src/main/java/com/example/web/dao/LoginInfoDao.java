package com.example.web.dao;

import com.example.web.entity.LoginInfo;
import com.example.web.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LoginInfoDao {
    public void insertLoginInfo(LoginInfo loginInfo) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "insert into login_info(name,age,birth,Level,mail,psw) values(?,?,?,?,?,?)";
        try {
            connection = JDBCUtils.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, loginInfo.getName());
            preparedStatement.setInt(2, loginInfo.getAge());
            preparedStatement.setObject(3, loginInfo.getBirth());
            preparedStatement.setInt(4, loginInfo.getLevel());
            preparedStatement.setString(5, loginInfo.getMail());
            preparedStatement.setString(6, loginInfo.getPsw());

            preparedStatement.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            JDBCUtils.close(connection, preparedStatement);
        }




    }

    public void updateLoginInfo(LoginInfo loginInfo) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "update login_info set name=?,age=?,birth=?,Level=?,mail=?,psw=? where id=?";
        try {
            connection = JDBCUtils.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, loginInfo.getName());
            preparedStatement.setInt(2, loginInfo.getAge());
            preparedStatement.setObject(3, loginInfo.getBirth());
            preparedStatement.setInt(4, loginInfo.getLevel());
            preparedStatement.setString(5, loginInfo.getMail());
            preparedStatement.setString(6, loginInfo.getPsw());
            preparedStatement.setInt(7, loginInfo.getId());

            preparedStatement.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            JDBCUtils.close(connection, preparedStatement);
        }




    }

    public void deleteLoginInfo(Integer id){  //注销账号/管理员拉黑
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "delete from login_info where id=?";
        try {
            connection = JDBCUtils.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);

            preparedStatement.executeUpdate();

        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            JDBCUtils.close(connection, preparedStatement);
        }
    }

    public LoginInfo findLoginInfoByName(String name){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        LoginInfo resultLoginInfo = null;
        ResultSet resultSet = null;
        try {
            connection = JDBCUtils.getConnection();
            String sql = "select * from login_info where name=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                resultLoginInfo = new LoginInfo();
                resultLoginInfo.setId(resultSet.getInt("id"));
                resultLoginInfo.setName(resultSet.getString("name"));
                resultLoginInfo.setAge(resultSet.getInt("age"));
                resultLoginInfo.setBirth(resultSet.getDate("birth").toLocalDate());
                resultLoginInfo.setLevel(resultSet.getInt("Level"));
                resultLoginInfo.setMail(resultSet.getString("mail"));
                resultLoginInfo.setPsw(resultSet.getString("psw"));
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            assert resultSet != null;
            JDBCUtils.close(connection, preparedStatement, resultSet);
        }
        return resultLoginInfo;
    }

    public LoginInfo findLoginInfoById(Integer id){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        LoginInfo resultLoginInfo = null;
        ResultSet resultSet = null;
        try {
            connection = JDBCUtils.getConnection();
            String sql = "select * from login_info where id=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                resultLoginInfo = new LoginInfo();
                resultLoginInfo.setId(resultSet.getInt("id"));
                resultLoginInfo.setName(resultSet.getString("name"));
                resultLoginInfo.setAge(resultSet.getInt("age"));
                resultLoginInfo.setBirth(resultSet.getDate("birth").toLocalDate());
                resultLoginInfo.setLevel(resultSet.getInt("Level"));
                resultLoginInfo.setMail(resultSet.getString("mail"));
                resultLoginInfo.setPsw(resultSet.getString("psw"));
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            assert connection != null;
            assert resultSet != null;
            JDBCUtils.close(connection, preparedStatement, resultSet);
        }
        return resultLoginInfo;
    }

    public List<LoginInfo> getAllLoginInfos(){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<LoginInfo> result = new ArrayList<>();
        try {
            connection = JDBCUtils.getConnection();
            String sql = "select * from login_info";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                LoginInfo resultLoginInfo = new LoginInfo();
                resultLoginInfo.setId(resultSet.getInt("id"));
                resultLoginInfo.setName(resultSet.getString("name"));
                resultLoginInfo.setAge(resultSet.getInt("age"));
                resultLoginInfo.setBirth(resultSet.getDate("birth").toLocalDate());
                resultLoginInfo.setLevel(resultSet.getInt("Level"));
                resultLoginInfo.setMail(resultSet.getString("mail"));
                resultLoginInfo.setPsw(resultSet.getString("psw"));

                result.add(resultLoginInfo);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection, preparedStatement, resultSet);
        }
        return result;
    }
}
