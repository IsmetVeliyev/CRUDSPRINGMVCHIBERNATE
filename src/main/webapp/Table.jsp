<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Daos.UserDaoCls" %>
<%@ page import="Model.User" %>
<!DOCTYPE html>
<html>
    <head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
          .tableStyle{
                border-collapse: collapse;
                font-size: 0.9em;
                width: 50%;
                margin-left: auto;
                margin-right: auto;
                     }

          .tableStyle thead th {
               background-color: #009879;
               color:#ffff;
               text-align: left;
               font-weight: bold;
                     }


          .tableStyle th,.tableStyle td{
              padding: 12px 15px;
           }

          .tableStyle tbody tr{
               border-bottom: 1px solid #dddddd;
            }

          .tableStyle tbody tr:nth-of-type(even){
               background-color: aliceblue;
            }
        </style>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="table.css"></link>
    </head>
    <body>
          <table class="tableStyle">
            <thead>
                <th>İsim</th>
                <th>Soyİsim</th>
                <th>Rolu</th>
                <th>yaş</th>
                <th><th>
            </thead>
            <tbody>
              <% ArrayList<User> users = (ArrayList<User>) request.getAttribute("users");
                if(users!=null){
                	for(User user:users){
                %>
                  <tr>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%=user.getRole() %></td>
                    <td><%= user.getAge() %></td>
                    <td>
                    <form action="stu_delete" method=get>
                       <input type="hidden" value=<%=user.getId()%> name="id">
                       <input type="submit" class="btn btn-danger" value="delete">
                    </form>
                    <form action="index.jsp" method="get">
                       <input type="hidden" name="id" value="<%= user.getId() %>">
                       <input type="hidden" name="name" value="<%= user.getName() %>">
                       <input type="hidden" name="email" value="<%= user.getEmail() %>">
                       <input type="hidden" name="role" value="<%= user.getRole() %>">
                       <input type="hidden" name="age" value="<%= user.getAge() %>">
                        <input type="submit" class="btn btn-warning" value="Update">
                   </form>
                    <td>
                  <tr>
                 <%}} %>
                
            </tbody>
          </table>
          <div class="d-flex justify-content-center my-2">
            <a href="index.jsp" class="btn btn-primary">Ekle</a>
          </div>
    </body>
</html>