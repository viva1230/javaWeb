package com.example.web.controller;

import com.example.web.dao.LoginInfoDao;
import com.example.web.entity.LoginInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "LoginInfoController", value = "/loginInfoController")
public class LoginInfoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);//网上粘贴的？但具体什么意思？
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodType = request.getParameter("type");//request对象的其他方法使用？
        switch (methodType) {
            case "login":
                try {
                    login(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
            case "register":
                try {
                    register(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            case "update":
                try {
                    update(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            default:
                break;
        }

    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String name = request.getParameter("name");
        String psw = request.getParameter("psw");

        LoginInfoDao loginInfoDao = new LoginInfoDao();
        LoginInfo info = loginInfoDao.findLoginInfoByName(name);
        if (info == null) {
            request.setAttribute("errorMessage", "用户不存在");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        if (!info.getPsw().equals(psw)) {
            request.setAttribute("errorMessage", "密码错误");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        request.getSession().setAttribute("loginInfo", info);
        response.sendRedirect("index.jsp");

    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String name = request.getParameter("name");
        String psw = request.getParameter("psw");
        String psw1 = request.getParameter("psw1");
        String mail = request.getParameter("mail");
        LocalDate birth = LocalDate.parse(request.getParameter("birth"));


        LoginInfoDao loginInfoDao = new LoginInfoDao();
        LoginInfo info = loginInfoDao.findLoginInfoByName(name);
        if (info != null) {
            request.setAttribute("errorMessage", "用户名已存在");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        if (!psw.equals(psw1)) {
            request.setAttribute("errorMessage", "两次密码不一致");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        LoginInfo loginInfo = new LoginInfo();
        loginInfo.setName(name);
        loginInfo.setPsw(psw);
        loginInfo.setMail(mail);
        loginInfo.setBirth(birth);
        loginInfo.setAge(LocalDate.now().getDayOfYear() - birth.getDayOfYear());
        loginInfoDao.insertLoginInfo(loginInfo);
        request.setAttribute("successMessage", "注册成功");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String psw = request.getParameter("psw");
        String mail = request.getParameter("mail");
        String birth = request.getParameter("birth");

        LoginInfoDao loginInfoDao = new LoginInfoDao();
        LoginInfo info = (LoginInfo) request.getSession().getAttribute("loginInfo");
        if (info == null) {
            request.setAttribute("errorMessage", "用户不存在");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        if (psw != null && !psw.isEmpty()) {
            info.setPsw(psw);
        }
        if (mail != null && !mail.isEmpty()) {
            info.setMail(mail);
        }
        if (birth != null && !birth.isEmpty()) {
            info.setBirth(LocalDate.parse(birth));
            LocalDate now = LocalDate.now();
            LocalDate Birth = LocalDate.parse(birth,
                    DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            int age = Birth.until(now).getYears();
            info.setAge(age);
        }
        loginInfoDao.updateLoginInfo(info);
        request.getSession().setAttribute("loginInfo", info);
        request.setAttribute("successMessage", "修改成功");
        request.getRequestDispatcher("more.jsp").forward(request, response);

    }
}
