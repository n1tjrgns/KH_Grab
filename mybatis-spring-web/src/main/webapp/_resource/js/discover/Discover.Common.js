
/*******
* DISCOVER IN MOTION
* */
var DiscoverInMotion = (function(){
    var $self = {
        init:function(){
            setTimeout($self.inMotion, 1000);
        },
        inMotion:function(){
            var whiteDimmed = $("#white-dimmed");
            CustomTw.to(whiteDimmed, 1, {alpha:0, onComplete:function(){ whiteDimmed.hide(); }});

            //members
            var membersBox = $(".h-members");
            membersBox.show();
            CustomTw.set(membersBox, {y:-30});
            CustomTw.to(membersBox, 0.7, {y:0, ease:Cubic.easeOut});

            //logo
            /*var logoBox = $(".h-logo-box");
            var logoLi = logoBox.find("li");
            logoBox.show();
            CustomTw.set(logoLi.eq(0), {x:10, alpha:0});
            CustomTw.set(logoLi.eq(1), {y:-40, rotation:-180});
            CustomTw.set(logoLi.eq(2), {x:-10, alpha:0});

            CustomTw.to(logoLi.eq(0), 0.8, {x:0, alpha:1, ease:Cubic.easeOut});
            CustomTw.to(logoLi.eq(1), 1, {y:0, rotation:0, ease:Back.easeOut});
            CustomTw.to(logoLi.eq(2), 0.8, {x:0, alpha:1, ease:Cubic.easeOut});*/

            //menu
            var menuBox = $(".h-menu");
            var menuDiv = menuBox.find("div");
            menuBox.show();
            CustomTw.set(menuDiv.eq(0), {y:5, alpha:0});
            CustomTw.set(menuDiv.eq(1), {alpha:0});
            CustomTw.set(menuDiv.eq(2), {y:-5, alpha:0});

            CustomTw.to(menuDiv.eq(0), 0.5, {y:0, alpha:1, ease:Cubic.easeOut});
            CustomTw.to(menuDiv.eq(1), 0.3, {alpha:1});
            CustomTw.to(menuDiv.eq(2), 0.5, {y:0, alpha:1, ease:Cubic.easeOut});

            //mask
            /*var maskDiv = $(".md-mask>div");
            CustomTw.to(maskDiv, 1.5, {height:0});*/
            var discoverMain = $("#md-discover");
            CustomTw.to(discoverMain, 1, {delay:1, height:293});

            //discover main heder contents
            var mdContents = $(".md-contents");
            mdContents.show();
            /*CustomTw.set(mdContents, {alpha:0});
            CustomTw.to(mdContents, 0.8, {delay:0.5, alpha:1, ease:Cubic.easeIn});*/

            //sub-navi
            var subNaviContainer = $(".sub-navi-container");
            subNaviContainer.show();
            CustomTw.set(subNaviContainer, {y:-51});
            CustomTw.to(subNaviContainer, 1, {y:0, ease:Cubic.easeOut, onComplete:function(){ $("#sub-navi").css("overflow", "visible"); }});

        },
        already:function(){
            var whiteDimmed = $("#white-dimmed");
            CustomTw.to(whiteDimmed, 1, {alpha:0, onComplete:function(){ whiteDimmed.hide(); }});

            if(!isCookieScrollAlready) {
                $("#md-discover").height(293);
                $(".md-bg").show();
            }
        }
    }

    return $self;
})();

