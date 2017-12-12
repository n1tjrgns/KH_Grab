	function loginSns(type,pcode){
		if( type=="facebook"){
			$("#__loginForm__").attr("action",sslDomain+"/sns/snsLogin.do");
			$("#pcode").val(pcode);
			goFacebookLogin();
			NTrackObj.callTrackTag('29441', callbackFn, 11979);
		}else 	if( type=="kakao"){ 
			loginWithKakao(pcode);
			NTrackObj.callTrackTag('29441', callbackFn, 11979);
		}else 	if( type=="naver"){
			$("#__loginForm__").attr("action",sslDomain+"/sns/snsLogin.do");
			NTrackObj.callTrackTag('29441', callbackFn, 11979);
			$("#pcode").val(pcode);
			if( pcode == "reg"){
				$("#naver_id_reg>a").trigger("click");
			}else{
				$("#naver_id_login>a").trigger("click");
			}
		}
	 
	}

	   ////////////////////////////////////////////////////////////
	// 네이버.....    

	////////////////////////////////////////////////////////////
	var naver_id_login = new naver_id_login(nvAppId, webDomain+"/include/member/naver_login.jsp");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("green", 3,50);
	naver_id_login.setDomain("."+domainName);
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
//
//	function naverSignInCallback() {
//		// naver_id_login.getProfileData('프로필항목명');
//		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
//		$("#nvemail").val(naver_id_login.getProfileData('email'));
//		$("#nvnickname").val(naver_id_login.getProfileData('nickname'));
//		$("#nvid").val(naver_id_login.getProfileData('id'));
//		$("#nvimg").val(naver_id_login.getProfileData('profile_image'));
//		$("#nvname").val(naver_id_login.getProfileData('name'));
//	}
	
	
	function naverSignInCallback2(a,b,c,d,e,f,g,h,i) {
		$("#__loginForm__").attr("action",sslDomain+"/sns/snsLogin.do");
        var age_group = g;       
        console.log("age_group"+age_group.substring(0,2));
		// naver_id_login.getProfileData('프로필항목명');
		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
		
        $("#_sns_email_").val(a);
        $("#_sns_nm_").val(b);
        $("#_sns_id_").val(c);		
        $("#_sns_pimage_").val(d);
        $("#pcode").val(f);
        $("#_sns_age_").val( age_group.substring(0,2));
        $("#_sns_birthday_").val("");
        $("#_sns_gender_").val(i);
		$("#_sns_type_").val("NAVER");
		

		$("#__loginForm__").submit();
		
  
 
	}

	// 네이버 사용자 프로필 조회
	if(naver_id_login.is_callback==true){
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
	}
	
    // 네이버.....
	
	var naver_id_reg = new naver_id_reg(nvAppId, webDomain+"/include/member/naver_reg.jsp");
	var state = naver_id_reg.getUniqState();
	naver_id_reg.setButton("green", 3,50);
	naver_id_reg.setDomain("."+domainName);
	naver_id_reg.setState(state);
	naver_id_reg.setPopup();
	naver_id_reg.init_naver_id_reg();
	
	if(naver_id_reg.is_callback==true){
	naver_id_reg.get_naver_userprofile("naverSignInCallback()");
	}
	
	
	

    ////////////////////////////////////////////////////////////
	// 페이스북 .....
	////////////////////////////////////////////////////////////
	    window.fbAsyncInit = function() {
            FB.init({
              appId      : '803062869828098', // 앱 ID
              status     : true,          // 로그인 상태를 확인
              cookie     : true,          // 쿠키허용
              xfbml      : true           // parse XFBML
            });

            FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                    FB.api('/me',{fields:'id,name,birthday,email,gender'}, function(user) {
 						//saveUserInfo(user);
                    });
                } else if (response.status === 'not_authorized') {
					//alert("로그인은 돼 있으나 권한이 없음 만약 권한 받고 싶으면 goLogin() 호출");

                } else {
					//alert("로그인 안돼 있음 만약 로그인 시키고 싶다면 goLogin() 호출");

                }
            });

            FB.Event.subscribe('auth.login', function(user) {
                saveUserInfo(user);
            });
          };

          // Load the SDK Asynchronously
          (function(d){
             var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
             if (d.getElementById(id)) {return;}
             js = d.createElement('script'); js.id = id; js.async = true;
             js.src = "//connect.facebook.net/ko_KR/all.js";
             ref.parentNode.insertBefore(js, ref);
           }(document));

        var fb_cnt=0;
		function goFacebookLogin(){
			fb_cnt=0;                        
			FB.login(function(response) {
			  if (response.status === 'connected') {
				FB.api('/me',{fields:'id,name,birthday,email,gender'}, function(user) {
 					saveUserInfo(user);
				});
				FB.api('/me/picture?type=large',function(data){
					var myImg = data.data.url;
					$("#_sns_pimage_").val(myImg);
				});


			  } else if (response.status === 'not_authorized') {
				//alert("// 로그인만 하고 권한 부여를 안했음.");
			  } else {
				  //alert("// 로그인도 안했음");
				//
			  }
 			},{scope: 'email,user_birthday'});

		}


		function saveUserInfo(user){		
			if (user) {
                           
				var fb_gender = '';
                var org_birthday = '';
                var fb_birth_day = '';
				if(user.gender == "male"){
					fb_gender = "M";
				}else{
					fb_gender = "F";
				}

				if(( typeof(user.birthday)!='undefined') && (user.birthday != "")){  
					org_birthday = user.birthday.substring(8,10) + (user.birthday).substring(0,2)+(user.birthday).substring(3,5);
					age_birthday = user.birthday.substring(6,10) + (user.birthday).substring(0,2)+(user.birthday).substring(3,5);
				}

			
			$("#_sns_id_").val(user.id);			
			$("#_sns_type_").val("FACEBOOK");
			$("#_sns_nm_").val(user.name);
			$("#_sns_email_").val(user.email);
			$("#_sns_age_").val(age_birthday);
			$("#_sns_birthday_").val(org_birthday);
			$("#_sns_gender_").val(fb_gender);
			fb_cnt++;      
			if( fb_cnt == 2 || ((typeof(user.id)!='undefined') && (user.id != "")) ){ 				
				$("#__loginForm__").attr("action",sslDomain+"/sns/snsLogin.do");
				$("#__loginForm__").submit();                                 

			}

		}
}

	    ////////////////////////////////////////////////////////////
		// 카카오.....
		////////////////////////////////////////////////////////////
	    Kakao.init('54fdc94fb5308e67bf208e2863485e71');
	    
	    
	    function loginWithKakao(pcode) {
	        // 로그인 창을 띄웁니다.
	        Kakao.Auth.login({
	            success: function(authObj) {
					Kakao.API.request({
					  url: '/v1/user/me',
					  success: function(res) {
						
					  	$("#__loginForm__").attr("action",sslDomain+"/sns/snsLogin.do");
						$("#_sns_id_").val( res.id );
						$("#_sns_type_").val("KAKAO");
						$("#_sns_pimage_").val(res.properties.profile_image);
						$("#_sns_nm_").val(res.properties.nickname);
						$("#_sns_email_").val("");
						$("#pcode").val(pcode);

						$("#__loginForm__").submit();
					  }
					});
	            },

	            fail: function(err) {
	                alert("로그인이 취소 되었습니다.");
	            }
	        });
	    };
	    
	    
	    /*
	    Kakao.Auth.createLoginButton({
	      container: '#kakao-login-btn',
	      success: function(authObj) {
		Kakao.API.request({
		  url: '/v1/user/me',
		  success: function(res) {
//				  alert( JSON.stringify(res));
//		    $("#kaat").val(JSON.stringify(res.id));
//			    $("#kato").val(JSON.stringify(res.properties.nickname));
//			    $("#kaimg").val(JSON.stringify(res.properties.profile_image));
//				$("#kaimg2").val(JSON.stringify(res.properties.thumbnail_image));
			  	$("#__loginForm__").attr("action","/sns/snsLogin.do");

				$("#_sns_id_").val( res.id );
				$("#_sns_type_").val("KAKAO");
				$("#_sns_pimage_").val(res.properties.profile_image);
				$("#_sns_nm_").val(res.properties.nickname);
				$("#_sns_email_").val("");
				$("#__loginForm__").submit();

		  },
		  fail: function(error) {
		    //alert(JSON.stringify(error));
		  }
		});
	      },
	      fail: function(err) {
		 //alert(JSON.stringify(err));
	      }
	    });



	    Kakao.Auth.createLoginButton({
		      container: '#kakao-reg-btn',
		      success: function(authObj) {
			Kakao.API.request({
			  url: '/v1/user/me',
			  success: function(res) {
//					  alert( JSON.stringify(res));
//			    $("#kaat").val(JSON.stringify(res.id));
//				    $("#kato").val(JSON.stringify(res.properties.nickname));
//				    $("#kaimg").val(JSON.stringify(res.properties.profile_image));
//					$("#kaimg2").val(JSON.stringify(res.properties.thumbnail_image));
				  	$("#__loginForm__").attr("action","/sns/snsLogin.do");
					$("#pcode").val( "reg" );

					$("#_sns_id_").val( res.id );
					$("#_sns_type_").val("KAKAO");
					$("#_sns_pimage_").val(res.properties.profile_image);
					$("#_sns_nm_").val(res.properties.nickname);
					$("#_sns_email_").val("");
					$("#__loginForm__").submit();

			  },
			  fail: function(error) {
			    //alert(JSON.stringify(error));
			  }
			});
		      },
		      fail: function(err) {
			 //alert(JSON.stringify(err));
		      }
		    });
	    */