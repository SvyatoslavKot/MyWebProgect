<%@ page import="app.bankApp.Bank" %><%--
  Created by IntelliJ IDEA.
  User: NADEZHDA
  Date: 027 27.03.22
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Главноая</title>
</head>
<body>
<div>
    <%--
   встроенныё javaCod показывает последнего добавленного юзера
   --%>
    <%
        Bank bank = Bank.getInstance();
        String name = bank.getName();
        out.println("<p> Название банка"+name+"</p>");
    %>
    <div>
        <div>
            <h2>Login</h2>
        </div>
        <%--
       JavaCod
       --%>
        <%
            if (request.getAttribute("text")!= null) {
                out.println("<p> "+request.getAttribute("text")+"</p>");
            }else out.println("<p> Здравствуйте заполните форму </p>");
        %>
        <%--
       форма входа
       метод "post" отправляет пост-запрос в сервлет
       --%>
        <form method="post">
            <label>Name:<br />
                <input type="text" name="name"><br />
            </label>
            <label>Password:<br />
                <input type="password" name="pass"><br />
            </label>
            <%--
       кнопки type - submit отправляет пост запрос при нажатии на кнопку
       прописал "name" по нему в методе "doPost" отлавливал нажатие кнопки
       --%>
            <button name="enter"  type="submit">Submit</button>
            <button name="register" type="submit">register</button>

        </form>
    </div>
</div>
</body>
</html>
