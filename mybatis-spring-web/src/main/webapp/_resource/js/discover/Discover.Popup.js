/*******
 * POPUP
 * */
var Popup = (function(){
    var $isFeatureGatePopupOn = true;
    var $isFeaturedDetailPopupOn = true;
    var $isPopupShow = false;
    var $currentPopup;
    var $currentScrollTop;
    var $mem_seq="";
    var $detailPopupImgCount = 0;
    var $detailPopupImgLen = 0;
    var $detailPopupImaData = {};
    var $detailImgBox = $("#detail-img-contents>.img-box");
    var $personBucketImgBox = $("#person-bucket-img-contents>.img-box");
    var $detailDots = $(".detail-top-btns>.dots>a");
    var $popup_detail_page = 1;
    var $popup_detail_total_page = 1;
    var $mem_bucket_total_page = 1;
    var $mem_bucket_page = 1;
    var $featured_detail_list_total_page = 1;
    var $featured_detail_list_page = 1;
    var $returnURL="";
    var $keyValue="";
    var $callback_page=1;
    var $PageType=0;

	var $prevScrollTop = 0;

    var $self = {
        init:function(){
			$self.reset();
            $self.setBtns();
        },
        setBtns:function(){
            //�リ린踰꾪듉
            var detailCloseBtn = $(".detail-popup-close");
            var personCloseBtn = $(".person-bucket-popup-close");
            var gateCloseBtn = $(".gate-popup-close");
            var featuredDetailCloseBtn = $(".f-detail-popup-close");
            var shareCloseBtn = $(".share-popup-close>a");
			var userGuideCloseBtn = $(".user-guide-popup-close");
			var share_fbBtn = $(".share-fb");
			var share_twBtn = $(".share-tw");
			var share_ksBtn = $(".share-ks");

			var detail_add_btn = $(".detail-add-btn");
			var detail_like_btn = $(".detail-like-btn");

			detail_add_btn.click(function(){
 				//$self.personBucketPopupShowHide(false);
        		var obj = $(".add-btn[key-value="+Popup.$keyValue+"]");
        		 
                var listBox = obj.parent().parent().parent();
            	var getImage = $detailImgBox.css("background-image");//listBox.find(".list-bg>img").attr("src");

             	getImage = $detailImgBox.attr("bucketimage"  );
 
            

        		//Popup.saveItemBucket(Popup.$keyValue,getImage);
             	if(!isLogin) $self.detailPopupShowHide(false);
                Popup.directAddBucket(Popup.$keyValue,getImage);

				return false;
			});
			
			detail_like_btn.click(function(){
				if(!isLogin) $self.detailPopupShowHide(false);
				Popup.saveItemLike(Popup.$keyValue);
 				return false;
			});
			
            detailCloseBtn.click(function(){
                $self.detailPopupShowHide(false);
                return false;
            })

            personCloseBtn.click(function(){
                $self.personBucketPopupShowHide(false);
                return false;
            })

            gateCloseBtn.click(function(){
                $self.gatePopupShowHide(false);
                return false;
            })

            featuredDetailCloseBtn.click(function(){
                $self.featuredDetailPopupShowHide(false);
                return false;
            })

            shareCloseBtn.click(function(){
                $self.sharePopupShowHide(false);
                return false;
            })

			userGuideCloseBtn.click(function(){
				$self.userGuidePopupShowHide(false);
				return false;
			})
 

			share_fbBtn.click(function(){
				//alert("FB - seq = 1; 湲��댁슜= ���댄궎�ㅽ���");
				//Popup.sendMyBucketSns("facebook","","");
                return false;
            });

			share_twBtn.click(function(){
               // alert("TW  - seq = 1; 湲��댁슜= ���댄궎�ㅽ���");
				Popup.sendMyBucketSns("twitter","","");
                return false;
            });

			share_ksBtn.click(function(){
                //alert("KS - seq = 1; 湲��댁슜= ���댄궎�ㅽ���");
				Popup.sendMyBucketSns("kakaostory","","");
                return false;
            });


            //�닿린 踰꾪듉
            var personListBtns = $(".person-list>a");
            var gateDetailBtn = $(".gate-detail-btn>a");

            //�뷀뀒�� �앹뾽�먯꽌 �ъ슜�� �쇨뎬 �뚮��꾨븣
            personListBtns.click(function(){

                $self.personBucketPopupShowHide(true);
                return false;
            })

            //寃뚯씠�� �앹뾽�먯꽌 �먯꽭�� 蹂닿린 踰꾪듉 �뚮��꾨븣
            gateDetailBtn.click(function(){
                Popup.featuredDetailPopupShowHide(true);
                return false;
            })

            //醫뚯슦 �좏깮踰꾪듉
            var detail_arrow_btns = $(".detail-arrow-btns>a");
            detail_arrow_btns.click(function(){
                var idx = $(this).index();
                if(idx == 0){
                    if($detailPopupImgCount == 0) $detailPopupImgCount = $detailPopupImgLen-1;
                    else $detailPopupImgCount--;
                }else{
                    if($detailPopupImgCount == $detailPopupImgLen-1) $detailPopupImgCount = 0;
                    else $detailPopupImgCount++;
                }

                $self.setImageChagne();
            })

            $detailDots.click(function(){
                $detailPopupImgCount = $(this).index();
                $self.setImageChagne();
				return false;
            })


			var detail_share_btn = $(".detail-share-btn");
			var detail_small_share_btns = $(".detail-small-share-btns>a");

			detail_share_btn.click(function(){
				$self.detailShareBtnMotion("in");
				return false;
			});

			detail_small_share_btns.click(function(){
				var idx = $(this).index();
				var key = $(this).parent().attr("key-value");
 
				switch (idx){
					case 3 : //�リ린
						$self.detailShareBtnMotion("out");
						break;
					case 2 : //�섏씠�ㅻ턿
						Popup.directShareSnsSmallButtn('facebook',key);
						break;
					case 1 : //移댁뭅�ㅼ뒪�좊━
						Popup.directShareSnsSmallButtn('kakaostory',key);						
						break;
					case 0 : //�몄쐞��
						Popup.directShareSnsSmallButtn('twitter',key);
						
						break;
				}

				return false;
			})
        },
		updatePersonBtns:function(){
			var person_share_btn = $(".person-bucket-share-btn");
			var person_small_share_btns = $(".person-detail-small-share-btns>a");

			person_share_btn.off("click");
			person_share_btn.on("click",function(){
				$self.personShareBtnMotion("in");
				return false;
			});

			person_small_share_btns.off("click");
			person_small_share_btns.on("click",function(){
				var idx = $(this).index();
				var key = $(this).parent().attr("key-value");

				switch (idx){
					case 3 : //�リ린
						$self.personShareBtnMotion("out");
						break;
					case 2 : //�섏씠�ㅻ턿
						Popup.directShareSnsSmallButtn('facebook',key);
						break;
					case 1 : //移댁뭅�ㅼ뒪�좊━
						Popup.directShareSnsSmallButtn('kakaostory',key);
						break;
					case 0 : //�몄쐞��
						Popup.directShareSnsSmallButtn('twitter',key);

						break;
				}

				return false;
			})
		},

		/* share popup motion */
		detailShareBtnMotion:function(type){
			var btnObjs = $(".detail-small-share-btns>a");
			var shareBtn = $(".detail-share-btn");
			var smallShareBtn = $(".detail-small-share-btns");

			$self.shareBtnMotionType1(type, btnObjs, shareBtn, smallShareBtn);
		},
		personShareBtnMotion:function(type){
			var btnObjs = $(".person-detail-small-share-btns>a");
			var shareBtn = $(".person-bucket-share-btn");
			var smallShareBtn = $(".person-detail-small-share-btns");

			$self.shareBtnMotionType1(type, btnObjs, shareBtn, smallShareBtn);
		},
		featuredShareBtnMotion:function(type){
			var btnObjs = $(".featured-small-share-btns>a");
			var shareBtn = $(".gate-top-btns>.share-btn");
			var smallShareBtn = $(".featured-small-share-btns");

			$self.shareBtnMotionType2(type, btnObjs, shareBtn, smallShareBtn);
		},

		featuredDetailShareBtnMotion:function(type){
			var btnObjs = $(".f-detail-small-share-btns>a");
			var shareBtn = $(".f-detail-btns>.share-btn");
			var smallShareBtn = $(".f-detail-small-share-btns");

			$self.shareBtnMotionType1(type, btnObjs, shareBtn, smallShareBtn);
		},


		/* popup share btn motion type */
		shareBtnMotionType1:function(type, btnObjs, shareBtn, smallShareBtn){
			if(type == "in"){
				TweenMax.to(shareBtn, 0.3, {alpha:0});
				smallShareBtn.css("display", "inline-block");
				for(var i = 0, len = 4; i < len; ++i){
					TweenMax.set(btnObjs.eq(3-i), {y:i*49, alpha:0});
					TweenMax.to(btnObjs.eq(3-i), 0.3, {delay:i*0.1, y:0, alpha:1, ease:Cubic.easeOut});
				}
			}else{
				for(var i = 0, len = 4; i < len; ++i){
					TweenMax.to(btnObjs.eq(3-i), 0.3, {delay:i*0.1, y:i*49, alpha:0, ease:Cubic.easeOut});
				}
				TweenMax.to(shareBtn, 0.3, {alpha:1});
				TweenMax.delayedCall(0.5, function(){
					smallShareBtn.css("display", "none");
				})
			}
		},

		shareBtnMotionType2:function(type, btnObjs, shareBtn, smallShareBtn){
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
					shareBtn.css("display", "inline");
					smallShareBtn.css("display", "none");

					TweenMax.set(shareBtn, {alpha:0});
					TweenMax.to(shareBtn, 0.3, {alpha:1, ease:Cubic.easeOut});
				})
			}
		},


        //DETAIL POPUP
        detailPopupShowHide:function(isShow){
        	//alert(121)
        	//$(".detail-popup").load("/discover/library_detail_popup.do");
        	if(isShow){
        		//load data
        		 
         		$.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
        				{
        					 
        					url:"/discover/library_detail_popup.do",
        					dataType:"json",
        					type:"POST",
        					async:true,
        					data:{
         						idea_id:Popup.$keyValue
        					},
        					success:function( data ) {
        						var ideaData = data.dataObject.idea;
        						var bucketList = data.dataObject.bucketList;
        						var uri = data.dataObject.uri;
        						//alert(bucketList.length)
        						//alert(uri);
        						$self.setIdeaData(ideaData,uri);
        						//$self.setBucketListData(bucketList,uri);
        						$self.detailBucketList("first");

								$self.popupShowHide($(".detail-popup"), isShow);
								$self.blackDimmedShowHide(isShow);
        	 				},
        					error : function( e ) {
        						//alert("議고쉶 �ㅻ쪟\n"+e.error);
        					}
        				}
        			);		
        	}else{
				$self.popupShowHide($(".detail-popup"), isShow);
				$self.blackDimmedShowHide(isShow);
			}
            /*$self.popupShowHide($(".detail-popup"), isShow);
            $self.blackDimmedShowHide(isShow);*/
            //$self.setBtns();
        },
        detailUserBucketIdeaList:function(type){
	       	 if(type == "first"){
	       		 Popup.$mem_bucket_page=1;
	       		 Popup.$mem_bucket_total_page=1;
	       	 }else if(type == "next"){
	           	 if( Popup.$mem_bucket_total_page <= Popup.$mem_bucket_page){
	           		 return;
	           	 }else{
	           		 Popup.$mem_bucket_page++;
	           	 }
	       		 
	       	 }else if(type == "prev"){
	           	 if(  Popup.$mem_bucket_page <=1){
	           		 return;
	           	 }else{
	           		 Popup.$mem_bucket_page--;
	           	 }
	       	 }
          	 $.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
        				{
        					 
        					url:"/discover/user_detail_bucket_popup.do",
        					dataType:"html",
        					type:"POST",
        					async:true,
        					data:{
         						curr_page:Popup.$mem_bucket_page,
         						mem_seq:Popup.$mem_seq
        					},
        					success:function( data ) {
        						var arr = data.split("jjjjjjkkkkklllhh");
        						Popup.$mem_bucket_total_page = arr[0].trim();
        						 $(".person-bucket-container").html(arr[1]);
								$self.updatePersonBtns();
         	 				},
        					error : function( e ) {
        						//alert("議고쉶 �ㅻ쪟\n"+e.error);
        					}
        				}
        			);	                
        },   
        personBucketPopupShowHide:function(isShow){
        	if( isShow == true){
       	 		Popup.detailUserBucketIdeaList('first'); 
        	}

            $self.popupShowHide($(".person-bucket-popup"), isShow);
            $self.blackDimmedShowHide(isShow);
        },
        gatePopupShowHide:function(isShow){
        	 
            if(isShow){
         		$.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
        				{
        					 
        					url:"/discover/featured_detail_popup.do",
        					dataType:"html",
        					type:"POST",
        					async:true,
        					data:{
         						theme_id:Popup.$keyValue
        					},
        					success:function( data ) {
        						 
        						$(".gate-container").html(data);
								$self.popupShowHide($(".featured-gate-popup"), true);
								$self.blackDimmedShowHide(true);
        	 				},
        					error : function( e ) {
        						//alert("議고쉶 �ㅻ쪟\n"+e.error);
        					}
        				}
        			);


            }
            else {
				$self.popupShowHide($(".featured-gate-popup"), false);
				$self.blackDimmedShowHide(false);
			}


        },
        featuredDetailPopupShowHide:function(isShow){
			if(isShow){
				Popup.featuredDetailListPopup('first');
			}

			$self.popupShowHide($(".featured-detail-popup"), isShow);
			$self.blackDimmedShowHide(isShow);
        },
        saveShareCnt:function(keyValue){
     		$.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
    				{
    					url:"/discover/shareSave.do",
    					dataType:"html",
    					type:"POST",
    					async:true,
    					data:{
     						idea_id:keyValue
    					},
    					success:function( data ) { 
    						//alert(data)
    						//$(".gate-container").html(data);

    	 				},
    					error : function( e ) {
    						//alert("議고쉶 �ㅻ쪟\n"+e.error);
    					}
    				}
    			);	 
        },
        sharePopupShowHide:function(isShow){
        	if(isShow == true){
        		Popup.saveShareCnt($("#SNS_SHARE_KEY").val());
        	}
            $self.popupShowHide($(".share-popup"), isShow);
            $self.blackDimmedShowHide(isShow);
        },
		userGuidePopupShowHide:function(isShow){
			$self.popupShowHide($(".user-guide-popup"), isShow);
			$self.blackDimmedShowHide(isShow);
		},
        popupShowHide:function(el, isShow, duration){
            var container = $("#container");
            var popups = $("#popups");
            var popupGroup = $(".popup-group");
            //var posTop = Math.abs(parseInt(container.css("top")));
			var twDuration = 0;

            if(isShow){
				$(".bucket-floating-menu").hide();
                $isPopupShow = true;
				twDuration = (duration)?duration:0.7;
                popupGroup.hide();

				el.show();
				popups.show();
				/*TweenMax.set(popups, {autoAlpha:0});
				TweenMax.to(popups, twDuration, {autoAlpha:1});*/
				$(".simple_loading").show();
				try{ BucketListCart.close();}catch(e){}

                $currentPopup = el;
            }else{
				$(".bucket-floating-menu").show();
				twDuration = (duration)?duration:0.5;
                $isPopupShow = false;

				//TweenMax.to(popups, twDuration, {autoAlpha:0, onComplete:function(){ popups.hide(); } });
				popups.hide();
				$(".simple_loading").hide();
				$self.reset();
				//setTimeout($self.reset, 500);
            }

			$self.scrollTopUpdate(isShow);
            GlobalData.isPopupOn = isShow;
        },
		scrollTopUpdate:function(isShow){
        	if(location.href.indexOf("discover") == -1) return;
			var posScrollTop = 0;
			if(isShow) {
				if(GlobalData.isPopupOn) return;
				$prevScrollTop = $(window).scrollTop();
				$(window).scrollTop(0);
				if($self.isBrowserIECheck()) $("body").css("overflow-y", "auto");
			}else {
				posScrollTop = $prevScrollTop;

				if($self.isBrowserIECheck()) $("body").css("overflow-y", "scroll");
				setTimeout(function(){
					$(window).scrollTop(posScrollTop);
				}, 300);
			}
		},
		isBrowserIECheck:function(){
			var agent = navigator.userAgent.toLowerCase();

			if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ) {
				return true;
			}else {
				return false;
			}
		},
        blackDimmedShowHide:function(isShow){
            var blackDimmed = $("#black-dimmed");
            if(isShow){
                blackDimmed.show();
                /*TweenMax.set(blackDimmed, {alpha:0});
                TweenMax.to(blackDimmed, 0.7, {alpha:1});*/
            }else{
                //TweenMax.to(blackDimmed, 0.5, {alpha:0, onComplete:function(){ blackDimmed.hide(); }});
				blackDimmed.hide();
            }
        },
        /*scrollMove:function(targetScroll){
            TweenMax.to($currentPopup, 0, {y:$currentScrollTop-targetScroll});
        },*/
        setImageChagne:function(){
            $detailImgBox.css("background-image", "url("+$detailPopupImaData[$detailPopupImgCount+1]+")");
            $detailDots.removeClass("active");
            $detailDots.eq($detailPopupImgCount).addClass("active");
        },
        setIdeaData:function(data,uri){
            $detailPopupImgCount = 0;
            $detailPopupImgLen = 0;
            $detailImgBox.attr("bucketimage", uri+data["file1_nm"] );

			if(data.isAdd === "Y"){
				$(".detail-share-btns>.checked-detail-add-btn").show();
				$(".detail-share-btns>.detail-add-btn").hide();
			}else{
				$(".detail-share-btns>.checked-detail-add-btn").hide();
				$(".detail-share-btns>.detail-add-btn").show();
			}

			if(data.isLike == "Y"){
				$(".detail-share-btns>.checked-detail-like-btn").show();
				$(".detail-share-btns>.detail-like-btn").hide();
			}else{
				$(".detail-share-btns>.checked-detail-like-btn").hide();
				$(".detail-share-btns>.detail-like-btn").show();
			}
            
            

            for(var i = 1, j=2; i <= 3; ++i,++j){
                var filenm = data["file"+j+"_nm"];
 
                var showHide = "none";

                if(filenm != "") {
                    $detailPopupImaData[i] = uri+filenm;
                    $detailPopupImgLen++;
                    showHide = "block";
                    if(i == 1) $detailImgBox.css("background-image", "url("+$detailPopupImaData[1]+")");
                }

                $detailDots.eq(i-1).css("display", showHide);
            }

			if($detailPopupImgLen <= 1) {
				$(".detail-top-btns>.dots").hide();
				$(".detail-arrow-btns").hide();
			} else {
				$(".detail-top-btns>.dots").show();
				$(".detail-arrow-btns").show();
			}
 
    		var title = data.title;
    		var ctgr_nm = data.ctgr_nm1;
    		var sub_txt = data.sub_txt;
    		var idea_id = data.idea_id;

    		var popup_detail_tags="";
    		var popup_detail_urls="<dt>愿��⑤쭅��</dt>";
			var popup_detail_urls_len = 0;
    		
    		
    		 $(".detail-container").addClass("seq-"+idea_id);

    		for(var i=1 ; i <= 10;i++){
        		if( data["tag_nm"+i] != "" && data["tag_nm"+i] !== undefined){

					/* 2017-03-13 */
					if(location.href.indexOf('/mypage') > -1){
						popup_detail_tags = popup_detail_tags +'<div><span>#</span>'+data["tag_nm"+i]+'</div>\n';
					}else{
						popup_detail_tags = popup_detail_tags +'<a href="javascript:Search.directSearch(\'#'+data["tag_nm"+i]+'\')"><span>#</span>'+data["tag_nm"+i]+'</a>\n';
					}
        		}
    		}

    		for(var i=1 ; i <= 3;i++){
        		if( data["url"+i] != "" && data["url"+i] !== undefined && data["url_txt"+i] != "" && data["url_txt"+i] !== undefined){ 
        			if( data["url"+i].indexOf("http://") < 0 && data["url"+i].indexOf("https://") < 0 ){
        				data["url"+i]= "http://"+data["url"+i];
        			}
        			
        			popup_detail_urls = popup_detail_urls +'<dd>'+data["url_txt"+i]+' <a href="'+data["url"+i]+'" target="_blank">諛붾줈媛�湲�</a></dd>\n';
					popup_detail_urls_len++;
        		}
    		}

			if(popup_detail_urls_len == 0) $("#popup_detail_urls").hide();
			else $("#popup_detail_urls").show();

    		setSnsShareData( idea_id,ctgr_nm, title, uri+data["file6_nm"]);
    		
    		$(".detail-small-share-btns").attr("key-value",idea_id);
    		$("#popup_detail_category").text(ctgr_nm.toUpperCase() );
    		$("#popup_detail_category").removeClass("travel");
    		$("#popup_detail_category").removeClass("sports");
    		$("#popup_detail_category").removeClass("food");
    		$("#popup_detail_category").removeClass("skill");
    		$("#popup_detail_category").removeClass("new");
    		$("#popup_detail_category").removeClass("culture");
    		$("#popup_detail_category").removeClass("outdoor");
    		$("#popup_detail_category").removeClass("shopping");
    		$("#popup_detail_category").removeClass("lifestyle");

    		$("#popup_detail_category").addClass(ctgr_nm.toLowerCase());
    		$("#popup_detail_title").html(title.replace(/\n/g,"<BR>") );
    		$("#popup_detail_desc").html(sub_txt.replace(/\n/g,"<BR>"));
    		$("#popup_detail_tags").html(popup_detail_tags);
    		$("#popup_detail_urls").html(popup_detail_urls);

         },
         detailBucketList:function(type){

        	 if(type == "first"){
        		 Popup.$popup_detail_page=1;
        		 Popup.$popup_detail_total_page=1;
        	 }else if(type == "next"){
            	 if( Popup.$popup_detail_total_page <= Popup.$popup_detail_page){
            		 return;
            	 }else{
            		 Popup.$popup_detail_page++;
            	 }
        		 
        	 }else if(type == "prev"){
            	 if(  Popup.$popup_detail_page <=1){
            		 return;
            	 }else{
            		 Popup.$popup_detail_page--;
            	 }
        	 }
           	 $.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
         				{
         					 
         					url:"/discover/library_bucket_fragment_list.do",
         					dataType:"html",
         					type:"POST",
         					async:true,
         					data:{
          						curr_page:Popup.$popup_detail_page,
          						idea_id:Popup.$keyValue
         					},
         					success:function( data ) {
         						var arr = data.split("JJJJJJJKKKKLLLEEEE");
         						var currPage = arr[0].trim();
         						var totalPage = arr[1].trim();
         						var totalCnt = arr[2].trim();
         						Popup.$popup_detail_total_page = totalPage;
         						 $("#popup_detail_bucket_cnt").text(totalCnt);
          						 $("#popup_detail_bucket_list_page").html("<span >"+currPage+"</span> / "+totalPage);
								$("#popup_detail_bucket_list").html(arr[3]);
								if( totalCnt == 0){
									$("#popup_detail_bucket_list").hide();
									$(".zero-person-info").show();
								}else{
									$("#popup_detail_bucket_list").show();
									$(".zero-person-info").hide();
								}
          	 				},
         					error : function( e ) {
         						//alert("議고쉶 �ㅻ쪟\n"+e.error);
         					}
         				}
         			);	                
         },         
         featuredDetailListPopup:function(type,isPage){
        	 
        	 if( isPage ){
	       		 Popup.$featured_detail_list_page=type;
      		 
        	 }else{
		       	 if(type == "first"){
		       		 Popup.$featured_detail_list_page=1;
		       		 Popup.$featured_detail_list_total_page=1;
		       	 }else if(type == "next"){
		           	 if( Popup.$featured_detail_list_total_page <= Popup.$featured_detail_list_page){
		           		 alert("留덉�留� �섏씠吏� �낅땲��.")
		           		 return;
		           	 }else{
		           		 Popup.$featured_detail_list_page++;
		           	 }
		       		 
		       	 }else if(type == "prev"){
		           	 if(  Popup.$featured_detail_list_page <=1){
		           		Popup.featuredDetailPopupShowHide(false);
		           		Popup.gatePopupShowHide(true);
		           		 return;
		           	 }else{
		           		 Popup.$featured_detail_list_page--;
		           	 }
		       	 }
        	 }
        	 $.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
     				{
     					 
     					url:"/discover/featured_detail_list_popup.do",
     					dataType:"html",
     					type:"POST",
     					async:true,
     					data:{
      						theme_id:Popup.$keyValue,
      						curr_page:Popup.$featured_detail_list_page

     					},
     					success:function( data ) {
     						// alert(data);
     						var arr = data.split("jjjjjjkkkkklllhh");
    						Popup.$featured_detail_list_total_page = arr[0].trim();;

     						$(".f-detail-container").html(arr[1]);

							/*TweenMax.set($(".f-detail-copy"), {alpha:0});
							TweenMax.to($(".f-detail-copy"), 1, {delay:0.3, alpha:1});*/
							var lis = $("#f-detail-copy-ul>li");
							var liLen = lis.size();
							TweenMax.set(lis, {alpha:0});
							for(var i = 0; i < liLen; ++i){
								var twObj = lis.eq(i);
								TweenMax.to(twObj, 2, {delay:i*0.2+0.5, alpha:1});
							}

							TweenMax.set($(".f-detail-dimmed"), {alpha:0});
							TweenMax.to($(".f-detail-dimmed"), 1, {delay:0.2, alpha:1});

     	 				},
     					error : function( e ) {
     						//alert("議고쉶 �ㅻ쪟\n"+e.error);
     					}
     				}
     			);		        	 
         },
         openMemberBucketList:function(mem_seq){
        	 //alert("openMemberBucketList")
        	 Popup.$mem_seq = mem_seq;
        	 Popup.personBucketPopupShowHide(true); 
        	// alert("end")
         },
         directShareSns:function(idea_id,ctgr_nm, title, img){
        	 setSnsShareData( idea_id,ctgr_nm, title, img);
        	 if(idea_id == 'MYBUC'){
        		 $(".share-popup-dimmed").hide();
        	 }else{
        		 $(".share-popup-dimmed").show();
        	 }
         	Popup.sharePopupShowHide(true); 

         },
         saveItemLike:function(keyValue){
        	 //alert(keyValue)
           	if(isLogin == false){
 				setHistory();
				if( Popup.$callback_page === undefined || Popup.$callback_page == "undefined" ){
					Popup.$callback_page="";
				}
         		$("#_returnURL_").val(Popup.$returnURL+"?search_param7="+keyValue+"&search_param6="+Popup.$callback_page);
         		login.showPop('pop_login',keyValue);
         	}else{
	         	$.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
	 					{
	
	 						url:"/ln/discover/likeSave.do",
	 						dataType:"json",
	 						type:"POST",
	 						async:true,
	 						data:{
	 							idea_id:keyValue 
	 						},
	 						success:function( data ) {
	 							//alert(data.dataObject.code)
	 							if(data.dataObject.code == "0"){//�뺤긽

	 				                DiscoverCommon.updateShareLikeBtns(Popup.$PageType, "LIKE", keyValue);

	 								 alert("�꾩떆由ъ뒪�몄뿉 異붽� �섏뿀�듬땲��.");
	 							}else {//以묐났
	 								 alert("�대� �꾩떆由ъ뒪�몄뿉 異붽��섏떊 �댁슜�낅땲��.");
	
	 							}
	
	 						},
	 						error : function( e ) {
	 							//alert("議고쉶 �ㅻ쪟\n"+JSON.stringify(e));
	 							alert("濡쒓렇�몄씠 �꾩슂�� �붾㈃�낅땲��. 濡쒓렇�명빐 二쇱꽭��.")
	 						}
	 					}
	 			);
         	}
 		
         },
         directLikeIdea:function(keyValue){
        	// alert(11)
         	Popup.saveItemLike(keyValue);
         },     
         
         saveItemBucket:function(keyValue,getImage){ 
        	 //alert(keyValue)
         	$.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
 					{

 						url:"/ln/discover/bucketSave.do",
 						dataType:"json",
 						type:"POST",
 						async:true,
 						data:{
 							idea_id:keyValue 
 						},
 						success:function( data ) {
 							//alert(data.dataObject.code)
 							if(data.dataObject.code == "0"){//�뺤긽
 				                BucketListCart.plusBucketList(getImage,true,keyValue);
 				                
 				                DiscoverCommon.updateShareLikeBtns(Popup.$PageType, "ADD", keyValue);
 

 							}else {//以묐났
 								 alert("�대� 異붽��섏떊 �댁슜�낅땲��.");
 							}

 						},
 						error : function( e ) {
 							//alert("議고쉶 �ㅻ쪟\n"+JSON.stringify(e));
 							alert("濡쒓렇�몄씠 �꾩슂�� �붾㈃�낅땲��. 濡쒓렇�명빐 二쇱꽭��.")
 						}
 					}
 			);
 		
         },

         directAddBucket:function(keyValue,getImage){
         	if(isLogin == false){
 				setHistory();
				if( Popup.$callback_page === undefined || Popup.$callback_page == "undefined" ){
					Popup.$callback_page="";
				}
         		$("#_returnURL_").val(Popup.$returnURL+"?search_param9="+keyValue+"&search_param6="+Popup.$callback_page);
         		login.showPop('pop_login',keyValue);
         	}else{
   
                 //ajax瑜� �댁슜�댁꽌 DB�� insert�쒕떎.
                 //keyValue
                 $self.saveItemBucket( keyValue,getImage);
         	}
         }    ,
         directShareSnsSmallButtn:function(sns,key,url){
        	 sendSns(sns, key,"" );
        	 /*
      		$.ajax( // �붾㈃�� �곗씠��瑜� 議고쉶�쒕떎.
     				{
     					 
     					url:"/discover/library_detail_popup.do",
     					dataType:"json",
     					type:"POST",
     					async:true,
     					data:{
      						idea_id:key
     					},
     					success:function( data ) {
     						var ideaData = data.dataObject.idea;
     						var bucketList = data.dataObject.bucketList;
     						var uri = data.dataObject.uri;
     			    		var title = ideaData.title;
     			    		var ctgr_nm = ideaData.ctgr_nm1;
     			    		var sub_txt = ideaData.sub_txt;
     			    		var idea_id = ideaData.idea_id;
     						
     						
     						sendSns(sns, key,title );
     	 				},
     					error : function( e ) {
     						//alert("議고쉶 �ㅻ쪟\n"+e.error);
     					}
     				}
     			);		
     			*/        	 
         },
         directFeaturedShareSns:function(sns,key,title){
        	 //'facebook','<%=theme_id %>','<%=shareTitle%>'
				sendSns(sns, key,title );

        	 
         },
         sendMyBucketSns:function (sns, seq, txt){
        	 
        		if( seq == ""){
        			seq = $("#SNS_SHARE_KEY").val();
        		}
        		if( txt == ""){
        			txt = $("#SNS_SHARE_TEXT").text();
        		}
        		var mem = $("#SNS_SHARE_MEM_KEY").val();

        	 
        		 	var _urls = webDomain+"/discover/library.do?search_param8=";
        		    var _url = encodeURIComponent(_urls+seq+"&search_param4="+mem);
        		    var _txt = encodeURIComponent(txt);
        		    
        		    switch(sns){
        		        case 'facebook':
        		            var win = window.open('http://www.facebook.com/sharer/sharer.php?u=' + _url);
        		            checkPopup(win);
        		            break;
        		        case 'twitter':
        		        	_txt = encodeURIComponent("�뱀떊�� 媛��댁쓣 �곌쾶 �� Bucket List瑜� 諛쒓껄�대낫�몄슂!.  ");
        		        	 var request = gapi.client.urlshortener.url.insert({
        			     	        'resource' : {
        			     	            'longUrl' : _urls+seq
        			     	        }
        			     	    });
        			     	    request.execute(function(response) {
        			     	        if (response.id != null) {
        			     	             
        			    	           var win = window.open('http://twitter.com/intent/tweet?text=' + _txt + '&url=' + response.id);
        			    	            checkPopup(win);
        			     	        } else {
        			     	            alert(JSON.stringify(response));
        			     	        }
        			     	    });
        			     	    
        		            break;        		            
        		            
        		            
        		            
        		        case 'kakaostory':
         		   			Kakao.Story.share({ url: _urls+seq+"&search_param4="+mem, text: txt });

        		            break;
        		    }
        		 
        	},
		reset:function(){
			$detailPopupImgCount = 0;
			$detailDots.removeClass("active");
			$detailDots.eq(0).addClass("active");
			$detailImgBox.css("background-image", "none");
			$personBucketImgBox.css("background-image", "none");
			$(".f-detail-img-box").css("background-image", "none");
			$(".gate-img-box").css("background-image", "none");
			$(".f-detail-copy").css("opacity", 0);
			$(".gate-copy").css("opacity", 0);
			$("#popup_detail_bucket_list").empty();
		}
         
         
    }

    return $self;
})();


$(function(){
    Popup.init();
})

 
var setHistory = function() {
 
 
}

var getHistory = function() {
	 
}

