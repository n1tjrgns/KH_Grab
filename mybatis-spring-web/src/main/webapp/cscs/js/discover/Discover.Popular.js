/*******
 * POPULAR
 * */
var Popular = (function(){
    var $listShareBtns, $listBg;
    var $isAddList = false;
    var $popular_page = 1;

    var $self = {
        init:function(){
            $self.setList();
            Popular.$popular_page=1;
            var categoryBtns = $("#category>a");

            categoryBtns.click(function(){
                $("#category>a").removeClass("active");
                $(this).addClass("active");
            })

        },
        setList:function(){
            $self.setListBtns();
            $self.setListInMotion();
        },
        setListBtns:function(){
            var listOverBtn = $(".list-box");
            var addBtns = $(".add-btn>a");
            var smallShareBtns = $(".small-share-btns>a");
            var shareBtn = $(".share-btns>.share");
            var likeBtn = $(".share-btns>.dibs");

            listOverBtn.off("mouseenter").off("mouseleave").off("click");
            listOverBtn.on("mouseenter", function(){
                $listShareBtns = $(this).find(".share-btns");
                $listBg = $(this).find(".list-bg");
                TweenMax.to($listShareBtns, 0.5, {height:40, ease:Quint.easeOut});
                TweenMax.to($listBg, 0.7, {scale:1.2, ease:Cubic.easeOut});
            }).on("mouseleave", function(){
                TweenMax.to($listShareBtns, 0.3, {height:0, ease:Quint.easeOut});
                TweenMax.to($listBg, 0.5, {scale:1, ease:Cubic.easeOut});
            }).on("click", function(){
            	var keyValue = $(this).find(".list-contents>.list-contents-ul>.add-btn").attr("key-value");
            	Popup.$keyValue = keyValue;
                Popup.detailPopupShowHide(true);
            })

            //버킷리스트 추가 버튼
            addBtns.off("click");
            addBtns.on("click", function(){
                var keyValue = $(this).attr("key-value");
           	 
            	if(isLogin == false){
            		setHistory();				 
            		$("#_returnURL_").val("/discover/popular.do?search_param9="+keyValue);
            		login.showPop('pop_login',keyValue);
            	}else{
            	//alert("로그인 체크 해야 한다."+isLogin);
            		
                    var self = $(this);
                    var listBox = self.parent().parent().parent().parent();
                    var getImage = listBox.find(".list-bg>.list-img").attr("src");
	            	var shareImage = listBox.find(".list-bg>.list-img").attr("shareimage");

                    var checked = self.parent().find(".list-add-checked");
	                var ttt = self.parent().parent();
	                var sns_share_ctgr = ttt.find(".category-name").text();
	                var sns_share_text = ttt.find(".title").text();

 


 
	                self.hide();
	                checked.show();
	                //ajax를 이용해서 DB에 insert한다.
	                //keyValue
	                Popup.saveItemBucket( keyValue,getImage);
	                //BucketListCart.plusBucketList(getImage);
	                $self.listAddMotion(listBox);
	                //alert(shareImage)
	                setSnsSareSaveData( keyValue,sns_share_ctgr, sns_share_text, shareImage);
	                
	                
            	}
            	return false;
            })

            shareBtn.off("click");
            shareBtn.on("click", function(){
                var scope = $(this).parent();
                $self.shareBtnMotion("in", scope);

                return false;
            })

            likeBtn.off("click");
            likeBtn.on("click", function(){

                var idea_id = $(this).attr("key-value");
                
                Popup.saveItemLike(idea_id);

                return false;
            })

            smallShareBtns.off("click");
            smallShareBtns.on("click", function(){
                var idx = $(this).index();
                var key = $(this).parent().attr("key-value")

                switch (idx){
                    case 0 : //페이스북
                        Popup.directShareSnsSmallButtn('facebook',key);

                        break;
                    case 1 : //카카오스토리
                        Popup.directShareSnsSmallButtn('kakaostory',key);

                        break;
                    case 2 : //트위터
                        Popup.directShareSnsSmallButtn('twitter',key);

                        break;
                    case 3 : //닫기
                        var scope = $(this).parent().parent();
                        $self.shareBtnMotion("out", scope);
                        break;
                }
                return false;
            })
        },
        setListInMotion:function(){
            var listBox = $(".list-box");
            var len = listBox.size();

            for(var i = 0; i < len; ++i){
                CustomTw.to(listBox.eq(i), 1.5, {delay:i*0.05, alpha:1, ease:Cubic.easeOut});
            }
        },
        listAddMotion:function(el){
            var twObj = el.find(".list-add-popup");
            TweenMax.to(twObj, 0.7, {css:{top:0}, ease:Cubic.easeOut});
            TweenMax.to(twObj, 0.7, {delay:1, css:{top:"-100%"}, ease:Cubic.easeIn});
        },
        shareBtnMotion:function(type, scope){
            var btnObjs = $(".small-share-btns>a", scope);
            var shareBtn = $(".share", scope);
            var smallShareBtn = $(".small-share-btns", scope);

            if(type == "in"){
                shareBtn.css("display", "none");
                smallShareBtn.css("display", "inline-block");
                TweenMax.set(btnObjs, {y:10, alpha:0});
                for(var i = 0, len = 4; i < len; ++i){
                    TweenMax.to(btnObjs.eq(i), 0.3, {delay:i*0.1, y:0, alpha:1, ease:Cubic.easeOut});
                }
            }else{
                TweenMax.to(btnObjs, 0.3, {alpha:0, ease:Cubic.easeOut});
                TweenMax.delayedCall(0.3, function(){
                    shareBtn.css("display", "inline-block");
                    smallShareBtn.css("display", "none");

                    TweenMax.set(shareBtn, {alpha:0});
                    TweenMax.to(shareBtn, 0.3, {alpha:1, ease:Cubic.easeOut});
                })
            }
        },

        //스크롤이 하단에 붙을때쯤 다음 리스트를 로딩한다
        scroll:function(){
            if($isAddList) return;
            var scrollTop = $(window).scrollTop();
            var containHeight = $("#container").height()-$(window).height();

            if(scrollTop > containHeight-100){
                if(GlobalData.isPopupOn) return;
                $isAddList = true;
                $self.addList();
            }
        },

        //리스트 추가
        addList:function(){
//            var appendStr = '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>' +
//                '<div class="list-box"><div class="list-bg"><img src="/_resource/images/discover/library/sample-img.jpg" alt="" /></div><div class="list-contents"><ul class="list-contents-ul"><li class="category-name en">TRAVEL</li><li class="title">하와이 와이키키에서 <br>서핑 마스터하기</li><li class="add-btn"><a href="#" class="en"><div class="plus"><img src="/_resource/images/discover/library/list-icon-plus.png" alt="" /></div><span>ADD</span></a><div class="list-add-checked"><img src="/_resource/images/discover/library/checked.png" alt="" /></div></li><li class="share-btns"><a href="#" class="dibs"><img src="/_resource/images/discover/library/list-icon1.png" alt="" /><span>찜하기</span></a><a href="#" class="share"><img src="/_resource/images/discover/library/list-icon2.png" alt="" /><span>공유하기</span></a></li></ul></div><div class="list-add-popup"><div class="list-add-container"><ul class="list-add-box"><li class="list-add-icon"><img src="/_resource/images/discover/library/list-icon3.png" alt="" /></li><li class="list-add-title en">ADD BUCKET LIST</li><li class="list-add-desc">버킷 리스트가 추가되었습니다.</li></ul></div></div></div>'
//
//            var prevListLen = $("#list-container>div").size(); //이전 리스트 개수
//            $("#list-container").append(appendStr);
//            $self.listUpdateReset(prevListLen);
        },
        //첫페이지 생성  
        addMainList:function(){
			if(!Popular.$popular_page) Popular.$popular_page=1;

            $("#list-loaing").show();

            //alert($("#_search_param1_").val())
         		$.ajax( // 화면의 데이타를 조회한다.
        				{
        					 
        					url:"/discover/popular_fragment_main_list.do",
        					dataType:"html",
        					type:"POST",
        					async:true,
        					data:{
         						curr_page:Popular.$popular_page,
         						search_param1:$("#_search_param1_").val()
        					},
        					success:function( data ) {
        						//alert(data);
        						
        			            var prevListLen = $("#list-container>div").size(); //이전 리스트 개수
        			            $("#list-container").html(data);
        			            //$self.listUpdateReset(prevListLen);
								$self.listUpdateReset(0);	 // 초기화 안하니 sessionstroage 후 하얗게 뜸
                                $("#list-loaing").hide();
        	 				},
        					error : function( e ) {
        						//alert("조회 오류\n"+e.error);
        					}
        				}
        			);	                
    
        },
        changeCategory:function(param){
        	$("#_search_param1_").val(param);
        	$("#list-container").html('');
        	Popular.addMainList();
       },
        //리스트 버튼 및 인모션 리셋
        listUpdateReset:function(prevListLen){
            var listLen = prevListLen;
            var updateLen = $("#list-container>div").size();

            //리스트 인모션
            for(var i = listLen; i < updateLen; ++i){
                CustomTw.set($("#list-container>div").eq(i), {y:50, alpha:0});
                CustomTw.to($("#list-container>div").eq(i), 0.8, {y:0, delay:(i-(listLen-1))*0.06, alpha:1, ease:Quint.easeOut});
                //CustomTw.to($("#list-container>div").eq(i), 1.5, {delay:(i-(listLen-1))*0.1, alpha:1, ease:Cubic.easeOut});
            }

            //리스트 버튼 리셋
            $isAddList = false;
            $self.setListBtns();
        },
        listImgLoadComplete:function(scope){
            TweenMax.to($(scope), 1, {delay:0.1, alpha:1});
        }
    }

    return $self;
})();

var isSaveCurrent = false;	//앱 화면 스크랩 예외처리
var isLoadCurrent = false;	//스크롤 하단 위치 ajax호출 방지

var setHistory = function() {
 
		isSaveCurrent = true;
																																																		 
		sessionStorage.setItem("url", location.pathname);

  
 		sessionStorage.setItem("scrollY", $(this).scrollTop());
  
}

var getHistory = function() {
 
  
 
	var scrollY = window.sessionStorage.getItem("scrollY");
 	//alert("size:"+ $("#list-container>div").size()+":"+scrollY+":page="+Library.$library_page);
	
	setTimeout((function(){ $(this).scrollTop(scrollY);}),200);
	
 
	window.sessionStorage.clear();
 
	isLoadCurrent = false;
}

$(function(){
    Popular.init();
	if(location.pathname==window.sessionStorage.getItem("url")) {
		isLoadCurrent = true;
		getHistory();
	}
    //sub navi activate
    $(".sub-navi-btns>a").eq(2).addClass("active");
})