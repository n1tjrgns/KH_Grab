var Search = (function(){
    var $isSearchMode = false;
    var $prevScrollTop = 0;
    var $search_page = 1;
    var $search_page_featured = 1;
    var libraryCnt=0;

    var $self = {
        init:function(){
            $self.setBtns();

            $("#__search_param1__").keypress(function(event){
                if ( event.which == 13 ) {
                    if($(this).val() == ""){
                        alert("검색어를 넣으세요.");
                        return;
                    }
                    $(".search-result-title").html("'<span>"+$("#__search_param1__").val().replace(/</gi, "&lt;").replace(/>/gi, "&gt;")+"</span>'에 대한 검색 결과입니다.");
                    $(".search-result-library-contents").html("");
                    $(".search-result-featured-contents").html("");

                    Search.$search_page = 1;
                    Search.$search_page_featured = 1;
                    Search.searchData();
                    Search.searchDataFeatured(0);

//    				$("#search-more-btn-library").show();
//    				$("#search-more-btn-featured").show();
//    				$("#search-result-library").show();
//    				$("#search-result-featured").show();
                }
            });

        },
        setBtns:function(){
            var searchBtn = $(".sub-navi-search>a");

            searchBtn.click(function(){
                if(!$isSearchMode) $isSearchMode = true;
                else $isSearchMode = false;
                GlobalData.isSearchOn = $isSearchMode;

                $self.scrollTopUpdate();
                DiscoverCommon.searchToFirstInMotion();
                $self.searchIconOnOff();
                $self.scrollChange();
                return false;
            })

            $self.updateListBtns();
        },
        updateListBtns:function(){
            var libraryBtns = $(".search-library-contents .desc a");
            var featuredBtns = $(".search-featured-contents");
            var shareBtn = $(".share-btn");
            var smallShareBtn = $(".small-share-btns>a");
            var searchAddBtn = $(".search-add-btn");
            var searchLikeBtn = $(".search-like");

            libraryBtns.off("click");
            libraryBtns.on("click", function(){
                Popup.$keyValue = $(this).attr("key-value");
                Popup.detailPopupShowHide(true);
                return false;
            })

            featuredBtns.off("click");
            featuredBtns.on("click", function(){
                Popup.$keyValue = $(this).attr("key-value");

                Popup.gatePopupShowHide(true);
                return false;
            })

            shareBtn.off("click");
            shareBtn.on("click", function(){
                var scope = $(this).parent().parent().parent();
                $self.shareBtnMotion("in", scope);
                return false;
            })

            smallShareBtn.off("click");
            smallShareBtn.on("click", function(){
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
                        var scope = $(this).parent().parent().parent().parent();
                        $self.shareBtnMotion("out", scope);
                        break;
                }


                return false;
            })

            searchAddBtn.off("click");
            searchAddBtn.on("click", function(){
                var ideaId = $(this).attr("data-idea-id");
                var thumnail = $(this).attr("data-thumnail");
                Popup.directAddBucket(ideaId,thumnail);
                return false;
            })

            searchLikeBtn.off("click");
            searchLikeBtn.on("click", function(){
                var ideaId = $(this).attr("data-idea-id");

                Popup.saveItemLike(ideaId);

                return false;
            })
        },
        shareBtnMotion:function(type, scope){
            var btnObjs = $(".small-share-btns>a", scope);
            var shareBtn = $(".share-btn", scope);
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
        searchIconOnOff:function(){
            /*TweenMax.to($(".search-icon>div"), 0.2, {height:9, ease:Cubic.easeOut, onComplete:function(){
             if($isSearchMode){
             $(".icon-search").hide();
             $(".icon-close").show();
             }else{
             $(".icon-search").show();
             $(".icon-close").hide();
             }
             TweenMax.to($(".search-icon>div"), 0.2, {height:0, ease:Cubic.easeOut});
             }});*/
            if($isSearchMode){
                TweenMax.to($(".icon-search"), 0.5, {alpha:0});
                TweenMax.to($(".icon-close"), 0.5, {alpha:1});
            }else{
                TweenMax.to($(".icon-search"), 0.5, {alpha:1});
                TweenMax.to($(".icon-close"), 0.5, {alpha:0});
            }
        },
        scrollChange:function(){
            var searchObj = $("#search");
            if($isSearchMode){
                searchObj.stop().show();
                CustomTw.set(searchObj, {scale:1.1, alpha:0});
                CustomTw.to(searchObj, 0.5, {scale:1, alpha:1, ease:Cubic.easeOut});
            }else{
                CustomTw.to(searchObj, 0.5, {scale:1.1, alpha:0, ease:Cubic.easeOut, onComplete:function(){ searchObj.hide(); }});
            }
        },
        scrollTopUpdate:function(){
            var posScrollTop = 0;
            if($isSearchMode) {
                $prevScrollTop = $(window).scrollTop();
                $(window).scrollTop(0);
            }else {
                posScrollTop = $prevScrollTop;
                setTimeout(function(){$(window).scrollTop(posScrollTop);}, 300)
            }
        },
        directSearch:function(keyword){
            $(".search-input-box>input").val(keyword);
            if(!$isSearchMode) $(".sub-navi-search>a").trigger("click");

            Popup.popupShowHide(null, false);
            Popup.blackDimmedShowHide(false);
            var e = $.Event("keypress");
            e.which = 13;

            $("#__search_param1__").trigger(e);

            return ;

        },
        searchData:function( ){
            //alert($("#__search_param1__").val());
            $.ajax( // 화면의 데이타를 조회한다.
                {

                    url:"/discover/search_library_fragment_list.do",
                    dataType:"html",
                    type:"POST",
                    async:false,
                    data:{
                        curr_page:Search.$search_page,
                        search_param3:$("#__search_param1__").val()
                    },
                    success:function( data ) {
                        var arr = data.split("JJJJJJJJJKKKKKKK");
                        Search.libraryCnt = arr[0].trim();
                        if( Search.$search_page != 1 && arr[1].trim() == ""){
                            $("#search-more-btn-library").hide();

                            alert("더 이상 검색 결과가 없습니다.")
                        }else{

                            $("#search-result-library-title-cnt").html(arr[0].trim());
                            $(".search-result-library-contents").append(arr[1]);
                            $self.updateListBtns();
                            if( arr[0].trim() == 0 ){

                                $("#search-result-library-title-cnt").html("검색 결과가 없습니다.");
                            }

                            if( arr[0].trim() > 10 ){
                                $("#search-more-btn-library").show();
                            }else{
                                $("#search-more-btn-library").hide();

                            }
                        }
                    },
                    error : function( e ) {
                        //alert("조회 오류\n"+e.error);
                    }
                }
            );
        },
        moreData:function( ){
            Search.$search_page++;
            Search.searchData();
        },
        searchDataFeatured:function( param ){
            //alert($("#__search_param1__").val());
            $.ajax( // 화면의 데이타를 조회한다.
                {

                    url:"/discover/search_featured_fragment_list.do",
                    dataType:"html",
                    type:"POST",
                    async:false,
                    data:{
                        curr_page:Search.$search_page_featured,
                        search_param3:$("#__search_param1__").val()
                    },
                    success:function( data ) {
                        var arr = data.split("JJJJJJJJJKKKKKKK");
                        if( Search.$search_page_featured != 1 && arr[1].trim() == ""){
                            $("#search-more-btn-featured").hide();
                            alert("더 이상 검색 결과가 없습니다.")
                        }else{

                            $("#search-result-featured-title-cnt").html(arr[0].trim());
                            $(".search-result-featured-contents").append(arr[1]);
                            $self.updateListBtns();
                            if( arr[0].trim() > 10 ){
                                $("#search-more-btn-featured").show();
                            }else{
                                $("#search-more-btn-featured").hide();

                            }
                            if( arr[0].trim() == 0 ){

                                $("#search-result-featured-title-cnt").html("검색 결과가 없습니다.");
                            }

                            if( arr[0].trim() == 0 && Search.libraryCnt == 0){
                                $(".none_result").show();
                                $("#search-result-library").hide();
                                $("#search-result-featured").hide();
                            }else{
                                $(".none_result").hide();
                                $("#search-result-library").show();
                                $("#search-result-featured").show();
                            }
                        }
                    },
                    error : function( e ) {
                        //alert("조회 오류\n"+e.error);
                    }
                }
            );
        },
        moreDataFeatured:function( ){
            Search.$search_page_featured++;
            Search.searchDataFeatured(1);
        }

    }

    return $self;
})();

$(function(){
    Search.init();

})