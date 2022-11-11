<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <div id="top-photo">
        사진자리
    </div>
    <div id="cmm-main">
        <div id="top-menu">
            <a href="#">HOME</a>><a href="#">HIDDEN CLIFF</a>><a href="#">공지사항</a>
        </div>
        <div id="info-title">
            공지사항
        </div>
        
        <div id="cmm-contant-area">
            <a href="#" name="left">
                <div id="right-area" name="left">
                    <label for="left">
                        <img src="/img/cmm-content-1.jpeg" width="485px" height="335px">
                        <div class="text-area">
                            <div class="cmm-main-title">히든 클리프 이용 안내</div>
                            <div class="cmm-sub-title">히든 클리프의 모든 것</div>
                        </div>
                    </label>
                </div>
            </a>

            <a href="#" name="right">
                <div id="right-area" name="right">
                    <label for="right">
                        <img src="/img/cmm-content-2.jpeg" width="485px" height="335px">
                        <div class="text-area">
                            <div class="cmm-main-title">코로나19 관련 이용 안내</div>
                            <div class="cmm-sub-title">영업장 별 이용 안내</div>
                        </div>
                    </label>
                </div>
            </a>
        </div>

        <div id="other-page"><a href="#"><<</a><a href="#"><</a><a href="#">1</a><a href="#">></a><a href="#">>></a></div>
    </div>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>