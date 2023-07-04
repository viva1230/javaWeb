<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>me</title>
    <% if (request.getSession().getAttribute("loginInfo") == null) { %> <%--获取session对象的值--%>
    <script>
        if (confirm("您还未登陆。")) {
            window.location.href = "index.jsp";
        } else {
            window.location.href = "index.jsp";
        }
    </script>
    <% } %>

    <% if (request.getAttribute("successMessage") != null) { %>
    <script>
        alert("${requestScope.get("successMessage")}");
    </script>
    <% } %>
    <style>
        div{
            width: 600px;
            height:1000px;
            margin: 0 auto;
        }
        .center{
            text-align: center;
        }
        .index{
            font-family: 'Times New Roman', Times, serif;
            font-style: italic;
            color: rgb(15, 56, 167);
        }
        body{
            background-image: url(assets/images/background.jpg);
        }
    </style>
</head>
<body>

<div>
    <table border="1" width="600" height="100">
        <h1 style="font-weight: bold" class="center" >Information</h1>
        <thead>
        <tr>
            <td class="index">type</td><!-- 信息类型 -->
            <td>content</td><!-- 具体内容 -->
        </tr></thead>

        <tbody>
        <tr> <!-- 用户名-->
            <td class="index">user_name</td>
            <td>${sessionScope.get("loginInfo").name}</td>
        </tr>
        <tr> <!-- 用户id-->
            <td class="index">user_id</td>
            <td>${sessionScope.get("loginInfo").id}</td>
        </tr>
        <tr> <!-- 年龄-->
            <td class="index">age</td>
            <td>${sessionScope.get("loginInfo").age}</td>
        </tr>
        <tr> <!-- 生日-->
            <td class="index">birth</td>
            <td>${sessionScope.get("loginInfo").birth}<input type="button" value="modify" onclick="modifyBirth()"></td>
        </tr>
        <tr> <!-- 密码-->
            <td class="index">password</td>
            <td>${sessionScope.get("loginInfo").psw}<input type="button" value="modify" onclick="modifyPsw()"></td>
        </tr>
        <tr> <!-- 邮箱-->
            <td class="index">mail</td>
            <td>${sessionScope.get("loginInfo").mail} <input type="button" value="modify"  onclick="modifyMail()"></td>   <!-- 修改邮箱 -->
        </tr>

        </tbody>
        <tfoot>
        </tfoot>
    </table>
    <br>
    <a style="text-align: center" href="commentController?type=all" target="_blank">Click to find What u HAVE said?
    </a>
    <div style="display: none">
        <form id="form" action="loginInfoController" method="post">
            <input type="hidden" name="type" value="update">
            <input type="text" id="psw" name="psw">
            <input type="text" id="mail" name="mail">
            <input type="text" id="age" name="age">
            <input type="text" id="birth" name="birth">
            <input type="submit">
        </form>
    </div>
</div>
<script>
    function modifyPsw() {
        var psw = prompt("请输入您的新密码：", "");
        if (psw != null && psw != "") {
            // 如果用户输入了姓名，则提交表单
            document.getElementById("psw").value = psw;
            document.getElementById("form").submit();
        }
    }

    function modifyMail() {
        var mail = prompt("请输入您的新邮箱：", "");
        if (mail != null && mail != "") {
            // 如果用户输入了姓名，则提交表单
            document.getElementById("mail").value = mail;
            document.getElementById("form").submit();
        }

    }
    function modifyBirth() {
        var birth = prompt("请输入您的生日：", "");
        if (birth != null && birth != "") {
            // 如果用户输入了生日，则提交表单
            document.getElementById("birth").value = birth;
            document.getElementById("form").submit();
        }
    }
</script>
</body>
</html>
