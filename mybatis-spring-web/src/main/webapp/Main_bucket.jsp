<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
<title>Grab</title>
<meta property="og:url" content="https://localhost/Grap_UI/">
<meta property="og:title" content="Grab (추억 한 그랩)">
<meta property="og:type" content="website">
<meta property="og:image" content="_resource/image/logo.jpg">
<meta property="og:description" content="당신의 추억을 그랩하세요">
<meta name="description" content="당신의 추억을 그랩하세요">
<link rel="shortcut icon" type="image/x-icon" href="https://www.lifeplus.co.kr/_resource/_web/images/favicon2.ico?1" />
<link rel="stylesheet" type="text/css" href="_resource/_web/css/common.css">
<script src="_resource/js/vendor/jquery-1.9.1.min.js"></script>
<script src="_resource/js/vendor/TweenMax.min.js"></script>
<script src="_resource/_web/js/common.js"></script>
    <link rel="stylesheet" type="text/css" href="_resource/_web/css/service_detail.css">
    <script>
        var rootDomain			= "https://www.lifeplus.co.kr";
        var resourceDomain		= "https://www.lifeplus.co.kr/_resource";
        var cdnDomain		= "https://www.lifeplus.co.kr/_resource";
        var menuCd		= "null";
    </script>
</head>
<body>

<jsp:include page="navi-header.jsp"></jsp:include>

<script>
	$('.nowMove').click(function(){
		localStorage.removeItem('search');
		localStorage.removeItem('sTop');
		localStorage.removeItem('page');
		localStorage.removeItem('order');
		localStorage.removeItem('value');
		localStorage.removeItem('back');
	});
</script>

<div id="wrap" class="service_wrap">

    <div class="pop_alert">
        <a href="javascript:service.closePop();" class="btn_close"></a>
        <div class="title">업데이트 예정입니다.</div>
        <a href="javascript:service.closePop();" class="btn_confirm">확인</a>
    </div>
    <div class="section_top">
        <div class="title_text mot5">
            삶을 보다 풍요롭게 하는 <span class="en">Grab</span>의 가치를<br>
            다양한 상품 및 서비스로 경험해 보세요.
        </div>
        <div class="scroll_text mot5">
            <span class="en">Grab Service</span>
        </div>
    </div>
    <div class="section_service">
        <div class="white_bg"></div>
        <div class="section_box_wrap active">
            <div class="section_box in_none mot5 active">
                <a href="javascript:void(0);" class="dim_a mot3"></a>
                <div class="service_box active page1">
                    <div class="bg_top bg1">
                        <div class="title_box mot4">
                            <div class="title">
                                <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/service_logo1.png" alt=""/>
                                <a href="Main" class="btn_back">
                                    <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/btn_back_off.png" class="off mot2" alt=""/>
                                    <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/btn_back_on.png" class="on mot2" alt=""/>
                                </a>
                            </div>
                            <div class="text">
                                <div class="short mot2">
                                    당신의 삶이 아름다운 색으로<br>
                                    물들 수 있도록<br>
                                    다양한 <span>Bucket List</span>를<br>
                                    삶에 더해보세요.
                                </div>
                                <div class="long mot3">
                                    <span class="en">Grab</span>는 평범한 우리의 일상이 다채롭게 물들 수 있도록, 당신의 가슴을 뛰게 하는 버킷리스트를 제공합니다.<br>
                                    2017 iF 디자인 어워드 커뮤니케이션 부분 디자인 본상과 웹 어워드 코리아 2017 고객지원 / 서비스 부문 통합대상에 빛나는<br>
                                    Bucket List 사이트에서 약 1천가지의 버킷리스트를 확인해보세요.<br>
                                    꿈꾸는 것 만으로도 내 안의 영감을 깨우는 <span class="en">Grab</span>의 가치를 지금 경험해 보세요.
                                </div>
                                <div class="btn_area mot3">
                                    <a href="Bucket_main" target="_blank" class="btn_dir_go mot2">
                                        Bucket List 바로가기
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page_box">
                        <div class="page mot5">
                            <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/page1.jpg" alt=""/>
                        </div>
                    </div>
                    <div class="view_box">
                        <h2>
                            Grab <span>Bucket List</span>를 즐기는 방법
                        </h2>
                        <h3>당신의 가슴을 뛰게 할 <span>Bucket List</span> 를 발견하고 삶에 색을 더해보세요.</h3>
                        <ul class="view_ul">
                            <li>
                                <div class="title">탐색해보세요</div>
                                <div class="sub_txt en">EXPLORE</div>
                                <div class="ico">
                                    <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/page1_ico1.jpg" alt=""/>
                                </div>
                                <div class="text">
                                    <span class="en">Grab Bucket List</span>가 제안하는<br>
                                    다양한 아이디어들을 탐색해보고
                                </div>
                            </li>
                            <li>
                                <div class="title">발견해보세요</div>
                                <div class="sub_txt en">DISCOVER</div>
                                <div class="ico">
                                    <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/page1_ico2.jpg" alt=""/>
                                </div>
                                <div class="text">
                                    나의 가슴을 뛰게 만드는<br>
                                    <span class="en">Bucket List</span>를 발견해보세요.
                                </div>
                            </li>
                            <li>
                                <div class="title">공유해보세요</div>
                                <div class="sub_txt en">SHARE</div>
                                <div class="ico">
                                    <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/page1_ico3.jpg" alt=""/>
                                </div>
                                <div class="text">
                                    자랑하고 싶고, 함께하고 싶은<br>
                                    <span class="en">Bucket List</span>를 친구들과 공유해보고
                                </div>
                            </li>
                            <li>
                                <div class="title">삶에 더해보세요</div>
                                <div class="sub_txt en">ADD</div>
                                <div class="ico">
                                    <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/page1_ico4.jpg" alt=""/>
                                </div>
                                <div class="text">
                                    나의 <span class="en">Bucket List</span>에 +<span class="en">Add</span>하는 순간,<br>
                                    <span class="en">Life</span>+는 시작됩니다.
                                </div>
                            </li>
                        </ul>
                        <a href="Bucket_main" class="btn_go" target="_blank">
                            <span class="en">BUCKET LIST</span> 바로가기
                        </a>
                        <a href="javascript:void(0);" class="btn_top">
                            <img src="https://www.lifeplus.co.kr/_resource/_web/images/service/detail/btn_top.jpg" alt="TOP"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="navi-footer.jsp"></jsp:include>


<script src="https://www.lifeplus.co.kr/_resource/_web/js/service_detail.js"></script>
</body>
</html>