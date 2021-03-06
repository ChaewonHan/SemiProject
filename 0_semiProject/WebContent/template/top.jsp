<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
   
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/resources/style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-content">
            <h3>Cooking in progress..</h3>
            <div id="cooking">
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div id="area">
                    <div id="sides">
                        <div id="pan"></div>
                        <div id="handle"></div>
                    </div>
                    <div id="pancake">
                        <div id="pastry"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area bg-img bg-overlay" style="background-image: url(/resources/img/bg-img/header.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <div class="col-12 col-sm-6">
                      
                    </div>
                    <div class="col-12 col-sm-6 col-lg-5 col-xl-4">
                        <!-- Top Search Area -->
                        <div class="top-search-area">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Logo Area -->
        <div class="logo-area">
            <a href="/index.jsp"><img src="/resources/img/core-img/toplogo1.jpg" style="width:35%" alt=""></a>
        </div>

        <!-- Navbar Area -->
        <div class="bueno-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="buenoNav">
 
                      
   						 <!-- Toggler -->
                        <div id="toggler"><img src="/resources/img/core-img/toggler.png" alt=""></div>
                    
                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler ">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav center">
                                <ul>
                                    <li><a href="/index.jsp">Home</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">CookCook Recipe</a>
                                        <ul class="dropdown">
                                            <li><a href="/rBoard/RboardCategoryPage.jsp">Category Home</a></li>
                                            <li><a href="/RboardAllList.do?category=1">반찬</a></li>
                                            <li><a href="/RboardAllList.do?category=2">국 & 탕</a></li>
                                            <li><a href="/RboardAllList.do?category=3">찌개</a></li>
                                            <li><a href="/RboardAllList.do?category=4">밥 & 죽</a></li>
                                            <li><a href="/RboardAllList.do?category=5">면</a></li>
                                            <li><a href="/RboardAllList.do?category=6">디저트</a></li>
                                            <li><a href="/RboardAllList.do?category=7">비건</a></li>
                                            <li><a href="/RboardAllList.do?category=8">음료</a></li>
                                            <li><a href="/RboardAllList.do?category=9">기타</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="/noticeAllList.do">Notice</a></li>
                                    <li><a href="/mBoardList.do">Cook & Talk</a></li>
                                    <li><a href="/aBoardListServlet.do">Cook Q&A</a></li>
                                </ul>

                                <!-- Login/Register -->
                                <div class="login-area">
                                <c:choose>
									<c:when test="${not empty member}">
										<a href="/views/memberMyPage.jsp">[${member.getUserNickname()}]님의 마이페이지</a> &nbsp;&nbsp;
										<a href="/logout.do">Logout</a><br>
									</c:when>
									<c:otherwise>
	                                    <a href="/memberLogin.do">Login</a> &nbsp;&nbsp;
	                                    <a href="/views/memberJoin.jsp">Register</a>
	                                </c:otherwise>
	                            </c:choose>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->



    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="/resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="/resources/js/active.js"></script>
</body>

</html>