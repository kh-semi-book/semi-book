<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        
        #popup{
            width:1000px;
            margin: auto;
        }

        #inputType{
            border: 1px solid black;
            border-collapse: collapse;
        }

        #inputType th,
        #inputType td{
            width: 250px;
            text-align: center;
            border: 1px solid black;
        }

        #outputRoom{
            margin-top: 30px;
            border: 1px solid black;
            border-collapse: collapse;
        }

        #outputRoom td{
            width: 350px;
            text-align: center;
            border: 1px solid black;
        }
    

    </style>
</head>
<body>

    <div id="popup">
        <table id="inputType">
            <tr>
                <th>전망타입</th>
                <th>룸타입</th>
                <th>체크인</th>
                <th>체크아웃</th>

            </tr>
            <tr>
                <td>${inputRoom.roomViewName}</td>
                <td>${inputRoom.roomName}</td>
                <td>2022-12-25</td>
                <td>2022-12-31</td>
            </tr>
        </table>

        <table id="outputRoom">
            <tr>
                <th>번호</th>
                <th>호수</th>
                <th>전망타입</th>
                <th>룸타입</th>
                <th>선택</th>
            </tr>

            <c:forEach var="Room" items="${roomList}">
            <tr>
                <td>1</td>
                <td>${Room.roomNum}</td>
                <td>${Room.roomName}</td>
                <td>${Room.roomViewName}</td>
                <td><button class="chooseRoomBtn">선택</button></td>
            </tr>
                                   
            </c:forEach>

        </table>

    </div>
   

    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
   <script src="/resources/js/manager/select.js"></script>
</body>
</html>