var login = (function(){

    var $popLayer = $('.pop_layer'),
        $popBg = $('.pop_bg'),
        $loginEmail = $('.login_email').find('input'),
        $loginPassword = $('.login_password').find('input'),
        $emailSave = $('.btn_email_save'),
        $loginInfo = $('.btn_login_info');
    var $returnURL = "";
    var $saveReturnURL = "";



    return {
        init : function(){
            /* 아이디저장 및 로그인 유지 체크 */
            $emailSave.click(function(){
                $(this).toggleClass('active');
                if( $(this).hasClass("active") ){
                   $("#save_email_flg").val("Y");
                }else{
                   $("#save_email_flg").val("");
                }
            });

        },
        showPop : function(target,code,returnURL){
           login.$saveReturnURL = $("#_returnURL_").val();

            var posTop = ($(window).height()-481)/2;
            $(".pop_login").css("top", posTop);

           if( returnURL !== undefined){
              login.$returnURL = returnURL;
              $("#_returnURL_").val(returnURL);
           }else{
              $("#_returnURL_").val(document.location.href);

           }
            $popBg.fadeIn();
            $('.'+target).fadeIn();

            if(target == 'pop_login'){
                eventTrack("", "login");
            }

        },
        closePop : function(){
           login.$returnURL = "";
           $("#_returnURL_").val(login.$saveReturnURL);
           login.$saveReturnURL = "";
           
            $popBg.fadeOut();
            $popLayer.fadeOut();

            setTimeout(function(){
                login.inputReset();
            },500);

        },
        inputReset : function(){
            $loginEmail.val('');
            $loginPassword.val('');
            $emailSave.removeClass('active');
            $loginInfo.removeClass('active');
        }
    }
})();

login.init();