var PICNICCOMMON = (function () {
    function init(){
        setOn();
        scrollFnc();
        footerFnc();
    };

    var $nav = $('nav'),
        $navScroll = $('.nav_scroll'),
        $navScr = $('.nav_top'),
        $navDim = $('.nav_dim'),
        $gnbBtn = $('.gnb_button'),
        $gnbBtnClose = $('.gnb_close_button'),
        $wrap = $('#wrap');



    function setOn(){
        var url = window.location.href;

        if(url.indexOf('about')>-1){
            menuOn(1);
        }else if(url.indexOf('service')>-1){
            menuOn(2);
            $('#header .navi').addClass('grey');
        }else if(url.indexOf('now')>-1){
            menuOn(3);
            $('#header .navi').addClass('grey');
        }else if(url.indexOf('lifeplusx/')>-1){
            menuOn(4);
            $('#header .navi').addClass('grey');
            $('.sub_a').eq(0).addClass('active');
        }else if(url.indexOf('ambassador')>-1){
            $('#header .navi').addClass('grey');
            menuOn(4);
            $('.sub_a').eq(2).addClass('active');
        }else if(url.indexOf('lifeplusxlcd')>-1){
            $('#header .navi').addClass('club');
            menuOn(4);
            $('.sub_a').eq(1).addClass('active');
        }else if(url.indexOf('notification')>-1){
            menuOn(5);
            $('#header .navi').addClass('grey');
        }else{
            menuOn(1);
        }
    }

    function  menuOn(num) {
        $('#header').find('li').eq(num).find('a').addClass('on');
       
    }

    function scrollFnc(){
        var url = window.location.href;

        if($(window).scrollTop() > 10){
            $('#header .navi').addClass('white');
        }else{
            if(url.indexOf('term')>-1 || url.indexOf('privacy')>-1){
                return;
            }
            $('#header .navi').removeClass('white');
        }

        $(window).scroll(function() {
            var scrTop = $(window).scrollTop();
            if(scrTop > 10){
                $('#header .navi').addClass('white');
            }else{
                if(url.indexOf('term')>-1 || url.indexOf('privacy')>-1){
                    return;
                }
                $('#header .navi').removeClass('white');
            }
        });
    }

    function footerFnc(){
        $('.selectbox a').on('click', function(e){
            e.preventDefault();
            if($(this).parent().hasClass('on')){
                $(this).parent().removeClass('on');
                $('.selectul').hide()
            }else{
                $(this).parent().addClass('on');
                $('.selectul').show()
            }
        });
    }



    return {
        init: function () {
            init();
        },
        menuOn : function(num) {
            menuOn(num);
        }
    }
})();


$(function () {
    PICNICCOMMON.init();
});

function newsSubmit(){
    var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    var formData = {};
    var input = $('#newsForm_input').val();

    if(input == '') {
        alert('이메일 주소를 입력해주세요');
    }else if(!regex.test(input)){
        alert('이메일을 정확하게 입력해주세요');
    }else{
        formData.user_mail = $('#newsForm_input').val();
        $.ajax({
            url : rootDomain+"/app/blog/letterApply.jsp",
            type : "POST",
            dataType:"json",
            data : formData,
            success : function(info){
                if(info.result == 'success'){
                    alert('구독신청 완료되었습니다');
                    eventTrack('Btn_footer_subscription');
                    $('#newsForm_input').val('');
                }else{
                    alert('이미 구독중인 이메일입니다');
                }
            }});
    }
}


(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');




if(location.href.indexOf("does.kr") > 0){
    ga('create', 'UA-93705303-2', 'auto');
}else{
    ga('create', 'UA-93705303-1', 'auto');
}

ga('send', 'pageview');

function eventTrack(google){
    if(google != ''){
        ga('send', 'event', google, 'click');
    }
};
