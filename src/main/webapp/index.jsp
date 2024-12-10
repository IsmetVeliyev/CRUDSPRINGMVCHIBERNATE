<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
<%String id = request.getParameter("id"); 
  String name=request.getParameter("name");
  String email= request.getParameter("email");
  String role = request.getParameter("role");
  String age = request.getParameter("age");
  
%>
    <title>Register Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }
        form {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        form input[type="text"] {
            width: calc(100% - 20px);
            margin-bottom: 15px;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        form button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        form button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Student Registration</h1>
    <%if(id!=null){ %>
     <form action="stu_update" method="POST">
        <input type="hidden" name="id" value="<%=id %>">
        <input type="text" name="name" placeholder="Name" value="<%=name %>">
        <input type="text" name="email" placeholder="Email" value="<%=email %>">
        <input type="text" name="role" placeholder="Role" value="<%= role%>">
        <input type="text" name="age" placeholder="Age" value="<%=age %>">
        <button type="submit">Update Student</button>
    </form>
    <%}else{ %>
    <form action="add_stu" method="POST">
        <input type="text" name="name" placeholder="Name">
        <input type="text" name="email" placeholder="Email">
        <input type="text" name="role" placeholder="Role">
        <input type="text" name="age" placeholder="Age">
        <button type="submit">Add Student</button>
    </form>
    
    <%} %>
</body>
</html>
