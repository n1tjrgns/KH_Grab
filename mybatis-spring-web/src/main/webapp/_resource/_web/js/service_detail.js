var service = (function(){

    var $dimA = $('.dim_a'),
        $sectionBoxWrap = $('.section_box_wrap'),
        $whiteBg = $('.white_bg'),
        $serviceBox = $('.service_box'),
        $sectionBox = $('.section_box'),
        $videoFrame = $('.videoFrame'),
        $page = $('.page'),
        $popBg = $('.pop_bg'),
        $alert = $('.pop_alert'),
        $popInner = $('.pop_inner'),
        //videoUrl = 'https://player.vimeo.com/external/217769944.sd.mp4?s=0e1542ab0d8086779d58084f6ec8899bd3ff7846&profile_id=165',
        videoUrl = 'https://player.vimeo.com/external/240942004.hd.mp4?s=6b9f2305360aa84615922675f0357ac5ccd90980&profile_id=175',
        $window = $(window),
        winHei,
        clickFlag = true,
        popArr = ['상품안내','보장내용','가입안내','필수안내','보험료/해지환급금 예시'],
        selectIdx = 0;

    return {
        init : function(){
            if(menuCd != 'null'){
                service.viewBox(menuCd);
            }

            service.mainMot();

            winHei = $window.height();

            $window.resize(function(){
                service.reSize();
            });

            $('.btn_top').click(function(){
                $('body,html').stop().animate({'scrollTop': 370}, {duration: 600});
            });

            $('.btn_app').click(function(){
                $('body,html').stop().animate({'scrollTop': $('.view_box').eq(selectIdx).offset().top}, {duration: 600});
            });

            $dimA.click(function(){
                var idx = $(this).parent().index();
                service.viewBox(idx);

            });


            $dimA.mouseenter(function(){
                $dimA.addClass('active');
                $(this).removeClass('active');
                $sectionBox.addClass('hover2');
                $(this).parent().addClass('hover');
            });

            $dimA.mouseleave(function(){
                $dimA.removeClass('active');
                $sectionBox.removeClass('hover , hover2');
            });

            // $('.btn_back').click(function(){
            //     service.hideBox();
            // });



            $window.scroll(function(){
                var sTop = $window.scrollTop();

                if(clickFlag){
                    if(sTop > $('.page_box').offset().top - winHei){
                        clickFlag = false;
                        $('.page').addClass('active');
                    }
                }
            });
        },
        reSize : function(){
            winHei = $window.height();
        },
        mainMot : function(){
            TweenMax.delayedCall(0.4, function(){
                $('.title_text').addClass('active');
            });

            TweenMax.delayedCall(0.8, function(){
                $('.scroll_text').addClass('active');
                // for(var i=0;i<4;i++){
                //     TweenMax.to($serviceBox.eq(i), 0.6, {opacity:1,top:0,delay:i*0.15,ease: Power2.easeOut});
                // }

                $('.bg_top').addClass('active');

                TweenMax.delayedCall(1, function(){
                    $sectionBox.addClass('in');
                });
            });
        },
        viewBox : function(idx){
            clickFlag = true;
            selectIdx = idx;
            $sectionBoxWrap.addClass('active');
            $sectionBox.removeClass('mot2 , hover , hover2').addClass('none mot5');
            $sectionBox.eq(idx).addClass('active');
            TweenMax.delayedCall(0.5, function(){
                $serviceBox.eq(idx).addClass('active');
            });
        },
        hideBox : function(){
            clickFlag = false;
            //$('body,html').stop().animate({'scrollTop': 0}, {duration: 300});

            TweenMax.delayedCall(0.3, function(){
                //$('body').addClass('fixed');
                if(selectIdx == 2){
                    $videoFrame.attr('src',videoUrl);
                }

                $page.removeClass('active');
                $serviceBox.removeClass('active');
                TweenMax.delayedCall(0.2, function(){
                    $sectionBoxWrap.removeClass('active');
                    $dimA.parent().removeClass('none , active');

                    TweenMax.delayedCall(0.3, function(){
                        $('body').removeClass('fixed');
                        $sectionBox.removeClass('mot5').addClass('mot2');
                    });
                });
            });


        },
        dirGo : function(idx){
            if(idx == 2){
                $videoFrame.attr('src',videoUrl);
            }

            $page.removeClass('active');
            selectIdx = idx;
            TweenMax.to($whiteBg, 0.5, {width:100+'%',ease: Power2.easeOut,onComplete:function(){
                $('body,html').scrollTop(369);

                TweenMax.delayedCall(0.2, function(){
                    $serviceBox.removeClass('active');
                    $serviceBox.eq(idx).addClass('active');

                    $sectionBox.removeClass('active');
                    $sectionBox.eq(idx).addClass('active');

                    TweenMax.to($whiteBg, 0.5, {right:100+'%',delay:0.4,ease: Power2.easeOut,onComplete:function(){
                        TweenMax.to($whiteBg, 0, {width:0,right:0});
                    }});
                });
            }});
        },
        showPop : function(idx){
            $popBg.fadeIn();
            $('.pop_inner_box').find('img').removeClass('on');
            $('.pop_inner_box').find('img').eq(idx).addClass('on');
            $('.pop_title').html(popArr[idx]);

            TweenMax.delayedCall(0.2, function(){
                $popInner.fadeIn();
            });
        },
        closePop : function(){
            $popBg.fadeOut();
            $popInner.fadeOut();
        }
    }
})();

service.init();