<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="footer">
    

</div>
<%-- scope에 message 속성이 존재하는 경우 alert창을 이용해서 내용 출력 --%>
<c:if test="${not empty message}">
	<script>
		alert("${message}")
	</script>
	message 1회 출력 후 모든 scope 삭제
	<c:remove var="message" />
</c:if> 
