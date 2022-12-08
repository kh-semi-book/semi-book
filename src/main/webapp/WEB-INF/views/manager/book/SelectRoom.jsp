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
            width: 500px;
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
                <th>룸타입</th>
                <th>전망타입</th>
                <%-- <th>체크인</th>
                <th>체크아웃</th> --%>

            </tr>
            <tr>
                <td>${inputRoom.roomName}</td>
                <td>${inputRoom.roomViewName}</td>
                <%-- <td>2022-12-25</td>
                <td>2022-12-31</td> --%>
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

			<c:if test="${not empty roomList}">
            <c:forEach var="Room" items="${roomList}"  varStatus="index">
            <tr>
                <td>${index.count}</td>
                <td>${Room.roomNum}</td>
                <td>${Room.roomName}</td>
                <td>${Room.roomViewName}</td>
                <c:choose>
                    <c:when test="${Room.roomName != inputRoom.roomName || Room.roomViewName != inputRoom.roomViewName}">
                        <c:set var="disabled1" value="disabled"/>
                    </c:when>
                    <c:otherwise>
                        <c:set var="disabled1" value=""/>
                    </c:otherwise>
                </c:choose>

                <td><button class="chooseRoomBtn" ${disabled1} >선택</button></td>
            </tr>
                                   
            </c:forEach>
            </c:if>
            <c:if test="${empty roomList}">
            <tr>
            	<td colspan="5" style="width:1000px">
           			 조회된 방이 없습니다. 
            	</td>
            </tr>
            </c:if>

        </table>

    </div>
   

    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
   <script src="/resources/js/manager/selectRoom.js"></script>
</body>
</html>