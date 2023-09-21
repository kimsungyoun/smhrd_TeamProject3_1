<%--
  Created by IntelliJ IDEA.
  User: user07
  Date: 2023-09-19
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    #viewport {
        padding-left: 250px;
        -webkit-transition: all 0.5s ease;
        -moz-transition: all 0.5s ease;
        -o-transition: all 0.5s ease;
        transition: all 0.5s ease;
    }
    /* Sidebar Styles */

    #sidebar {
        z-index: 1000;
        position: fixed;
        left: 250px;
        width: 200px;
        height: 100%;
        margin-left: -250px;
        overflow-y: auto;
        background: #37474F;
        -webkit-transition: all 0.5s ease;
        -moz-transition: all 0.5s ease;
        -o-transition: all 0.5s ease;
        transition: all 0.5s ease;
    }

    #sidebar header {
        background-color: #263238;
        font-size: 20px;
        line-height: 52px;
        text-align: center;
    }

    #sidebar header a {
        color: #fff;
        display: block;
        text-decoration: none;
    }

    #sidebar header a:hover {
        color: #fff;
    }

    #sidebar .nav{

    }

    #sidebar .nav a{
        background: none;
        border-bottom: 1px solid #455A64;
        color: #CFD8DC;
        font-size: 14px;
        padding: 16px 24px;
    }

    #sidebar .nav a:hover{
        background: none;
        color: #ECEFF1;
    }

    #sidebar .nav a i{
        margin-right: 16px;
    }

    .resized-image {
        width: 150px; /* 원하는 가로 크기 */
        height: 100px; /* 원하는 세로 크기 */
    }

</style>
<head>
    <title>side bar</title>
</head>
<body>

<div id="viewport">
    <!-- Sidebar -->
    <div id="sidebar">
        <header>
            <img src="../../images/ReSource.png" alt="ReSource" class="resized-image">
        </header>
        <ul class="nav">
            <li>
                <a href="#">
                    <i class="zmdi zmdi-view-dashboard"></i> 마이페이지
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="zmdi zmdi-link"></i> 분석 차트
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="zmdi zmdi-widgets"></i> 뉴스 게시판
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="zmdi zmdi-calendar"></i> 고객센터
                </a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
