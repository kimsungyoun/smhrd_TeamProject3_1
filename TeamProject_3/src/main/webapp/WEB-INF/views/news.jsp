<%--
  Created by IntelliJ IDEA.
  User: user07
  Date: 2023-09-19
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
body {
    padding:1.5em;
    background: #f5f5f5
}

table {
    border: 1px #a39485 solid;
    font-size: .9em;
    box-shadow: 0 2px 5px rgba(0,0,0,.25);
    width: 100%;
    border-collapse: collapse;
    border-radius: 5px;
    overflow: hidden;
}

th {
    text-align: left;
}

thead {
    font-weight: bold;
    color: #fff;
    background: #6A24FE;
}

td, th {
    padding: 1em .5em;
    vertical-align: middle;
}

td {
    border-bottom: 1px solid rgba(0,0,0,.1);
    background: #fff;
}

a {
    color: #73685d;
}

@media all and (max-width: 768px) {

    table, thead, tbody, th, td, tr {
        display: block;
    }

    th {
        text-align: right;
    }

    table {
        position: relative;
        padding-bottom: 0;
        border: none;
        box-shadow: 0 0 10px rgba(0,0,0,.2);
    }

    thead {
        float: left;
        white-space: nowrap;
    }

    tbody {
        overflow-x: auto;
        overflow-y: hidden;
        position: relative;
        white-space: nowrap;
    }

    tr {
        display: inline-block;
        vertical-align: top;
    }

    th {
        border-bottom: 1px solid #a39485;
    }

    td {
        border-bottom: 1px solid #e5e5e5;
    }


}
</style>
<head>
    <title>뉴스게시판</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회수</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>리소스</td>
        <td>작성자</td>
        <td>01/13/1979</td>
        <td>5,000</td>
    </tr>
    <tr>
        <td>Johnny</td>
        <td>Smith</td>
        <td>(713) 584-9614</td>
        <td>2</td>
        <td>06/09/1971</td>
    </tr>
    <tr>
        <td>Susan</td>
        <td>Johnson</td>
        <td>(713) 847-1124</td>
        <td>3</td>
        <td>08/25/1965</td>
    </tr>
    <tr>
        <td>Tracy</td>
        <td>Richardson</td>
        <td>(713) 245-4821</td>
        <td>4</td>
        <td>03/13/1980</td>
    </tr>
    </tbody>
</table>
</body>
</html>
