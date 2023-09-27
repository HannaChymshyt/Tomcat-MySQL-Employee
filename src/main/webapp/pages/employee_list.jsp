<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employees</title>
    <style>
        .greenButton {
          display: inline-block;
          padding: 15px 25px;
          font-size: 24px;
          cursor: pointer;
          text-align: center;
          text-decoration: none;
          outline: none;
          color: #fff;
          background-color: #4CAF50;
          border: none;
          border-radius: 15px;
          box-shadow: 0 9px #999;
        }

        .greenButton:hover {background-color: #3e8e41}

        .greenButton:active {
          background-color: #3e8e41;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
        }
        .redButton {
           display: inline-block;
           padding: 15px 25px;
           font-size: 24px;
           cursor: pointer;
           text-align: center;
           text-decoration: none;
           outline: none;
           color: #fff;
           background-color: #e4685d;
           border: none;
           border-radius: 15px;
           box-shadow: 0 9px #999;
         }

         .redButton:hover {background-color: #eb675e}

         .redButton:active {
           background-color: #3e8e41;
           box-shadow: 0 5px #666;
           transform: translateY(4px);
         }
    </style>
</head>
<body>
    <center>
        <h1>Employees</h1>
        <h3>
        <!-- <a href="<%=request.getContextPath()%>/new">Add New Employee</a> -->
            <a href="<%=request.getContextPath()%>/new" class="greenButton">Add Employee</a>
            &nbsp;&nbsp;&nbsp;
            <a href="<%=request.getContextPath()%>/list">List Employees</a>
        </h3>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Employees</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Position</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="employee" items="${listEmployee}">
                <tr>
                    <td><c:out value="${employee.id}" /></td>
                    <td><c:out value="${employee.name}" /></td>
                    <td><c:out value="${employee.position}" /></td>
                    <td><c:out value="${employee.phone}" /></td>
                    <td>
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${employee.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${employee.id}' />" class="redButton">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>