/*******
* DISCOVER COMMON
* */
var DiscoverCommon = (function(){
    var $isFristMotion = true;

    var $self = {
        init:function(){
            if(isCookieScrollAlready) $isFristMotion = false, $self.firstMotionComplete();

            $self.addEvents();
            $self.setBtns();
            $self.setLoading();
        },
        addEvents:function(){
            $(window).bind("scroll", $self.scroll);
            setInterval($self.resize, 1000/5);
        },
        setBtns:function(){
            var bannerClose = $("#banner>.close-btn");
            var tagBtnsGroup = $(".tag-btns-group>a");

            bannerClose.click(function(){
                $("#banner").fadeOut(500);
                return false;
            })
            tagBtnsGroup.click(function(){
                var keyword = $(this).text();
                Search.directSearch(keyword);
                Popup.popupShowHide(null, false);
                return false;
            })
        },
        setLoading:function(){
            var opts={lines:7,length:9,width:3,radius:7,scale:.75,corners:1,color:"#00c5bc",opacity:.2,rotate:0,direction:1,speed:1,trail:60,fps:20,zIndex:2e9,className:"spinner",top:"50%",left:"50%",shadow:!1,hwaccel:!1,position:"absolute"};
            var target = document.getElementById('list-loaing')
            var spinner = new Spinner(opts).spin(target);
        },
        resize:function(){
            var posh = $("#container").height();

            if(GlobalData.isSearchOn) {
                if(GlobalData.isPopupOn) $self.popupTypeResize();
                else $self.searchTypeResize();
            }else if(GlobalData.isPopupOn) $self.popupTypeResize();
            else $("#guide-height-bg").height(posh);
        },
        searchTypeResize:function(){
            var footerHeight = 0;//41;
            var offsetTop = 148;
            var paddingGap = 100;
            var searchBarHeight = 112;
            var dumpBoxHeight = $(".dumpBannerBox").height();
            var resultHeight = $(".search-result").height();
            var windowHeight = $(window).height();
            var resultDivLen = $(".search-result>div").size();

            var resultViewHeight = windowHeight-(footerHeight+offsetTop+searchBarHeight+paddingGap);
            var guideViewHeight = resultHeight+searchBarHeight+footerHeight+offsetTop+paddingGap+dumpBoxHeight;


            var libLen = $(".search-result-library-contents>div").size();
            var feaLen = $(".search-result-featured-contents>div").size();


            if(libLen == 0 && feaLen == 0) $(".search-container").css("height", resultViewHeight);
            else $(".search-container").css("height", "auto");
            $("#guide-height-bg").height(guideViewHeight);
        },
        popupTypeResize:function(){
            $("#guide-height-bg").height($(window).height());
        },
        scroll:function(){
            if($isFristMotion){
                $isFristMotion = false;
                $(window).unbind("scroll");
                TweenMax.to($("#container"), 1, {css:{top:-288}, onComplete:$self.firstMotionComplete, ease:Cubic.easeOut});
                $.cookie("alreadyScroll", true);
            }else{
                var scrollTop = $(window).scrollTop();

                if(GlobalData.isSearchOn){
                    if(!GlobalData.isPopupOn) $(".search-result").css("margin-top", -scrollTop);
                    //if(GlobalData.isPopupOn) Popup.scrollMove(scrollTop);
                }else if(GlobalData.isPopupOn){
                }else{
                    $("#container").css("top", -scrollTop);
                    // TweenMax.to($("#container"), 0.5, {css:{top:-scrollTop}});

                    try{ Featured.scroll(); }catch(e){};
                    try{ Library.scroll(); }catch(e){};
                }

            }

            //가로 스크롤
            var posLeft = $(window).scrollLeft();
            $(".fixed-group").css("left", -posLeft);
        },
        firstMotionComplete:function(){
            $("#md-discover").hide();
            $("#sub-navi-empty-box").show();
            $("#container").css("top", 0);
            $("#sub-navi").css({"position":"fixed", "top":96, "left":0, "overflow":"visible"})
            $(".dumpBannerBox-subNavi").show();

            $(window).scrollTop(0);
            $(window).bind("scroll", $self.scroll);
        },
        searchToFirstInMotion:function(){
            if($isFristMotion) $self.scroll();
        },

        updateShareLikeBtns:function(page, type, id){
            if(type == "ADD"){
                $(".seq-"+id+" .change-add-check").show();
                $(".seq-"+id+" .change-add-btn").hide();
                $(".f-detail-small-share-btns").css("left", 125)
            }else{
                $(".seq-"+id+" .change-like-check").show();
                $(".seq-"+id+" .change-like-btn").hide();
            }
        }

    }

    return $self;
})();

/*
* SET COOKIE
* */
var isCookieScrollAlready = false;
if(!isMainAlready) $.cookie("alreadyScroll", null);
else {
    if($.cookie("alreadyScroll") == "true") isCookieScrollAlready = true;
}

/*$("a").click(function(){
    if($(this).attr("href") == "#") return false;
})*/

$(function(){
    if(isMainAlready) DiscoverInMotion.already();
    else DiscoverInMotion.init();
    DiscoverCommon.init();
    BucketListCart.init();
    //Popup.init();
})



