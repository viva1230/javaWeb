package com.example.web.utils;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtils {

    //连接数据库
    public static Connection getConnection() throws Exception{
        InputStream resource = JDBCUtils
                .class
                .getClassLoader()
                .getResourceAsStream("JDBC.properties");
        Properties properties = new Properties();
        properties.load(resource);


        String url = properties.getProperty("url"); //数据库url
        String username = properties.getProperty("username");//数据库的用户名
        String password = properties.getProperty("password");//数据库的密码
        String driver = properties.getProperty("driverClassName");//连接数据库的驱动类名


        Class.forName(driver);//连接装载，每次连接数据库前都要写入的一个语句
        return DriverManager.getConnection(url, username,password);//连接数据库并返回Connection类型的对象
    }

    public static void close(Connection conn,
                             PreparedStatement statement) {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assert statement != null;
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    /* Resultset主要用于接收JDBC查询语句返回的数据集对象 */
    public static void close(Connection conn,
                             PreparedStatement statement,
                             ResultSet resultSet) {

        close(conn, statement);

        try {
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
