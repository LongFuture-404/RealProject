<%@ page import="com.example.realproject.entity.Users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
    Users userinfo = (Users)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title> 静态资源后台管理系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="bootcss/bootstrap.min.css">
    <script src="bootjs/bootstrap.min.js"></script>
    <style>
        *{
            font-size: 10px;
        }
    </style>
</head>
<body>
<!--头部-->
<header class="publicHeader" style="width: 100%;background-color:grey">
    <h1> 静态资源后台管理系统</h1>

    <div class="publicHeaderR">
        <div style="width: 50px;height: 50px;border-radius: 50%;overflow: hidden;margin-left: -100px;float: left">
            <td><img style="width: 65px;height: 65px;" src="${pageContext.request.contextPath}/imageLoad?phone=${userinfo.phone}"></td>
        </div>
        <span style="float: left" ><a href="login.jsp">退出</a></span>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2019年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian">
    <div class="left"></div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="${pageContext.request.contextPath}/UsersAdd.Handler" method="post" enctype="multipart/form-data">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <input type="hidden" name="Mphone"  value="${userinfo.phone}">
                <div class="">
                    <label for="uid">用户编码：</label>
                    <input type="text" name="uid" id="uid"/>
                    <span>*请输入用户编码，且不能重复</span>
                </div>
                <div>
                    <label for="name">用户名称：</label>
                    <input type="text" name="name" id="name"/>
                    <span >*请输入用户名称</span>
                </div>
                <div>
                    <label style="position:relative;width: 66px;left: 16%;box-shadow:1px 1px 1px #0a0a0a" class="btn btn-default" for="avatar">上传头像</label>
                    <input type="file" name="avatar" id="avatar" style="display:none;"/>
                </div>
                <div>
                    <label for="password">用户密码：</label>
                    <input type="text" name="password" id="password"/>
                    <span>*密码长度必须大于6位小于20位</span>
                </div>
                <div>
                    <label for="userRemi">确认密码：</label>
                    <input type="text" name="userRemi" id="userRemi"/>
                    <span>*请输入确认密码</span>
                </div>
                <div>
                    <label >用户性别：</label>
                    <select name="sex">
                        <option value="1">男</option>
                        <option value="0">女</option>
                    </select>
                    <span></span>
                </div>
                <div>
                    <label for="brithday">出生日期：</label>
                    <input type="date" name="brithday" id="brithday"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="phone">用户电话：</label>
                    <input type="text" name="phone" id="phone"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="address">用户地址：</label>
                    <input type="text" name="address" id="address"/>
                </div>
                <div>
                    <label >用户类别：</label>
                    <input type="radio" name="r_id" value="1"/>超级管理员
                    <input type="radio" name="r_id" value="2"/>普通管理员
<%--                    <input type="radio" name="type"/>普通用户--%>
                </div>
                <strong style="position: relative;left: 200px;font-size: 15px">${add_msg}</strong>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.jsp">返回</a>-->
                    <input type="submit" value="保存" onclick="history.back(-1)"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>
<script src="js/time.js"></script>
<script src="js/jquery.js"></script>
<script>
    $(function () {
        $(".left").load("common_pri.jsp");
    }) ;
</script>
</body>
</html>