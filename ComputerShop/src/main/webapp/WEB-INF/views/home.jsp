<html><head>
<style>
/* 결제 페이지 디자인 */
.orderWrap { width:911px; }
.orderWrap .sectionLine { width:100%; float:left; text-align:center; margin:50px 0 0 0; border-top:#000000 2px solid;}
.orderWrap .sectionTitle { height:39px; text-align:left; padding:20px 0 20px 20px; color:#000000; font-size:23px; letter-spacing:-2px; line-height: 20px;}
.orderWrap .sectionTitle2 { height:20px; text-align:left; padding:10px 0 10px 15px; color:#000000; font-size:17px; font-weight:bold; letter-spacing:-1px; line-height: 17px;}
.orderWrap .sectionTitle3 { height:20px; text-align:left; padding:10px 0 10px 0px; color:#000000; font-size:17px; font-weight:bold; letter-spacing:-1px; line-height: 17px;}
.orderWrap .sectionEnd { width:100%; float:left; text-align:center; margin:50px 0 0 0;}

.orderWrap .d_section1 { width:100%; float:left; margin:10px 0 0 0; border-bottom:#d2d2d4 1px solid; }
.orderWrap .d_section2 { float:left; }

.orderWrap .t_Section { border-top:#d2d2d4 1px solid; }
.orderWrap .t_Section td  { text-align:left; border-bottom:#ecedf0 1px solid; padding:13px 20px; }
.orderWrap .t_Section td  .td_title {padding : 10px 0px 10px 0px;}
.orderWrap .t_Section td  .td_fontSZ12 {font-size:12px;}
.orderWrap .t_Section td  .td_fontSZ13 {font-size:13px;}
.orderWrap .t_Section td  .td_fontSZ14B {font-size:14px; font-weight:bold;}
.orderWrap .t_Section .t_TabTitle { background:#f7f8fa; color:#000000; font-size:13px; line-height: 13px;}
.orderWrap .t_Section .t_Content > span { display:inline-block; .line-height:14px; }

/* Form Input 디자인 */
.inp_textBox { height:26px; border:#dedede 1px solid; padding:3px 5px; color: #888888; }
.inp_selectBox { height:30px; }


.box {font-size: 9pt; border:1px solid #464646;background-color:white;  } 
.box1 {font-size: 9pt; border:1px solid #d4d0c8;background-color:#F7F7F7;  } 
.graybox {font-size: 9pt; border:1px solid #000000;background-color:#d4d0c8;  } 
.nonbox {font-size: 9pt; border:0px solid #000000;background-color:white;  } 
.radio {font-size: 9pt; border:0px solid #000000;background-color:white;  } 
.text {font-size: 9pt; border:1px solid #000000;}
.text_l {font-size: 9pt; border:1px solid #ACACAC;}
.mem {font-size:8pt;font-family: "돋움";letter-spacing:-1;color:#464646;}
.stext{font-size:8pt;font-family: "돋움";}
.sm {font-size:8pt;font-family: "돋움";letter-spacing:-1;color:#ff4800;}
.text1 { FONT-SIZE: 9pt; COLOR: #7C682D; BACKGROUND-COLOR: #F6F4EE; Border:1px SOLID #E1DCCD;}
.text2 { FONT-SIZE: 9pt; COLOR: #7C682D; BACKGROUND-COLOR: #F6F4EE; Border:1px SOLID #E1DCCD;}
.select1 {font-size: 8pt; border:0px solid #ffffff;background-color:#638bb7; color:#ffffff;}
.select {font-size: 9pt; border:0px solid #000000;}
.outset {font-size:9pt;border:1px outset #ffffff;}
.box_s{font-family: "돋움"; BORDER-RIGHT: #ffffff 1px solid; BORDER-TOP: #999999 1px solid; PADDING-LEFT: 3px; FONT-SIZE: 11px; BORDER-LEFT: #999999 1px solid; COLOR: #666666; BORDER-BOTTOM: #ffffff 1px solid; BACKGROUND-COLOR:#f1f1f1}

.blue {font-size: 9pt; color: #215987; line-height: 19px} 
.blue A:link{color:#214A87;text-decoration:none} 
.blue A:visited {color:#214A87;text-decoration:none} 
.blue A:active {color:#214A87;text-decoration:none} 
.blue A:hover{color:#214A87;text-decoration:none} 

BODY {	FONT-SIZE: 9pt;  FONT-FAMILY: malgun gothic,"맑은 고딕",Apple SD Gothic Neo,"굴림",Gulim,"돋움",Dotum,Helvetica,Arial,Verdana,sans-serif;}
TD {	FONT-SIZE: 9pt;  FONT-FAMILY: malgun gothic,"맑은 고딕",Apple SD Gothic Neo,"굴림",Gulim,"돋움",Dotum,Helvetica,Arial,Verdana,sans-serif;}
A:link {    text-decoration:none;     color:#636363;} 
A:visited {    text-decoration:none;  color:#636363;   }
A:hover {    text-decoration:none;     }
A:active {    text-decoration:underline;    }

img {border:none;}

.table {border-style: solid; 
border-width: 1px; 
border-color: #D9D7D7;
border-collapse:collapse;
}

.table2 {border-style: solid; 
border-top-width: 1px; 
border-right-width: 1px; 
border-bottom-width: 1px; 
border-left-width: 1px; 

border-color: #000000;}

.table_coll
{
border-color : #D4D0C8;
border-collapse : collapse;
border-style: solid; 
border-width: 1px 1px 1px 1px;
}
.table_coll_nonepx
{
border-color : #000000;
border-collapse : collapse;
border-style: solid; 
border-top-width: 0px; 
border-right-width: 0px; 
border-bottom-width: 0px; 
border-left-width: 0px; 
}

.help {font-size:9pt;color:#73A47A; font-family:굴림}
.select_1 {font-size: 9pt; border:0; background-color:#eeeeee;}

.button
{
background-color:#3109C4;
color:white;
font-weight:bold;
text-align:center;
}
.button_pink
{
background-color:#FF00FF;
color:white;
font-weight:bold;
text-align:center;
}
form { display : inline; }

/* Default */
*, form { padding: 0px; margin: 0px; }
body { width: 100%; height: 100%; font-size: 12px; font-family: malgun gothic,"맑은 고딕",Apple SD Gothic Neo,"돋움",Dotum,Helvetica,Arial,Verdana,sans-serif; color: #000000; }
select, input, textarea { font-size: 12px; color: #000000;  padding-top: 2px; border: 1px solid #DCDCDC; }
img { border: 0px }
a span { display: none }
ul { list-style: none }
input.noBr { border: 0px }

/* Table */
table.tb { width: 100%; }
table td { vertical-align: top; }
table td.vb { vertical-align: bottom; }
table td.vm { vertical-align: middle; }
table td.ac { text-align: center; }
table td.ar { text-align: right; }
table.item td img { border: 1px solid #e1e1e1 }
table td.nobr img { border: 0px }
table td.imgBox img { border: 1px solid #058bea }
table td.imgBox02 img { border: 2px solid #cde7fe }

/* Link */
a:focus { outline:none; }
a:link, a:visited { color: #626365; text-decoration: none }
a:hover { color: #4784d1; }

a.tt:link, a.tt:visited { color: #2E3094; font-weight: bold; text-decoration: none; }
a.tt:hover { text-decoration: underline }

table#paging { margin: 0 auto; margin-top: 35px; }
table#paging a { text-decoration: none }
table#paging span.on { color: #2E3192; text-decoration: underline; font-weight: bold; }

/* Classes */
.sz11 { font-size: 11px }
.emp, a.emp:link { font-weight: bold }
.uline { text-decoration: underline }
.colBl, a.colBl:link { color: #013571; font-family: malgun gothic,"맑은 고딕",Apple SD Gothic Neo,"돋움",Dotum,Helvetica,Arial,Verdana,sans-serif; font-size:12px }
.colBk { color: #000000 }
.colOrg { color: #fd6965 }
.colRed { color: #ee1c25 }
.colZen { color: #5674b9 }
.colTt { color: #2E3094 }
.newImg { vertical-align: bottom; margin-bottom: 2px }
.viewStt { margin-top: 30px; }
.price_description { font-size: 14px;}
.sum_price { font-size: 16px; font-family: verdana,돋움; color: #ff0000; }
div.clear { clear: both; }

body { width: 100%; height: 100%; }
table#wrapper { width: 960px; margin: 0 auto; }
table#mainMenu { width: 960px; height: 38px; background: url('../images/common/bg_mm_mid.gif') repeat-x; margin-top: 10px; }
table#mainMenu td#left { width: 5px; background: url('../images/common/bg_mm_left.gif') no-repeat top left; }
table#mainMenu td#right { width: 5px; background: url('../images/common/bg_mm_right.gif') no-repeat top right; }
table#category { width: 948px; margin: 0 auto; margin-top: 13px;}

table#position { width: 980px; margin: 0 auto; margin-top: 10px; }
table#position td.top { height: 3px; background: url('../images/common/bg_position_line.gif') repeat; }
table#position td.bottom { height: 3px; background: url('../images/common/bg_position_line.gif') repeat; }
td#etcList img { border: 2px solid #cce2f0; margin-right: 5px; }
td.bbsLine { position: relative; height: 28px; background: url('../images/index/bg_list.gif') no-repeat bottom left; }
td.bbsLine a { margin-left: 25px; }
td.bbsLine span { display: block; position: absolute; float: right; right: 20px; top: 6px; }
table#footer { width: 960px; height: 226px; background: #f9f9f9; margin-top: 40px; }
td#board { font-weight: bold; font-size: 12px; font-family: "나눔고딕", NamumGothic, malgun gothic,"맑은 고딕",Apple SD Gothic Neo,"돋움",Dotum,Helvetica,Arial,Verdana,sans-serif; color: #636363; }

span.var { color: #C3C3C3; font-size: 11px; }

#top_img_height img{ vertical-align:-5px;}

td.left_menu {font-size:9pt; color:#ffffff; font-family:"돋움",Dotum;}
.left_menu, a.left_menu:link{font-size:9pt; color:#ffffff; font-family:"돋움",Dotum;}
.left_menu, a.left_menu:visited{font-size:9pt; color:#ffffff; font-family:"돋움",Dotum;}
.left_menu, a.left_menu:active{font-size:9pt; color:#ffffff; font-family:"돋움",Dotum;}
.left_menu, a.left_menu:hover{color:#00c0f3;}

left_menu_m {font-size:9pt; color:#ffffff; font-family:"돋움",Dotum;}

td.left_menu2 {font-size:9pt; color:#000000; font-family:"굴림", Gulim, Tahoma, sans-serif;}
.left_menu2, a.left_menu2:link{font-size:9pt; color:#333333; font-family:"굴림", Gulim, Tahoma, sans-serif;}
.left_menu2, a.left_menu2:visited{font-size:9pt; color:#333333; font-family:"굴림", Gulim, Tahoma, sans-serif;}
.left_menu2, a.left_menu2:active{font-size:9pt; color:#333333; font-family:"굴림", Gulim, Tahoma, sans-serif;}
.left_menu2, a.left_menu2:hover{color:#00c0f3;}

td.top_light_menu {font-size:11px; font-family:"돋움",Dotum;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=980">
<title>컴퓨터모니터</title>
<meta name="description" content="No.1 조립컴퓨터 고객만족 창립18주년 특가할인, 100%정품새제품 리얼후기, PC온라인견적, 당일출고 무료배송, 랙없는 빠른 게이밍컴퓨터를 원한다면 쿨젠컴퓨터.">
<meta name="keywords" content="컴퓨터모니터">
<meta name="author" content="COOLZEN">
<meta property="og:type" content="website">
<meta property="og:title" content="조립컴퓨터 고객만족1위 : 쿨젠컴퓨터">
<meta property="og:description" content="No.1 조립컴퓨터 고객만족 창립18주년 특가할인, 100%정품새제품 리얼후기, PC온라인견적, 당일출고 무료배송, 랙없는 빠른 게이밍컴퓨터를 원한다면 쿨젠컴퓨터.">
<meta property="og:image" content="https://www.coolzen.co.kr/images/cz_logo.jpg">
<meta property="og:url" content="https://www.coolzen.co.kr">
<link rel="canonical" href="https://www.coolzen.co.kr">
<link rel="shortcut icon" href="../images/coolzen_logo.ico">

<script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=CN5B3520823780&amp;la_uid=51545551022610855.1592223459996&amp;la_fid=2562b93183c8f9e98e390f36490d6829&amp;la_sid=51545223463334610.1592229229460&amp;la_infl=18.0.0.0.null.null.null.51545222400001610&amp;la_pa1=3.0.0.461644.null.null.null.0&amp;la_pa2=3.0.0.461644.null.null.null.0&amp;la_dccs=EUC-KR&amp;la_r=1095518076&amp;la_crsd_gc=&amp;la_sv=8b142fe&amp;la_dcrf=INTNL_REF&amp;la_dcurl=https%3A%2F%2Fwww.coolzen.co.kr%2Fgoods_list.php%3FIndex%3D326&amp;la_dcttl=%EC%BB%B4%ED%93%A8%ED%84%B0%EB%AA%A8%EB%8B%88%ED%84%B0&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script><script src="https://teralog.techhub.co.kr/ckie"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script src="https://sas.nsm-corp.com/sa-w.js?gc=CN5B3520823780&amp;rd=1592229223924"></script><script src="https://cr.acecounter.com/Web/AceCounter_AW.js?gc=BS4A44042479606&amp;py=0&amp;gd=gtc7&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1592229223924"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=UA-56657821-1&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-KV7C52N"></script><script language="javascript" src="./script/admin.js"></script>
<script type="text/javascript" src="./script/noticeLayer.js"></script>
<style type="text/css" title="currentStyle" media="screen">
	@import "./script/noticeLayer.css";
</style>
<script language="JavaScript" src="/trustlogo.js" type="text/javascript"></script>

<!-- 20200527 Global site tag (gtag.js) - Google Ads: 993022531 -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-993022531"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('set', {'user_id': ''}); // 로그인한 User-ID를 사용하여 User-ID를 설정합니다.

  gtag('config', 'AW-993022531');
  gtag('config', 'UA-56657821-1');
</script>
<!-- Global site tag (gtag.js) - Google Ads: 993022531 END -->

<!-- Google Tag Manager -->
<script>
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});
var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
j.async=true;
j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;
f.parentNode.insertBefore(j,f);
})
(window,document,'script','dataLayer','GTM-KV7C52N');
</script>
<!-- End Google Tag Manager -->

<!-- 네이버 웹마스터 연관채널 소스 -->
<script type="application/ld+json">
{
 "@context": "https://schema.org",
 "@type": "Person",
 "name": "조립컴퓨터 고객만족1위 : 쿨젠컴퓨터",
 "url": "https://www.coolzen.co.kr",
 "sameAs": [
   "https://smartstore.naver.com/coolzen",
   "https://blog.naver.com/vekio",
   "https://twitter.com/coolzen_twt"
 ]
}
</script>
<!-- 네이버 웹마스터 연관채널 소스 -->

<!-- 20200527 상단 선언 스크립트 : 모든페이지 공통 상단 필수 -->
<!-- PlayD TERA Log Definition Script Start -->
<script>
(function(win,name){
	win['LogAnalyticsObject']=name;
	win[name]=win[name]||function(){(win[name].q=win[name].q||[]).push(arguments)}
})(window,'_LA');
</script>

<!-- 20200527 카카오배너광고 방문 및 전체 head /head 사이 -->
<script type="text/javascript" charset="UTF-8" src="https://t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('211714007491232073').pageView();
</script>

<script language="JavaScript">
<!--

// banner_roll("div태그 id", 배너1개높이, 딜레이, 1칸이동속도, 0);
function banner_roll(div_id, banner_height, banner_delay, banner_speed, this_height)
{
  var div_tag = document.getElementById(div_id);
  var a_tag, i;

  this_height++;
  if(this_height < banner_height) {
    div_tag.style.top = -this_height;
    setTimeout("banner_roll('" + div_id + "', " + banner_height + ", " + banner_delay + ", " + banner_speed + ", " + this_height + ");", banner_speed);
  } 
  else {
    a_tag = div_tag.getElementsByTagName("A");
    div_tag.appendChild(a_tag[0]);
    div_tag.style.top = 0;
    setTimeout("banner_roll('" + div_id + "', " + banner_height + ", " + banner_delay + ", " + banner_speed + ", 0);", banner_delay);
  }
  return true;
}

//공지사항 보기
function noticeView(Idx,App,Width,Height,bPopup)
{
	// 공지사항 기본틀 사용안할때
	if(App=="n")
	{
		var popup_height =Height+40;
		var popup_width	 =Width+30;
		window.open("notice_view_html.php?bcook=no&idx="+Idx,"","scrollbars=no,width="+popup_width+",height="+popup_height+",top=100,left=100"); 
	}
	else
	{
		window.open("notice_view_text.php?bcook=no&idx="+Idx,"","scrollbars=no,width=520,height=470,top=100,left=100"); 
	}
}

//투표하기 
//Status	last:마지막 투표  now:현재진행중
//pPlu		1:복수응답불가  2~10:복수응답가능개수
//reCan		1:회원,비회원		2:회원제
function pollWrite(Status,bPlu,reCan)
{
	var form=document.pollForm;
	var voteArr = new Array();	//투표배열
	var loginCheck ="";	//로그인 체크
	if(Status=="last") alert("기간이 만료된 설문조사 입니다.");
	else
	{
		if(reCan==2 && loginCheck!="member")
		{
			alert("회원제 설문조사 입니다. 회원 로그인을 해주십시오.");
		}
		else
		{
			var bVote = false;
			var voteCnt =0;	//투표수
			for(i=0;i<form.vote.length;i++)
			{
				if(form.vote[i].checked)
				{
					bVote=true;
					voteArr[i]=1;	//선택
					voteCnt++;	//선택수 증가
				}
				else
				{
					voteArr[i]=0;	//비선택
				}
			}
			if(bVote)
			{
				if(voteCnt >bPlu)
				{
					//복수응답 초과
					alert(bPlu+"개의 복수응답이 가능한 설문조사 입니다.");
				}
				else
				{
					form.voteArrstr.value = voteArr.join("|");
					winP = window.open("","Window","width=320,height=372,top=200,left=400,status,scrollbars");
					form.target="Window";
					form.submit();
					winP.focus();
				}
			}
			else
			{
				alert("투표를 하지 않으셨습니다.");
			}
		}
	}
}

//투표 에러
function pollErr()
{
	alert("이미 투표 하셨습니다.");
}

//설문조사 결과 보기
function viewPoll(Data)
{
	window.open("poll_new.php?data="+Data,"","width=320,height=372,top=200,left=400,status,scrollbars");
}

//로그인 체크
function mypageLoginChek()
{
		alert("회원 메뉴입니다.\n\n로그인 해 주십시오.");
	document.mypage.submit();}

//로그인 체크
function mypageOrderChek()
{
		alert("회원 메뉴입니다.\n\n로그인 해 주십시오.");
	document.mypage.submit();}

function login()
{
	document.a.submit();
}


function left_login_check()
{
	var form=document.loginmainForm;
	if(form.userid.value=="")
	{
		alert("아이디를 입력해 주십시오.");
		form.userid.focus();
	}
	else if(form.pwd.value=="")
	{
		alert("비밀번호를 입력해 주십시오.");
		form.pwd.focus();
	}
	else
	{
		form.submit();
	}
}

function left_loginChek(aEvent)
{
	var myEvent = aEvent ? aEvent : window.event;
	if(myEvent.keyCode==13) left_login_check();
}

function searchId(Part)
{
	window.open("id_loss.php?part="+Part,"","scrollbars=no,width=500,height=350,top=200,left=200");
}


function imgUp()	// 오늘본상품 5개 초과일때 이미지 한칸 올리기
{
	if (arr_TodayImg.length<6)
	{
		// alert("오늘본상품이 5개가 넘으면 작동함.");
	}
	else if (current_today>0)
	{
		current_today--;
		var next=0;
		for (var i=0; i<5; i++)
		{
			next = current_today + i;
			var obj = eval("document.todayimg"+i);
			obj.src = "upload/goods/"+ arr_TodayImg[next];
			var obj2 = eval("document.all.href"+i);		
			obj2.href = "goods_detail.php?goodsIdx="+arr_TodayGoodsIdx[next]; 
		}
	}
}

function imgDown()	// 오늘본상품 5개 초과일때 이미지 한칸 내리기
{
	if (arr_TodayImg.length<6)
	{
		// alert("오늘본상품이 5개가 넘으면 작동함.");
	}
	else if ((arr_TodayImg.length - current_today) > 5 )
	{
		current_today++;
		var next=0;
		for (var i=0; i<5; i++)
		{
			next = current_today + i;
			var obj = eval("document.todayimg"+i);
			obj.src = "upload/goods/"+ arr_TodayImg[next];
			var obj2 = eval("document.all.href"+i);
			obj2.href = "goods_detail.php?goodsIdx="+arr_TodayGoodsIdx[next];
		}
	}
}

var main_width = (screen.width - 980)/2;
//-->
</script><script language="JavaScript" src="/images/common/common.js"></script><script language="JavaScript" src="/script/navi_view.js"></script><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/993022531/?random=1592229223952&amp;cv=9&amp;fst=1592229223952&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=33&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.coolzen.co.kr%2Fgoods_list.php%3FIndex%3D326&amp;ref=https%3A%2F%2Fwww.coolzen.co.kr%2Fgoods_list.php%3FIndex%3D330&amp;tiba=%EC%BB%B4%ED%93%A8%ED%84%B0%EB%AA%A8%EB%8B%88%ED%84%B0&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/993022531/?random=1592229223963&amp;cv=9&amp;fst=1592229223963&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=33&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa640&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.coolzen.co.kr%2Fgoods_list.php%3FIndex%3D326&amp;ref=https%3A%2F%2Fwww.coolzen.co.kr%2Fgoods_list.php%3FIndex%3D330&amp;tiba=%EC%BB%B4%ED%93%A8%ED%84%B0%EB%AA%A8%EB%8B%88%ED%84%B0&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script></head>
   

<body style="background:url(/images/top/top_bg1.gif) repeat-x;" text="#636363" topmargin="0" leftmargin="0">
<div align="center">
<!-- 일반적인 로그인버튼 클릭시 -->
<form name="a" method="post" action="../login.php"></form>
<!-- mypage 로그인 체크시 referer값 셋팅-->
<form name="mypage" method="post" action="../login.php">
<input type="hidden" name="referer" value="https://www.coolzen.co.kr/"> <!--  mypage_member.php   value값-->
</form>
<form name="underForm" method="post" action="under.php"></form>
<table cellspacing="0" id="wrapper">
	<tbody><tr>
		<td><font style="position:relative;"><div id="divMenu2" style="position:absolute; top: 160px; left: -259px">
			<table border="0" cellspacing="0" cellpadding="0">				<tbody><tr>					<td><a onclick="window.open('upload/editor/popup02.gif','','width=310,height=515')" style="cursor: pointer;"><div align="right"><img src="./upload/design/20200602095411_main_freecard_6.jpg" border="0"> </div></a></td>				</tr>				<tr>					<td><a href="/goods_list.php?Index=650" style="cursor: pointer;"><div align="right"><img src="./upload/design/20200117160148_amd.jpg" border="0"> </div></a></td>				</tr>			</tbody></table></div>
<style type="text/css">
#divMenu1 {
	position:absolute;
	overflow:visible;	
	left:1113px;	
	padding:5px;
	border:0;
	background-color:#ffffff;
	z-index:1;
}
#divMenuM {
	position:absolute;
	overflow:visible;
	left:1113px;
	padding:5px;
	border:0;
	background-color:#ffffff;
	z-index:1;
}
</style>
<!--------------------- 우측 날개 배너 ------------------->
<div id="divMenuM" style="top: 160px; left: 985px;">
<form name="wing2">			
  <table width="80px" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td><a href="board_list_faq.php?boardIndex=4&amp;ct=3" target="_self"><img src="/images/main/quick_01_qna.gif" border="0"></a></td>
  </tr>
  <tr>
    <td><a href="cart.php" target="_self"><img src="/images/main/quick_02_cart.gif" border="0"></a></td>
  </tr>
  <tr>
    <td><a href="mypage_interest.php" target="_self"><img src="/images/main/quick_03_wish.gif" border="0"></a></td>
  </tr>
  <tr>
    <td><a href="customer_order.php" id="scroll_order_info" target="_blank"><img src="/images/main/quick_04_pay.gif" border="0"></a></td>
  </tr>
  <tr>
    <td><a href="#" onclick="window.open('pop_delivery_quick.php','','scrollbars=yes,width=600,height=800,top=200,left=200');"><img src="/images/main/quick_08_price.gif" border="0"></a></td>
  </tr>
  <tr>
    <td><a href="https://www.coolzen.co.kr/index.php" target="_self"><img src="/images/main/quick_11_home.gif" border="0"></a></td>
  </tr>
  <tr>
    <td><br><a href="https://www.realcpu.co.kr/" target="_blank"><img src="/images/main/quick_12_intel.gif" border="0"></a></td>
  </tr>
  <tr>
    <td><br><img src="/images/main/quick_13_happy.gif" border="0"></td>
  </tr>
 </tbody></table>
</form>
</div>

			<script language="javascript">
			var bNetscape4plus = (navigator.appName == "Netscape" && navigator.appVersion.substring(0,1) >= "4");
			var bExplorer4plus = (navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.substring(0,1) >= "4"); 			
			function OnLoad()
			{
				var y, Fx, Fx1;
				if ( bExplorer4plus ) {      
          (window.sidebar)? FxWidth = 1116 : FxWidth = 985;
        }
    	  else if ( bNetscape4plus ) {
          FxWidth = 985;    
        }     				
				if ( bExplorer4plus ) {
    	  	(document.body.clientWidth/2>FxWidth) ? Fx = document.body.clientWidth/2 : Fx = FxWidth;
    	  }
    	  else if ( bNetscape4plus ) {
    	    (window.innerWidth/2>FxWidth) ? Fx = window.innerWidth/2 : Fx = FxWidth;
    	  }    	    
    	  document.getElementById("divMenuM").style.left = Fx+'px'; 	  
				return true;
			}
			OnLoad();
			</script>
      					
					<table cellspacing="0" id="header">
			<tbody><tr height="50">
				<td class="vb" style="width: 346px;">			
			<style type="text/css">
<!--
.cate_all {font-family: dotum,'돋움';}
.cate_all_sub {position:absolute; z-index:99999;}
.cate_all ul {margin-top:16px; margin-left:18px; width:178px; height:154px;}
.cate_all li {padding-top:6px;}
.cate_all li.cate_title {margin-bottom:10px; color:#000; font-weight: bold;}

#bannerClose { position:absolute; width:36px; height:35px; right:0px; top:314px; cursor:pointer;}
-->
</style>
<link href="/images/top/img/h.css" rel="stylesheet" type="text/css">
<div id="cate_all" class="cate_all" style="display:none; top:159px; font-size:12px; border:0 solid #A2A2A2; padding:0; background:url(images/top/all_cate_bg.gif); width:980; height:349; FILTER: alpha(opacity=100); position:absolute; z-index:99999;">
<div id="cate_cpu" style="float:left;">
<ul>
<li class="cate_title">용도별 컴퓨터</li>
<li><a href="goods_list.php?Index=615">3D게임용 &nbsp;<font color="red"><b>BEST</b></font></a></li>
<li><a href="goods_list.php?Index=616">고사양</a></li>
<li><a href="goods_list.php?Index=1128">그래픽작업용</a></li>
<li><a href="goods_list.php?Index=614">가정용</a></li>
<li><a href="goods_list.php?Index=617">업무용</a></li>
</ul>
<ul>
<li class="cate_title">CPU별 컴퓨터</li>
<li><a href="goods_list.php?Index=650">AMD 라이젠 &nbsp;<font color="red"><b>HOT</b></font></a></li>
<li><a href="goods_list.php?Index=649">코어i7(최상급)</a></li>
<li><a href="goods_list.php?Index=648">코어i5(상급)</a></li>
<li><a href="goods_list.php?Index=626">코어i3(중급)</a></li>
<li><a href="goods_list.php?Index=629">펜티엄</a></li>
</ul>
</div>
<div id="cate_game" style="float:left;">
<ul>
<li class="cate_title">게임별 컴퓨터</li>
<li><a href="goods_list.php?Index=681">배틀그라운드 &nbsp;<font color="red"><b>BEST</b></font></a></li>
<li><a href="goods_list.php?Index=865">발로란트</a></li>
<li><a href="goods_list.php?Index=686">오버워치</a></li>
<li><a href="goods_list.php?Index=770">검은사막</a></li>
<li><a href="goods_list.php?Index=771">PC방고사양</a></li>
<li><a href="goods_list.php?Index=1010">스팀</a></li>
<li><a href="goods_list.php?Index=682">피파/서든</a></li>
<li><a href="goods_list.php?Index=691">리그오브레전드</a></li>
</ul>
</div>
<div id="cate_special" style="float:left;">
<ul>
<li class="cate_title">특별기획 컴퓨터</li>
<li><a href="goods_list.php?Index=1047">윈도우탑재PC</a></li>
<li><a href="goods_detail.php?goodsIdx=10251">온라인견적 (D.I.Y PC) &nbsp;<font color="#3399ff"><b>Cool</b></font></a></li>
<li><a href="goods_list.php?Index=908">고사양 그래픽카드 탑재</a></li>
<li><a href="goods_list.php?Index=787">방송용컴퓨터</a></li>
<li><a href="goods_list.php?Index=905">커스텀PC</a></li>
</ul>
<ul>
<li class="cate_title">전문가 전용 컴퓨터</li>
<li><a href="goods_list.php?Index=1032">프로게이머 &nbsp;<font color="red"><b>HOT</b></font></a></li>
<li><a href="goods_list.php?Index=913">익스트림PC</a></li>
<li><a href="goods_list.php?Index=912">그래픽전문 프리미엄PC</a></li>
<li><a href="goods_list.php?Index=785">서버/워크스테이션</a></li>
</ul>
</div>
<div id="cate_pakage" style="float:left;">
<ul>
<li class="cate_title">모니터패키지</li>
<li><a href="goods_list.php?Index=1020">삼성 24형 Full HD 특가</a></li>
<li><a href="goods_list.php?Index=1020#tab_cate_b">삼성 27형 커브드 특가</a></li>
<li><a href="goods_list.php?Index=1020#tab_cate_c">게이밍모니터 패키지</a></li>
</ul>
</div>
<div id="cate_etc" style="float:left;">
<ul>
<li class="cate_title">주변기기</li>
<li><a href="goods_list.php?Index=326">모니터</a></li>
<li><a href="goods_list.php?Index=328">키보드/마우스</a></li>
<li><a href="goods_list.php?Index=329">스피커/헤드셋</a></li>
<li><a href="goods_list.php?Index=327">프린터/복합기</a></li>
<li><a href="goods_list.php?Index=330">소프트웨어</a></li>
<li><a href="goods_list.php?Index=988">저장장치</a></li>
<li><a href="goods_list.php?Index=331">네트웍/케이블</a></li>
<li><a href="goods_list.php?Index=332">소모품/기타</a></li>
</ul>
</div>
<img src="images/top/cate_all_close.gif" id="bannerClose" onclick="javascript:cate_allView();">
</div><table width="980" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td height="31" style="padding-top: 12px;">"고객만족1위 쿨젠컴퓨터"</td>          
          <td align="right" style="padding-top: 12px;" class="top_light_menu"><a href="login.php" onfocus="this.blur()">로그인</a>  |  <a href="member_join.php" onfocus="this.blur()">회원가입</a>  |  <a href="cart.php" onfocus="this.blur()"><b>장바구니</b></a>  |  <a href="order_refer.php" onfocus="this.blur()">주문조회</a>  |  <a href="ask_list.php" onfocus="this.blur()">1:1문의</a>  |  <a href="customer_0201.php" onfocus="this.blur()"><img src="/images/top/smail.gif" width="13" height="15" border="0" align="top">고객센터</a></td>
        </tr>
      </tbody></table>      
    </td>
  </tr>
  <tr><td width="100%" height="1" bgcolor="#eaeaea"></td></tr>
  <tr>
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
          <td width="150"><img src="/images/top/search_naver.gif" width="150" height="83" border="0"></td>
          <td width="150">&nbsp;</td>
          <td width="380"><a href="https://www.coolzen.co.kr/index.php" onfocus="this.blur()"><img src="/images/top/a_logo.gif" width="380" height="83" border="0"></a></td>
          <td width="43">&nbsp;</td>
          <td width="257" align="right" class="vm" valign="bottom">
            <form name="topGoodsSearchForm" action="search_result.php">
                <table border="0" cellspacing="0" cellpadding="0" align="right">
                    <tbody><tr><td height="37"></td></tr>
				    <tr>
				        <td style="padding:4 0 0 0;" background="/images/top/search.gif" width="162" height="26" align="center">
                            <input type="hidden" name="search" value="sc_total">
                            <input type="text" name="searchstring" style="border:0" size="22" value="RTX2080 SUPER" onclick="this.value='';"></td>
                        <td width="32" align="right" style="padding-left: 5px; padding-top: 3px;"><a href="javascript:goodsSearchSendit(document.topGoodsSearchForm);"><img src="upload/design/20140625133915_search_button.gif" border="0" align="absmiddle"></a></td>
                    </tr>
                </tbody></table> 
            </form>
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
  <tr>
    <td background="/images/top/top_menu_bar.gif">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">  
        <tbody><tr>
          <td style="cursor:pointer;" width="174"><img src="/images/top/top_1_all_cate.gif" onclick="javascript:cate_allView();" width="174" height="45" border="0"></td> 
          <td width="47"></td>
          <td style="cursor:pointer;" width="96"><a href="goods_list.php?Index=681"><img src="/images/top/top_3_game.gif" width="96" height="45" border="0"></a></td>
          <td width="58"></td>
          <td style="cursor:pointer;" width="115"><a href="goods_list.php?Index=1032"><img src="/images/top/top_4_pre.gif" width="115" height="45" border="0"></a></td>
          <td width="57"></td>
          <td style="cursor:pointer;" width="88"><a href="goods_list.php?Index=326"><img src="/images/top/top_5_etc.gif" width="88" height="45" border="0"></a></td>
          <td width="52"></td>
          <td style="cursor:pointer;" width="130"><a href="goods_detail.php?goodsIdx=10251"><img src="/images/top/top_5_diy.gif" width="130" height="45" border="0"></a></td>
          <td width="46"></td>
          <td width="117"><a href="#" onclick="window.open('card_proc.php','_blank','width=500,height=400,scrollbars=no'); return false;" onfocus="this.blur()"><img src="/images/top/top_6_card.gif" width="117" height="45" border="0"></a></td>
        </tr>
      </tbody></table>
    </td>
  </tr>

<!-- //카테고리전체보기 -->


  </tbody></table>					</td>
				</tr></tbody></table></font></td></tr>				
		</tbody></table><script language="JavaScript">
<!--
function goodsSort()
{
	var form=document.sortForm;
	var Url = "goods_list.php?Index=326&searchstring=&nv_opt=";
	if (form.Sort.selectedIndex == 0) Url+="&sortStr=price&sort=asc";
	else if(form.Sort.selectedIndex==1) Url+="&sortStr=price&sort=desc";
	else if(form.Sort.selectedIndex==2) Url+="&sortStr=sale&sort=desc"; 
	location.href=Url;
}
function goodsSort1(num)
{
	var form=document.sortForm;
	var Url = "goods_list.php?Index=326&searchstring=&nv_opt=";
	if (num == 0) Url+="&sortStr=price&sort=asc";
	else if(num==1) Url+="&sortStr=price&sort=desc";
	else if(num==2) Url+="&sortStr=sale&sort=desc"; 
	location.href=Url;
}
function goodsSearch()
{
	var form=document.sortForm;
	form.submit();
}
//로그인 체크
function mypageLoginChek()
{
		// 비회원
	alert("회원 메뉴입니다.\n\n로그인 해 주십시오.");
	location.href="login.php";
	}
function compare()
{
	var form = document.compareForm;
	var compareIdx = "";
	var comparechk_bLimit1="";
	var comparechk_limitCnt1="";
	if(form.comparechk.length>0)
	{
		for (var i=0; i<form.comparechk.length; i++)
		{
			if (form.comparechk[i].checked)
			{
				compareIdx += form.comparechk[i].value+"/";
				comparechk_bLimit1+=  form.comparechk_bLimit[i].value+"/";
				comparechk_limitCnt1+=  form.comparechk_limitCnt[i].value+"/";
			}
		}
	}
	else
	{
		compareIdx = form.comparechk.value + "/";
		comparechk_bLimit1 = form.comparechk_bLimit.value + "/";
		comparechk_limitCnt1 = form.comparechk_limitCnt.value + "/";
	}
	form.idxstr.value = compareIdx;
	form.bLimitstr.value = comparechk_bLimit1;
	form.limitCntstr.value = comparechk_limitCnt1;
}
function compareGo()
{
	var form = document.compareForm;
	var idxstr = form.idxstr.value;
	var bLimitstr = form.bLimitstr.value;
	var limitCntstr = form.limitCntstr.value;
	if (idxstr == "")
	{
		alert("비교품목에 담을 상품을 선택해 주세요.");
	}
	else
	{
		var idxstr_arr = idxstr.split("/");
		var bLimit_arr = bLimitstr.split("/");
		var limitCnt_arr = limitCntstr.split("/");
		for (var i=0; i<idxstr_arr.length; i++)
		{
			if ((bLimit_arr[i]==1 && limitCnt_arr[i]==0) || bLimit_arr[i]==2)
			{
				alert("품절인 상품은 비교품목에 담을수 없습니다.");
				return false;
			}
		}
		window.open("compare_ok.php?idxstr="+idxstr,"","scrollbars=no,width=450,height=235,top=300,left=300");
	}
}
function cartGo()
{
	var form = document.compareForm;
	var idxstr = form.idxstr.value;
	var bLimitstr = form.bLimitstr.value;
	var limitCntstr = form.limitCntstr.value;
	if (idxstr == "")
	{
		alert("장바구니에 담을 상품을 선택해 주세요.");
	}
	else
	{
		var idxstr_arr = idxstr.split("/");
		var bLimit_arr = bLimitstr.split("/");
		var limitCnt_arr = limitCntstr.split("/");
		for (var i=0; i<idxstr_arr.length; i++)
		{
			if ((bLimit_arr[i]==1 && limitCnt_arr[i]==0) || bLimit_arr[i]==2)
			{
				alert("품절인 상품은 장바구니에 담을수 없습니다.");
				return false;
			}
		}
		window.open("cart2_ok.php?idxstr="+idxstr,"","scrollbars=no,width=450,height=225,top=300,left=300");
	}
}
function interestGo()
{
	var form = document.compareForm;
	var idxstr = form.idxstr.value;
	var bLimitstr = form.bLimitstr.value;
	var limitCntstr = form.limitCntstr.value;
	if (idxstr == "")
	{
		alert("관심품목에 담을 상품을 선택해 주세요.");
	}
	else
	{
		var idxstr_arr = idxstr.split("/");
		var bLimit_arr = bLimitstr.split("/");
		var limitCnt_arr = limitCntstr.split("/");
		for (var i=0; i<idxstr_arr.length; i++)
		{
			if ((bLimit_arr[i]==1 && limitCnt_arr[i]==0) || bLimit_arr[i]==2)		
			{
				alert("품절인 상품은 관심품목에 담을수 없습니다.");
				return false;
			}
		}
		window.open("interest2_ok.php?idxstr="+idxstr,"","scrollbars=no,width=450,height=235,top=300,left=300");
	}
}
//관심품목등록
function addInter(idx)
{
  	alert("회원 로그인후 이용하실수 있습니다.");	
	}
function compareGo1(num)
{
	var form = document.compareForm;
  window.open("compare_ok.php?idxstr="+num,"","scrollbars=yes,width=450,height=550,top=150,left=300");
}

//-->
</script>

<style type="text/css">
#Rank1 {
	position:absolute;
	left:expression((document.body.clientWidth>977)? (document.body.clientWidth-this.style.width)/2-this.getAttribute("pos") : 0);
	top:414px;
	width:54px;
	height:35px;
	z-index:1;
	visibility: visible;
}
#Rank2 {
	position:absolute;
	left:expression((document.body.clientWidth>977)? (document.body.clientWidth-this.style.width)/2 : 482);
	top:414px;
	width:33px;
	height:30px;
	z-index:2;
	visibility: visible;
}
</style>
<!-- <div id="Rank1" pos=482><img src="images/best_sell/bullet_best_01.gif" width="54" height="68" border=0></div>
<div id="Rank2"><img src="images/best_sell/bullet_best_02.gif" width="54" height="68" border=0></div> -->
										
		<!-- Position -->
		<table cellspacing="0" id="position">

												<form name="sortForm" method="post" action="goods_list.php"></form>
												<input type="hidden" name="Index" value="326">			
			<tbody><tr>
				<td class="vm" height="27"><a href="index.php"><img src="images/common/ic_home.gif" width="14" height="12" alt=""> 
				<b>HOME</b></a> &gt; 주변기기 &gt; 컴퓨터모니터 &nbsp;&nbsp;
                				<img src="images/main/btn_low.gif" border="0" onclick="javascript:goodsSort1(0);" style="cursor:pointer;" align="top">
				<img src="images/main/btn_high.gif" border="0" onclick="javascript:goodsSort1(1);" style="cursor:pointer;" align="top">
                				<!--<img src="images/main/ic_order.gif" width="20" height="17" border="0" alt="" align="absmiddle" /> 상품정렬  
				<select name="Sort" onChange="javascript:goodsSort();" style="width: 117px">
				  <option value="3" >저가격순</option>
				  <option value="4" >고가격순</option>				  
				  <option value="7" >베스트순</option>
				</select>--></td>			
				<!--<td class="ar vm" width="200"><font color="#007ce3"><b>27</b></font>개의 상품이 검색되었습니다.</td>-->				
			</tr>
															

		</tbody></table>
		<!-- //Position -->
		
		
			<table width="980" border="0" cellspacing="0" cellpadding="0">
				<!-- 카테고리 개별 중앙 배너 -->
				<tbody><tr>
					<td align="center">
						<table width="980" border="0" cellspacing="0" cellpadding="0" align="center">
                            <tbody><tr><td height="15"></td></tr>						  
            <tr><td align="center"><br>

<div style="width: 980px; border: 0px; margin-top: 0px;">
    <ul>
        <li style="float: left;"><a href="goods_list.php?Index=326" onfocus="this.blur();"><img src="images/main/product/main_7_01.gif" onmouseover="this.src='images/main/product/main_7_01_over.gif'" onmouseout="this.src='images/main/product/main_7_01.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=933" onfocus="this.blur();"><img src="images/main/product/main_7_02.gif" onmouseover="this.src='images/main/product/main_7_02_over.gif'" onmouseout="this.src='images/main/product/main_7_02.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=328" onfocus="this.blur();"><img src="images/main/product/main_7_03.gif" onmouseover="this.src='images/main/product/main_7_03_over.gif'" onmouseout="this.src='images/main/product/main_7_03.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=329" onfocus="this.blur();"><img src="images/main/product/main_7_04.gif" onmouseover="this.src='images/main/product/main_7_04_over.gif'" onmouseout="this.src='images/main/product/main_7_04.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=327" onfocus="this.blur();"><img src="images/main/product/main_7_05.gif" onmouseover="this.src='images/main/product/main_7_05_over.gif'" onmouseout="this.src='images/main/product/main_7_05.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=330" onfocus="this.blur();"><img src="images/main/product/main_7_06.gif" onmouseover="this.src='images/main/product/main_7_06_over.gif'" onmouseout="this.src='images/main/product/main_7_06.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=988" onfocus="this.blur();"><img src="images/main/product/main_7_07.gif" onmouseover="this.src='images/main/product/main_7_07_over.gif'" onmouseout="this.src='images/main/product/main_7_07.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=331" onfocus="this.blur();"><img src="images/main/product/main_7_08.gif" onmouseover="this.src='images/main/product/main_7_08_over.gif'" onmouseout="this.src='images/main/product/main_7_08.gif'" border="0" width="109" height="164"></a></li>
        <li style="float: left;"><a href="goods_list.php?Index=332" onfocus="this.blur();"><img src="images/main/product/main_7_09.gif" onmouseover="this.src='images/main/product/main_7_09_over.gif'" onmouseout="this.src='images/main/product/main_7_09.gif'" border="0" width="108" height="164"></a></li>
    </ul>
</div>

</td><td height="80" width="50"></td></tr></tbody></table><br><br>
<p align="center"><font color="#444444" size="7" face="나눔고딕,굴림">모니터 / TV 모니터</font></p>
<p style="LINE-HEIGHT: 130%">&nbsp;</p>
<p style="LINE-HEIGHT: 230%" align="center"><font color="#808080" size="4" face="굴림"></font>&nbsp;</p><br><br></td></tr>						</tbody></table>
					
				
				<!-- 카테고리 개별 중앙 배너 끝 -->
				
										
					<table cellspacing="0" style="width: 980px; margin: 0 " align="center">
														
										<form name="compareForm" method="post"></form>
										<input type="hidden" name="idxstr" value="">
										<input type="hidden" name="bLimitstr" value="">
										<input type="hidden" name="limitCntstr" value="">
										<!-- 상품 목록 시작 -->
										<tbody><tr valign="bottom">
										<td><table width="100%" border="0" cellpadding="0" cellspacing="0"><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tbody><tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11791"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11791"><img src="upload/goods/a74921_%B7%A1%BE%C8%C5%D822-210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11791"><font color="#000000"><b>22형 에이메카 <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">22형 무결점</font>&nbsp;--><br>무결점 / LED LCD / 1920*1080 / TN계열 / 500~1000만:1 이하 / 5ms / 16:9 와이드 / D-SUB / DVI / 베사홀 / 무결점</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">89,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11791"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11789"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11789"><img src="upload/goods/a76423_%C7%D8%C4%BF24-210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11789"><font color="#000000"><b>24형 MTEC <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">24형 무결점</font>&nbsp;--><br>60.96cm(24형) / 와이드(16:9) / 평면 / TN / 일반시야각 / 1920 x 1080(FHD) / 0.274mm / 2ms(GTG) / 250cd / 5,000,000:1 / 75Hz / HDMI / D-SUB / 플리커 프리 / 블루라이트 차단 / 게임모드 지원 / FreeSync / 무결점 정책 / 틸트 / 100 x 100mm / HDR</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">120,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11789"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11788"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11788"><img src="upload/goods/a39625_24_samsung_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11788"><font color="#000000"><b>24형 <font color="blue"><b>삼성</b></font> ★<font color="red"><b>특가</b></font>★ <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">삼성 24형 무결점</font>&nbsp;--><br>24형(59.8cm) /&nbsp;와이드(16:9) / LED / 1920 x 1080 / 1,000:1(typ) / 5ms / 300cd / D-SUB / HDMI / 틸트 / 매직 업 스케일 / HDMI to DVI케이블</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">152,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11788"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12248"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12248"><img src="upload/goods/a56076_green24_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12248"><font color="#000000"><b>24형 그린디스플레이 <font color="red">[게이밍] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">24형 게이밍 무결점</font>&nbsp;--><br>61cm(24인치) / 와이드(16:9) / 평면 / IPS / 광시야각 / 1920 x 1080(FHD) / 1ms(OD) / 220cd / 1,000:1 / 144Hz / sRGB: 100% / HDMI / DP포트 / 플리커 프리 / 블루라이트 차단 / 게임모드 지원 / 조준선 표시 / FreeSync / G-Sync compatible / 스피커 / HDCP 지원 / 무결점 정책 / 틸트 / 75 x 75mm / HDR / 3.3kg</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">157,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12248"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11790"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11790"><img src="upload/goods/a39967_27_newsync_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11790"><font color="#000000"><b>27형 그린디스플레이 <font color="gray"> [무결점]</font></b></font></a><br><!--<br><font color="#000000">27형 무결점</font>&nbsp;--><br><p><font color="#000000">27형(68.58cm) LED LCD(와이드) / 광시야각패널 / 1920*1080 / 50,000:1(동적) / 5ms / 300cd / D-Sub / HDMI / 무결점</font></p></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">163,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11790"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11797"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11797"><img src="upload/goods/a33737_24-210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11797"><font color="#000000"><b> 24형 <font color="blue"><b>LG</b></font><font color="gray"> [무결점]</font></b></font></a><br><!--<br><font color="#000000">LG 24형 무결점</font>&nbsp;--><br>24형(60.4cm) / LED LCD(와이드) / IPS패널 / 1920*1080 / 1,000:1 / 5ms / 250cd / D-Sub / HDMI / 틸트 / 베사홀 / 게임모드 지원 / 프리싱크</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">179,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11797"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11802"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11802"><img src="upload/goods/a54002_aimeca_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11802"><font color="#000000"><b>32형 클라인즈 <font color="gray">[무결점 / 화이트]</font></b></font></a><br><!--<br><font color="#000000">32형 무결점</font>&nbsp;--><br><p>32형(80.1cm) LED LCD(와이드) / 광시야각패널 / 1920*1080 / 5,000,000:1(DCR) / 5ms / 300cd / DVI / D-Sub / HDMI / 틸트 / 스피커내장 / 베사홀 / 무결점 </p></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">206,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11802"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11805"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11805"><img src="upload/goods/12018032717060110049.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11805"><font color="#000000"><b>27형 <font color="blue"><b>삼성</b></font> <font color="red"><b>[커브드]</b></font> <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">삼성 27형 커브드 무결점 ★인기</font>&nbsp;--><br>68.5cm(27형) / 와이드(16:9) / VA(곡면) / 광시야각 / 1920 x 1080(FHD) / 0.311mm / 4(GTG)㎳ / 250㏅ / 3,000:1 / 무한(∞):1 / LED 방식 / 60Hz / 틸트 / 게임모드 지원 / HDMI x1 / D-SUB / 28W / 0.3W / 플리커 프리 / 블루라이트 차단 / 커브드 / RGB케이블</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">210,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11805"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11803"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11803"><img src="upload/goods/a28746_sam27_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11803"><font color="#000000"><b>27형 <font color="blue"><b>삼성</b></font> <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">삼성 27형 무결점</font>&nbsp;--><br>68.5cm(27형) / 와이드(16:9) / 1920 x 1080(FHD) / 0.311mm / 1(GTG)㎳ / 300㏅ / ~1,000:1 / 무한(∞):1 / LED 방식 / 60Hz / 틸트 / 게임모드 지원 / HDMI x1 / D-SUB / 32W / 0.3W / 75 x 75mm / 플리커 프리 / 블루라이트 차단 / PVC 프리 / HDMI to DVI케이블</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">213,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11803"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11814"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11814"><img src="upload/goods/12018032717075211746.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11814"><font color="#000000"><b>27형 <font color="blue"><b>BenQ</b></font> <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">BenQ 27형 무결점</font>&nbsp;--><br>27형(68cm)&nbsp;/ AMVA패널 / 1920*1080 / 12,000,000:1(동적) / 4ms / 300cd / DVI / HDMI / D-sub / 틸트&nbsp; / 무결점<font color="#808080"> </font></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">220,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11814"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12250"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12250"><img src="upload/goods/a95338_27_kleinz_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12250"><font color="#000000"><b>27형 정림전자<font color="red"> [게이밍] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">27형 게이밍 무결점</font>&nbsp;--><br>27형 / VA계열 / 1920*1080(FHD) / 165Hz이상 / 1ms / DisplayPort / HDMI / DVI / 프리싱크지원 / 8000:1이하 / 틸트(각도조절) / 플리커프리 / 로우블루라이트 / 평면 / 블랙 / 16:9(와이드)</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">223,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12250"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11795"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11795"><img src="upload/goods/a41939_27_lg_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11795"><font color="#000000"><b>27형 <font color="red"><b>LG</b></font> <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">LG 27형 무결점</font>&nbsp;--><br>27형(68.6cm) LED LCD(와이드) / IPS패널 / 1920*1080 / 1,000:1 / 5ms / 250cd / D-Sub / HDMI / 틸트 / 베사홀</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">237,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11795"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12658"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12658"><img src="upload/goods/12019071210135912656.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12658"><font color="#000000"><b>27형 제이씨현 <font color="red">[게이밍 / 커브드 / 화이트] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">27형 게이밍 무결점</font>&nbsp;--><br><p>24형(60cm) LED LCD(와이드) / PVA패널 / 1920*1080 / 3,000:1 / 1(OD)ms / 250cd / DVI /&nbsp;HDMI /&nbsp;DP&nbsp;/ &nbsp;틸트 / 무결점 / 16:9 / 144Hz / 조준선 표시 <!--아이콘만 나올때--></p></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">239,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12658"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11806"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11806"><img src="upload/goods/12018032717061310753.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11806"><font color="#000000"><b>32형 <font color="blue"><b>삼성</b></font> <font color="red"><b>[커브드]</b></font> ★최신형 <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">삼성 32형 커브드 무결점 ★최신형</font>&nbsp;--><br>80.1cm(32형) / 와이드(16:9) / VA(곡면) / 광시야각 / 1920 x 1080(FHD) / 4㎳ / 250㏅ / 3,000:1 / 무한(∞):1 / 72% / LED 방식 / 60Hz / HDMI / DP포트 / 플리커 프리 / 틸트 / 게임모드 지원 / 75 x 75mm / 35W / 0.3W / HDMI케이블</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">265,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11806"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12253"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12253"><img src="upload/goods/a25689_32_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12253"><font color="#000000"><b>32형 클라인즈 <font color="red">[게이밍] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">32형 게이밍 무결점</font>&nbsp;--><br>81.3cm(32형) / 와이드(16:9) / 평면 / 광시야각 / 1920 x 1080(FHD) / 1(OD)㎳ / 250㏅ / 3,000:1 / 1,000,000:1 / 165Hz / HDMI / DP포트 / DVI / 블루라이트 차단 / 조준선 표시 / Free Sync / 헤드폰 아웃 / 0.5W 이하</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">268,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12253"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11800"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="1"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11800"><img src="upload/goods/a97374_32_lg_white_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11800"><font color="#000000"><b>32형 <font color="blue"><b>LG</b></font> <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">LG 32형 무결점</font>&nbsp;--><br>80cm(32형) / 와이드(16:9) / IPS / 광시야각 / 1920 x 1080(FHD) / 0.363mm / 5(GTG)㎳ / 250㏅ / 1,200:1 / 무한(∞):1 / LED 방식 / 60Hz / HDMI / D-SUB / 플리커 프리 / 블루라이트 차단 / 색약지원 / 틸트 / PIP / 게임모드 지원 / 200 x 100mm / 37W / 0.3W / HDCP 지원 / Black Stabilizer / 블랙</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">273,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11800"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11799"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11799"><img src="upload/goods/a35150_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11799"><font color="#000000"><b>29형 <font color="blue"><b>LG</b></font> <font color="red">[21:9 와이드]</font> <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">LG 29형 무결점</font>&nbsp;--><br><p><span style="color: #000000;">73cm(29인치) / 울트라와이드(21:9) / 평면 / IPS / 광시야각 / 2560 x 1080(WFHD) / 0.2628mm / 5ms(GTG) / 250cd / 1,000:1 / 75Hz / 안티글레어 / sRGB: 100% / HDMI / 플리커 프리 / 블루라이트 차단 / 눈부심 방지 / 게임모드 지원 / 조준선 표시 / 인풋랙 제어 / 블랙 이퀄라이저 / FreeSync / SW 화면분할 / 헤드폰 아웃 / HDCP 지원 / 틸트 / 100 x 100mm / 색약 지원 / HDR / HDR10 / 24.5W / 0.5W / 4.9kg</span></p>
<p>&nbsp;</p>
<p><span style="color: #000000; font-family: 굴림;"><span style="color: #ff0000;"><strong>멀티태스킹</strong></span>의 최강자! &nbsp;21:9 비율의&nbsp;<span style="color: #0000ff;"><strong>울트라와이드</strong></span>&nbsp;모니터</span></p>
<p><span style="color: #000000;">더 넓어진 화면으로</span>&nbsp;<span style="color: #0000ff;"><strong>실감나고 생생하게</strong></span>&nbsp;<span style="color: #000000;">사용할 수 있습니다.</span></p>
<p>&nbsp;</p></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">282,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11799"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11813"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11813"><img src="upload/goods/12018032717074311745.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11813"><font color="#000000"><b>24형 BenQ <font color="red">[게이밍] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">BenQ 24형 무결점</font>&nbsp;--><br>24형(61cm)&nbsp;/ TN패널 / 1920*1080 / 12,000,000:1(동적) / 1ms / 144Hz / 350cd / DVI / HDMI / DisplayPort / 틸트 / 베사홀 / 무결점<font color="#808080"> </font></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">331,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=11813"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12669"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12669"><img src="upload/goods/12019071217332612668.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12669"><font color="#000000"><b>27형 MSI <font color="red">[게이밍 / 커브드] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">27형 게이밍 무결점</font>&nbsp;--><br>27형(68cm) LED LCD(와이드) / VA패널 / 1920*1080 / 1ms / 144hz&nbsp;/ 300cd / HDMI / DisplayPort / miniDP / 높낮이조절/ 틸트 / 무결점</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">387,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12669"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11801"><input type="hidden" name="comparechk_bLimit"   value="2"><input type="hidden" name="comparechk_limitCnt"  value="1"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11801"><img src="upload/goods/a98026_34_lg_210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11801"><font color="#000000"><b>34형 <font color="blue"><b>LG</b></font> <font color="red">[21:9 와이드]</font> <font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">LG 34형 무결점</font>&nbsp;--><br><p><font face="굴림">86.6cm(34형) / 와이드(21:9) / IPS / 광시야각 / 2560 x 1080(WFHD) / 5(GTG)㎳ / 250㏅ / 1,000:1 / 무한(∞):1 / sRGB 100% / LED 방식 / 60Hz / HDMI / 플리커 프리 / 블루라이트 차단 / 눈부심 방지 / 색약지원 / 틸트 / 100 x 100mm / 41W / 0.3W / HDCP 지원 / DAS 모드 / Black Stabilizer</font></p>
<p><font color="#808080" face="굴림"></font>&nbsp;</p>
<p><font color="#000000" face="굴림"><font color="#ff0000"><strong>멀티태스킹</strong></font>의 최강자!&nbsp; 21:9 비율의 <font color="#0000ff"><strong>울트라와이드</strong></font> 모니터</font></p>
<p><font color="#000000">더 넓어진 화면으로</font> <font color="#0000ff"><strong>실감나고 생생하게</strong></font> <font color="#000000">사용할 수 있습니다.</font> </p>
<p>&nbsp;</p></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">394,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><img src="./upload/no_good_img" align="absmiddle">	</td></tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12251"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12251"><img src="upload/goods/12018111611451212221.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12251"><font color="#000000"><b>27형 삼성 <font color="red">[게이밍 / 커브드] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">27형 커브드 게이밍 무결점</font>&nbsp;--><br><p>27형(68.6cm) LED LCD(와이드) / VA패널 / 1920*1080 / 3000:1 / 1ms / 144hz /&nbsp;350cd / HDMI / DisplayPort / 틸트 / 무결점 <!--아이콘만 나올때--></p></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">425,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12251"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="13060"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=13060"><img src="upload/goods/12020032018090011206.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=13060"><font color="#000000"><b>32형 LED <font color="blue"><b>삼성 </b></font><font color="red">[게이밍 / 커브드] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">32형 커브드 게이밍 LED 무결점</font>&nbsp;--><br>80cm(32형) / 와이드(16:9) / VA / 광시야각 / 2560 x 1440(WQHD) / 4(GTG)㎳ / 300㏅ / 3,000:1 / 144Hz / 커브드 1800R / HDMI / HDMI 2.0 / DP포트 / 플리커 프리 / 블루라이트 차단 / 게임모드 지원 / 인풋랙 제어 / Free Sync / 헤드폰 아웃 / 틸트 / 75 x 75mm / 59W / 0.5W 이하 /</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">457,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=13060"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12255"><input type="hidden" name="comparechk_bLimit"   value="2"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12255"><img src="upload/goods/12018111611463612225.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12255"><font color="#000000"><b>32형 LG <font color="red">[게이밍] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">32형 게이밍 무결점</font>&nbsp;--><br>32형(80.1cm) LED LCD(와이드) / VA패널 / 2560*1440 /&nbsp;3000:1 / 1ms / 350cd / 144hz /&nbsp;DVI / HDMI / DisplayPort / 틸트 / 무결점</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">529,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><img src="./upload/no_good_img" align="absmiddle">	</td></tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12252"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12252"><img src="upload/goods/12018111611453212222.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12252"><font color="#000000"><b>27형 BENQ <font color="red">[게이밍] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">27형 게이밍 무결점</font>&nbsp;--><br>27형(68cm) LED LCD(와이드) / TN패널 / 1920*1080 / 1ms / 144hz&nbsp;/ 300cd / DVI / HDMI / DisplayPort / 틸트 / 무결점</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">560,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12252"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="12254"><input type="hidden" name="comparechk_bLimit"   value="0"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=12254"><img src="upload/goods/12018111611461512224.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=12254"><font color="#000000"><b>32형 BENQ <font color="red">[게이밍 / 커브드] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">32형 커브드 게이밍 무결점</font>&nbsp;--><br><p>32형(80.1cm) LED LCD(와이드) / VA패널 / 1920*1080 / 4ms / 144hz /&nbsp;300cd / DVI / HDMI / DisplayPort / 틸트 / 무결점 <!--아이콘만 나올때--></p></td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">564,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><a href="goods_detail.php?goodsIdx=12254"><img src="image/icon/buy_btn.gif" border="0"></a></td>	</tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11809"><input type="hidden" name="comparechk_bLimit"   value="2"><input type="hidden" name="comparechk_limitCnt"  value="1"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11809"><img src="upload/goods/12018032717065911210.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11809"><font color="#000000"><b>27형 <font color="blue"><b>LG </b></font><font color="red">[울트라HD / 4K 해상도] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">LG 27형 4K UHD 무결점</font>&nbsp;--><br>68cm(27형) / 와이드(16:9) / IPS / 광시야각 / 3840 x 2160(UHD 4K) / 0.1554mm / 5(GTG)㎳ / 250㏅ / 1,000:1 / 무한(∞):1 / LED 방식 / 60Hz / HDMI / DP포트 / 플리커 프리 / 블루라이트 차단 / 색약지원 / 틸트 / 게임모드 지원 / 인풋랙 제어 / Free Sync / 100 x 100mm</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">597,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><img src="./upload/no_good_img" align="absmiddle">	</td></tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr><!-- 목록상에서 상품 1개의 상세정보 출력 include 파일 (게시판식) -->
	<tr><!--		<td width="10"><input type="checkbox" name="comparechk" onclick="javascript:compare();" value="11810"><input type="hidden" name="comparechk_bLimit"   value="2"><input type="hidden" name="comparechk_limitCnt"  value="0"></td>-->
		<td width="150" align="center" style="padding: 5 0 5 0"><a href="goods_detail.php?goodsIdx=11810"><img src="upload/goods/12018032717070811211.gif" width="100" height="100" border="0"></a></td>
		<td align="left" valign="middle" colspan="2"><br><a href="goods_detail.php?goodsIdx=11810"><font color="#000000"><b>34형 <font color="blue"><b>LG </b></font><font color="red">[게이밍 / 울트라와이드] </font><font color="gray">[무결점]</font></b></font></a><br><!--<br><font color="#000000">LG 34형 울트라와이드 게이밍</font>&nbsp;--><br>86.6cm(34형) / 와이드(21:9) / IPS(곡면) / 광시야각 / 2560 x 1080 / 5(GTG)㎳ / 250㏅ / 1,000:1 / 10,000,000:1 / 틸트 / 높낮이 조절 / 플리커 프리 / HDMI x2 / DP포트 / 커브드 / HDCP 지원</td>
		<td width="160" align="center"><br><br><br><b><span style="font-size:17px; font-family:verdana; color:#007ce3;">752,000 </span></b><span style="text-align: bottom;"> 원</span></td><td width="100"><br><br><br><img src="./upload/no_good_img" align="absmiddle">	</td></tr>
	<tr>
		<td height="1" colspan="5" background="image/index/dot_width.gif"></td>
	</tr></tbody></table></td>
																						
										</tr>
																				<tr>
											<td colspan="5" align="center"><img src="image/board/btn_prev.gif">&nbsp;&nbsp;&nbsp; 1 &nbsp;&nbsp;&nbsp;<img src="image/board/btn_next.gif"></td>
										</tr>
																				<!-- 상품 목록 끝 --> 
									</tbody></table>
								
							
                        <!-- 카테고리 하단 배너 -->
                                                <!-- 카테고리 하단 배너 끝 -->
		<!-- Footer -->
<table cellspacing="0" cellpadding="0" id="footer" align="center" width="980" height="230">
	<tbody><tr>
		<td align="center" width="980" height="36">
			<table cellspacing="0" cellpadding="0" align="center" height="36">
				<tbody><tr>
					<td>
						<a href="../index.php">
							<img src="images/copy/copyright_01.gif" width="209" height="36" alt=""></a></td>
					<td>
						<a href="../company.php">
							<img src="images/copy/copyright_02.gif" width="82" height="36" border="0" alt=""></a></td>
					<td>
						<a href="../customer_0202.php">
							<img src="images/copy/copyright_03.gif" width="82" height="36" border="0" alt=""></a></td>
					<td>
						<a href="../customer_0201.php">
							<img src="images/copy/copyright_04.gif" width="82" height="36" border="0" alt=""></a></td>
					<td>
						<a href="../customer_0202.php#01">
							<img src="images/copy/copyright_05.gif" width="123" height="36" border="0" alt=""></a></td>
					<td>
						<a href="mailto:coolzen@coolzen.co.kr">
							<img src="images/copy/copyright_06.gif" width="82" height="36" border="0" alt=""></a></td>
					<td>
						<a href="../buy_req.php">
							<img src="images/copy/copyright_07.gif" width="82" height="36" border="0" alt=""></a></td>
					<td>
						<a href="../customer_04.php">
							<img src="images/copy/copyright_08.gif" width="75" height="36" border="0" alt=""></a></td>
					<td>
						<a href="../customer_0201.php">
							<img src="images/copy/copyright_09.gif" width="82" height="36" border="0" alt=""></a></td>
                    <td>
						<a href="../customer_0201.php">
							<img src="images/copy/copyright_10.gif" width="81" height="36" border="0" alt=""></a></td>
                </tr>
			</tbody></table>
		</td>
	</tr>
	<tr>
		<td align="center" width="980" height="119"><img src="images/copy/copyright_11.gif" usemap="#company_info_check" width="980" height="119" border="0" alt=""><map name="company_info_check"><area shape="rect" coords="450,38,530,60" target="_blank" style="cursor: hand;" href="http://www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2007302009530217245" title="사업자정보확인"></map></td>      
    </tr>
	<tr>
		<td align="center" width="980" height="61">
			<table align="center" cellspacing="0" cellpadding="0" height="61">
				<tbody><tr>
					<td><a href="https://www.ftc.go.kr/" target="_blank"><img src="images/copy/copyright_12.gif" width="115" height="61" border="0" alt=""></a></td>
					<td><img src="images/copy/copyright_13.gif" width="114" height="61" alt="인텔 공식인증 파트너 쿨젠"></td>
                    <td><img src="images/copy/copyright_14.gif" width="110" height="61" alt="마이크로소프트 공식인증 파트너 쿨젠"></td>
					<td><a href="https://pgweb.uplus.co.kr:18443/pg/wmp/Home2014/main/" target="_blank"><img src="images/copy/copyright_15.gif" width="98" height="61" border="0" alt=""></a></td>
					<td><a href="https://www.mobilians.co.kr/" target="_blank"><img src="images/copy/copyright_16.gif" width="107" height="61" alt=""></a></td>
					<td><a href="https://www.hometax.go.kr/" target="_blank"><img src="images/copy/copyright_17.gif" width="97" height="61" border="0" alt=""></a></td>
					<td><a href="https://www.ecmc.or.kr/" target="_blank"><img src="images/copy/copyright_18.gif" width="97" height="61" border="0" alt=""></a></td>
					<td><img src="images/copy/copyright_19.gif" width="103" height="61" border="0" onclick="popup_win_pgTrust()" style="cursor:hand"></td>
					<td><a href="#" onclick="window.open('https://www.trustlogo.com/ttb_searcher/trustlogo?v_querytype=W&amp;v_shortname=CL1&amp;v_search=www.coolzen.co.kr&amp;x=6&amp;y=5','_blank','width=370,height=690,scrollbars=no'); return false;"><img src="images/copy/copyright_20.gif" width="139" height="61" border="0" alt=""></a></td>
				</tr>
			</tbody></table>
		</td>
	</tr>
	<tr>
		<td align="center" width="980" height="14"><img src="images/copy/copyright_21.gif" width="980" height="14" alt=""></td>
	</tr>
</tbody></table>


<!-- *) 쇼핑몰에서 검색을 이용한 제품찾기 페이지 -->
<!-- 20200527 AceCounter eCommerce (Product_Search) v8.0 Start   -->
<script language="javascript">
   var _skey='';
</script>
<!-- AceCounter eCommerce (Product_Search) v8.0 End -->

<!-- 20200527 AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc7.acecounter.com','8080','BS4A44042479606','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ="https://"+ Inf[0] +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='https://gtc7.acecounter.com:8080/?uid=BS4A44042479606&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End -->

<!-- 20200527 PlayD TERA Log Search End Script -->
<script>
_LA("IS", '');
</script>

<!-- 20200527 공통 호출 하단 스크립트 : 모든페이지 하단 설치 -->
<!-- PlayD TERA Log Script v1.2 -->
<script>
var _nSA=(function(_g,_s,_p,_d,_i,_h){ 
 if(_i.wgc!=_g){_i.wgc=_g;_i.wrd=(new Date().getTime());
 var _sc=_d.createElement('script');_sc.src=_p+'//sas.nsm-corp.com/'+_s+'gc='+_g+'&rd='+_i.wrd; 
 var _sm=_d.getElementsByTagName('script')[0];_sm.parentNode.insertBefore(_sc, _sm);} return _i;
})('CN5B3520823780','sa-w.js?',location.protocol,document,window._nSA||{},location.hostname);
</script>
<!-- LogAnalytics Script Install -->

<!-- 20200527 naver 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"> </script> 
<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_1d3ac5f5c104";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>

<!-- 20200423 카카오배너광고 검색 head /head 사이 -->
<script type="text/javascript" charset="UTF-8" src="https://t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('211714007491232073').pageView();
      kakaoPixel('211714007491232073').search({
        keyword: ''
      });
</script><!-- Google 리마케팅 태그 코드 -->
<!--------------------------------------------------
리마케팅 태그를 개인식별정보와 연결하거나 민감한 카테고리와 관련된 페이지에 추가해서는 안 됩니다. 리마케팅 태그를 설정하는 방법에 대해 자세히 알아보려면 다음 페이지를 참조하세요. http://google.com/ads/remarketingsetup
--------------------------------------------------->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 993022531;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/993022531/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
</div></body></html>
