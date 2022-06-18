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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <style>
            table {
                border-collapse: collapse;
                width: 60%;
                text-align: center;
                
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            tr{background-color: #f2f2f2; border-bottom: 1px solid white}

            th {
                background-color: #FC8272;
                color: white;
            }
            a:hover{
                
                opacity: 0.8;
            }
        </style>
        <title>F.E.M - List Participants</title>
    </head>

    <%List<UserDTO> listParticipants = (List) request.getAttribute("listParticipants");
        String eventID = (String) request.getAttribute("eventID");

    %>

    <body>
        <div style="text-align: center" >
            <h2 class="mb-3 mt-2" >Participants Table</h2>

            <table class="m-md-auto" style="border-radius: 10px;">
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
            <div class="mt-3">
                <a class="btn" href="MainController?action=EventDetail&eventID=<%=eventID%>" class="brand-logo" style="font-size: 15pt; color: white; background-color: #FC8272">
                    Back!
                </a>

                    <a class="btn"  href="#!" class="brand-logo" style="font-size: 15pt; color: white; background-color: #FC8272">
                    Export To Excel!
                </a> 
            </div>
        </div>
        <br>



    </body>
</html>
