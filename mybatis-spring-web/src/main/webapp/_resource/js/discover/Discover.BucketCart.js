/********
 * BUCKET LIST CART
 * */
var BucketListCart = (function(){
    var $listCount = 0;

    var $self = {
        init:function(){
            $self.setBtns();
        },
        setBtns:function(){
            var arrowBtnL = $("#bucket-list .arrow-btn-l"),
                arrowBtnR = $("#bucket-list .arrow-btn-r");

            var floatingBtn = $(".bucket-floating-menu>a");
            var bucketListClose = $(".bucket-list-close-btn>a");
            var shareBtn = $(".bucket-share>a");

            arrowBtnL.click(function(){ $self.listArrowChange("right"); return false; })
            arrowBtnR.click(function(){ $self.listArrowChange("left"); return false; })
            floatingBtn.click(function(){
            	if(isLogin == false){
            		$("#_returnURL_").val("/discover/library.do");
            		login.showPop('pop_login',"");
            	}else{
	                TweenMax.killDelayedCallsTo($self.close)
	                $self.open();
            	}
                return false;
            })
            bucketListClose.click(function(){ $self.close(); return false; })
            shareBtn.click(function(){ 
            	if(isLogin == false){
            		$("#_returnURL_").val("/discover/library.do");
            		login.showPop('pop_login',"");
            	}else{
            		//loadSnsShareData();
            		//Popup.sharePopupShowHide(true);
            		Popup.directShareSns('MYBUC','', '', webDomain+'/_resource/images/common/sns_share_img.jpg');
                    try{ BucketListCart.close();}catch(e){}
            		return false; 
            	}
            })
        },
        listArrowChange:function(type){
            var liContainer = $("#bucket-list .lists-container");
            var lis = liContainer.find("li");
            var lisLen = lis.size();
            lisLen = lisLen-4;
            if(lisLen <= 0) return;

            if(type == "left"){
                if($listCount == 0) $listCount = 0
                else $listCount--;
            }else{
                if($listCount == lisLen) $listCount = lisLen
                else $listCount++;
            }

            TweenMax.to(liContainer, 0.7, {x:$listCount*152, ease:Cubic.easeOut});
        },
        plusBucketList:function(getImagePath, isOpen,key){
            if(isOpen == false){
            }else $self.open();

            var liContainer = $("#bucket-list .lists-container");
            var lis = liContainer.find("li");
            var checkStr = lis.eq(0).find("img").attr("src");

            if(checkStr.indexOf("none") > -1) {
                for(var i = 0; i < 4; ++i){
                    var getImg = lis.eq(3-i).find("img");
                    var getImgSrc = getImg.attr("src");

                    if(getImgSrc.indexOf("none") > -1){
                        var appendStr = '<a href="javascript:Popup.$keyValue=\''+key+'\';Popup.detailPopupShowHide(true);"><img src="'+getImagePath+'" alt="" /></a>';
                        lis.eq(3-i).html(appendStr);
                        break;
                    }
                }

            }else{
                //var appendStr = '<li><img src="'+getImagePath+'" alt="" /></li>';
                var appendStr = '<li><a href="javascript:Popup.$keyValue=\''+key+'\';Popup.detailPopupShowHide(true);"><img src="'+getImagePath+'" alt="" /></a></li>';
                var container = $(".lists-container");
                var plusW = container.width()+122+30;
                container.width(plusW);
                container.prepend(appendStr);

                var twObj = $(".lists-container>li").eq(0);
                twObj.css("margin-right", -122);
                TweenMax.to(twObj, 0.7, {css:{marginRight:0}, ease:Cubic.easeOut});
            }

            $listCount = 0;
            TweenMax.to(liContainer, 0.7, {x:0, ease:Cubic.easeOut});
            TweenMax.killDelayedCallsTo($self.close);
            TweenMax.delayedCall(5, $self.close);
        },
        open:function(){
            TweenMax.to($(".bucket-floating-menu"), 0.3, {y:110, autoAlpha:0, ease:Cubic.easeIn});
            TweenMax.to($("#bucket-list"), 0.5, {delay:0.5, y:-161, ease:Cubic.easeOut});
        },
        close:function(){
            TweenMax.to($(".bucket-floating-menu"), 0.5, {delay:0.5, y:0, autoAlpha:1, ease:Cubic.easeOut});
            TweenMax.to($("#bucket-list"), 0.5, {y:0, ease:Cubic.easeOut});
        }
    }

    return $self;
})()