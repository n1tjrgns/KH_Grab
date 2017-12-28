$(function () {
   
   
    if($('.faq_container').length){

        $('.tap_top ul li a').on('click', function(e){
            e.preventDefault();
            var idx = $(this).parent().index();
            //alert(idx);
            $('.tap_top ul li').removeClass('on');
           
            $(this).parent().addClass('on');
          
            if(idx == 0){
                $('.faq_text_container').show();
                $('.noti_text_container').hide();
                $('.mail_text_container').hide();
            }else if(idx == 1){
                $('.faq_text_container').hide();
                $('.noti_text_container').show();
                $('.mail_text_container').hide();
            }else if(idx == 2){
                $('.faq_text_container').hide();
                $('.noti_text_container').hide();
                $('.mail_text_container').show();
            }
        });

        $('.faq_tab li a').on('click', function(e){
            e.preventDefault();
            var idx = $(this).parent().index();
            $('.faq_tab li').removeClass('on');
            $(this).parent().addClass('on');
            $('.faq_article').removeClass('on');
            $('.faq_article li').removeClass('on');
            $('.faq_article li .a').slideUp();
            $('.faq_article').eq(idx).addClass('on');
            //자주묻는 질문에서 클릭하면 창 올라오는 거 
        });

        $('.faq_article li .q a').on('click', function(e){
            e.preventDefault();
            if($(this).closest('li').hasClass('on')){
                $('.faq_article li').removeClass('on');
                $('.faq_article li .a').slideUp();
            }else{
                $('.faq_article li').removeClass('on');
                $(this).closest('li').addClass('on');
                $('.faq_article li .a').slideUp();
                $(this).parent().siblings('.a').slideDown();
            }
            //자주 묻는 기능에서 각각의 질문들 기능
        });

        $('.notifiaction_container ul li > a').on('click', function(e){
            e.preventDefault();
            var idx = $(this).closest('li').index();
            if($(this).closest('li').hasClass('on')){
                $('.notifiaction_container ul li .content').slideUp();
                $('.notifiaction_container ul li').removeClass('on');
            }else{
                $('.notifiaction_container ul li .content').slideDown();
               /* $('.notifiaction_container ul li').removeClass('on');
                $('.notifiaction_container ul li').eq(idx).find('.content').slideDown();
                $('.notifiaction_container ul li').eq(idx).addClass('on');*/
            }
            //공지사항에서의 각각의 공지들 기능
        });
        
        
        $(window).load(function() { //페이지 로드 후에 처리   
           //예외처리 하는 부분
            if (getURLParameter('no') && getURLParameter('no')!='null') {
                var no =getURLParameter('no');
                $('html,body').stop().animate({'scrollTop':$('.tap_container').offset().top-$('#header .navi').innerHeight()}, {duration: 500});
                $('.notifiaction_container ul li.no'+no+'>a').trigger('click');

            }

        });
    }

    function getURLParameter(name) {
        return decodeURI(
            (RegExp(name + '=' + '(.+?)(&|$)').exec(location.search)||[,null])[1]
        );
    }
});