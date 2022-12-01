<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>미디어 라이브러리</title>

    <link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

     <div id="top-photo"></div>
    <div id="header-top-media-main">
        <div id="top-menu">
            <a href="#">HOME</a>><a href="#">MEDIA LIBRARY</a>
        </div>
        <div id="info-title">
            미디어 라이브러리
        </div>

         <iframe id="bigVideo" width="1000px" height="550px" src="https://www.youtube.com/embed/e8QNxsnYC58" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <!-- <iframe id="bigVideo" width="1000px" height="550px" src="https://www.youtube.com/embed/e8QNxsnYC58?autoplay=1&mute=1 " title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
        <!-- 자동재생 추가 -->
        <div>

        </div>

        <div id="media-youtube">
            <div class="media-youtube-link"><img src="/resources/image/mediaLibrary/media_thumb1.jpeg" alt="https://www.youtube.com/embed/e8QNxsnYC58"><span class="playLogoDefault">⏵</span></div>
            <div class="media-youtube-link"><img src="/resources/image/mediaLibrary/media_thumb2.jpeg" alt="https://www.youtube.com/embed/baJClWIqtUk"><span class="playLogoDefault">⏵</span></div>
            <div class="media-youtube-link"><img src="/resources/image/mediaLibrary/media_thumb3.jpeg" alt="https://www.youtube.com/embed/8n-7F5B6NA4"><span class="playLogoDefault">⏵</span></div>
            <div class="media-youtube-link"><img src="/resources/image/mediaLibrary/media_thumb4.jpeg" alt="https://www.youtube.com/embed/RlKPXS6RQ_g"><span class="playLogoDefault">⏵</span></div>
            <div class="media-youtube-link"><img src="/resources/image/mediaLibrary/media_thumb5.jpeg" alt="https://www.youtube.com/embed/QdaVkZNfIbw"><span class="playLogoDefault">⏵</span></div>
            <div class="media-youtube-link"><img src="/resources/image/mediaLibrary/media_thumb6.jpeg" alt="https://www.youtube.com/embed/66CEGbqrvzY"><span class="playLogoDefault">⏵</span></div>
        </div>
    </div>


    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="/resources/js/mediaLibrary.js"></script>


</body>
</html>