var GlobalData = {
	    isPopupOn:false,
	    isSearchOn:false
	};

	var $btnMenu = $('.h-menu'),
	    $gnbMenu = $('.gnb_menu'),
	    $gnbMenuUl = $('.gnb_menu_ul'),
	    $gnbBg = $('.gnb_bg'),
	    winHei,
	    gapHei,
	    $dumpBox = $(".dumpBannerBox"),
	    $facebookBanner = $("#facebook-banner"),
	    minHei = false,
	    isBanner = false;                // 상단 배너 체크

	/*
	* BANNER SHOW HIDE
	* */

	if(location.href.indexOf('winterevent') > -1){
	    isBanner = false;
	}

	if(isBanner){
	    $facebookBanner.show();
	    $dumpBox.height(76);
	}else{
	    $facebookBanner.hide();
	    $dumpBox.height(0);
	}

	if(!isMainAlready) $.removeCookie("alreadyBanner1", {path:"/"});
	else {
	    if($.cookie("alreadyBanner1") == "true") {
	        $facebookBanner.hide();
	        $dumpBox.height(0);
	    }
	} 

	$(function(){
	    resizeGnb();
	    $(window).resize(function(){
	        resizeGnb();
	    });

	    $(window).scroll(function(){
	        if(location.href.indexOf("discover") == -1){
	            var posLeft = $(window).scrollLeft(); 
	            $(".fixed-group").css("left", -posLeft);
	        }
	    });

	    //상단 배너 닫기 버튼
	    var facebookBannerClose = $("#facebook-banner>.close-btn");
	    facebookBannerClose.click(function(){
	        resizeGnb();

	        TweenMax.to($facebookBanner, 0.5, {height:0});
	        TweenMax.to($dumpBox, 0.5, {height:0});
	        setTimeout(function(){ $(window).trigger("resize"); }, 500);
	        $.cookie("alreadyBanner1", true, {path:"/"});

	        $('.about_top').css("height",$(window).height()-$('#header').innerHeight()-$('#footer').innerHeight());
	        TweenMax.to($gnbMenu, 0.5, {height:(winHei - gapHei), ease:Cubic.easeOut});

	        if(winHei < 823){
	            $gnbMenuUl.find('a').height(((winHei - gapHei) - 174) / 4);
	        }else{
	            $gnbMenuUl.find('a').height(((winHei - gapHei)) / 4);
	        }

	        return false;
	    });

	    $btnMenu.click(function(){
	        resizeGnb();

	        if($(this).hasClass('active')){
	            $(this).removeClass('active');
	            TweenMax.to($gnbBg, 0.5, {autoAlpha:0, ease:Cubic.easeOut});
	            TweenMax.to($(".bucket-floating-menu"), 0.5, {y:0, autoAlpha:1, ease:Cubic.easeOut});
	            TweenMax.to($gnbMenu, 3, {right:-100+'%',opacity:0, autoAlpha:0, ease:Cubic.easeOut});
	        }else{
	            $(this).addClass('active');
	            TweenMax.to($gnbBg, 0.5, {autoAlpha:1, ease:Cubic.easeOut});
	            TweenMax.to($(".bucket-floating-menu"), 0.3, {y:110, autoAlpha:0, ease:Cubic.easeIn});
	            TweenMax.to($gnbMenu, 0.8, {right:0, opacity:1, autoAlpha:1, ease:Cubic.easeOut});
	        }
	    });
	});

	function resizeGnb(){
	    winHei = $(window).height();
	    gapHei = $('#header').height() - 1;

	    //winHei = winHei + $(".dumpBannerBox").height();

	    if(winHei < 823){
	        if($.cookie("alreadyBanner1")){
	            $gnbMenu.height(winHei - gapHei);
	            $gnbMenuUl.find('a').height(((winHei - gapHei) - 174) / 4);

	        }else{
	            $gnbMenu.height(winHei - (gapHei + $dumpBox.height()) + $dumpBox.height());
	            $gnbMenuUl.find('a').height(((winHei - (gapHei + $dumpBox.height()) + $dumpBox.height()) - 174) / 4);
	        }
	    }else{
	        if($.cookie("alreadyBanner1")){
	            $gnbMenu.height(winHei - gapHei);
	            $gnbMenuUl.find('a').height(((winHei - gapHei)) / 4);
	        }else{
	            $gnbMenu.height(winHei - (gapHei + $dumpBox.height()) + $dumpBox.height());
	            $gnbMenuUl.find('a').height(((winHei - (gapHei + $dumpBox.height()) + $dumpBox.height())) / 4);
	        }
	    }
	}

	function setGnb(idx){
	    var num = 0;

	    switch (idx){
	        case 0 : num = 0; break;
	        case 1 : num = 2; break;
	        case 2 : num = 3; break;
	        case 3 : num = 1; break;
	    }

	    $gnbMenuUl.find('li').eq(num).find('a').addClass('active');
	}

	/*
	* tagging
	* */


	/* google tagging */
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');


	if(location.href.indexOf("dnsnet.co.kr") > 0){
	    ga('create', 'UA-83799223-3', 'auto');
	}else{
	    ga('create', 'UA-83799223-1', 'auto');
	}
	ga('send', 'pageview');

	function eventTrack(wise,google){
	    if(wise != ''){
	        try{
//	                n_click_logging(wise);
	        }catch(e){}
	    }
	    if(google != ''){
	        ga('send', 'event', google, 'click');
	    }
	}

	function checkPopup(win){
	 

	    if (win == null || typeof(win) == "undefined" || (win == null)  ) 
	    {
	    	alert("팝업 차단 기능이 설정되어 공유할 수 없습니다.\n설정에서 차단 기능을 해제(팝업 허용)한 후 다시 참여해 주세요."); 
	    	return false;
	    } 
	    return true;
	}

