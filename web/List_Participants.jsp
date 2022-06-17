<%-- 
    Document   : List_Participants.jsp
    Created on : Jun 11, 2022, 2:40:43 PM
    Author     : tvfep
--%>

<%@page import="java.util.List"%>
<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
        <title>F.E.M - List Participants</title>
    </head>

    <%List<UserDTO> listParticipants = (List) request.getAttribute("listParticipants"); 
      String eventID =(String) request.getAttribute("eventID"); 

    %>

    <body>

        <h2>Participants Table</h2>

        <table>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Gender</th>
            </tr>

            <%for (int i = 0; i < listParticipants.size(); i++) {
            %>

            <tr>
                <td><%=listParticipants.get(i).getName()%> </td>
                <td><%=listParticipants.get(i).getEmail()%></td>
                <td><%=listParticipants.get(i).getPhoneNumber()%></td>
                <td><%=listParticipants.get(i).getGender()%></td>

            </tr>
            <%
                }
            %>
        </table>
        <br>
        <a href="MainController?action=EventDetail&eventID=<%=eventID%>" class="brand-logo" style="font-size: 15pt; color: blue">
            Back!
        </a>

        <a href="#!" class="brand-logo" style="margin-left: 10pxD; font-size: 15pt; color: blue">
            Export To Excel!
        </a>
    </body>
</html>
