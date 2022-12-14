<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<%-- <%@ include file="top.jsp"%> --%>  

<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/style/contactstyle.css">
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/style/mystyle.css">
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
  
  
  
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">


<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->


<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbars/">
<!-- <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->


<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
    <script>
    var malls = false;

    function update_selected() {
      $("#mallSelect").val(0);
      $("#mallSelect").find("option[value!=0]").detach();

      $("#mallSelect").append(malls.filter(".mall" + $(this).val()));
    }
	function update_hidden1(){
		$('#keyword2').val($('#productSelect').val());
	}
	function update_hidden2(){
		$('#keyword3').val($('#mallSelect').val());
	}
    $(function() {
      malls = $("#mallSelect").find("option[value!=0]");
      malls.detach();

      $("#productSelect").change(update_selected);
      $("#productSelect").change(update_hidden1);
      $("#mallSelect").change(update_hidden2);
      
      $("#mallSelect").trigger("change");
      $("#productSelect").trigger("change");
    });
    </script>

<style>
.swiper-button-next, .swiper-rtl .swiper-button-prev {
	color: white !important;
}

.swiper-button-prev {
	color: white;
}

.swiper-pagination-bullet.swiper-pagination-bullet-active {
	background: transparent;
}

ul[class='nav navbar-nav navbarborder'] {
	float: left;
}

.swiper {
	width: 950px;
	margin: 60px auto;
	height: 400px;
	border-radius: 20px;
}

.swiper-image {
	display: inline-block;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-size: 100% auto;
}
</style>

<body>
<jsp:include page="top.jsp"/>
<!-- Slider main container -->
<div class="swiper">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    <div class="swiper-slide">
       <div class="swiper-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/watercar.png')"></div>
   </div>
    <div class="swiper-slide">
       <div class="swiper-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/rentcar.png')"></div>
   </div>
    <div class="swiper-slide">
       <div class="swiper-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/title.png')"></div>
   </div>
  </div>
  <!-- If we need pagination -->
  <div class="swiper-pagination"></div>

  <!-- If we need navigation buttons -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <!-- If we need scrollbar -->
  <div class="swiper-scrollbar"></div>
</div>

<style>
#searchCar {
	-webkit-appearance: none; /* ???????????? ?????? ????????? */
	-moz-appearance: none;
	appearance: none;
	background: url(????????? ??????) no-repeat 95% 50%; /* ????????? ????????? ????????? */
}

/* IE 10, 11??? ???????????? ????????? ????????? */
#searchCar::-ms-expand {
	display: none;
}

#searchCar {
	width: 200px; /* ????????? ???????????? */
	height: 41px;
	padding: .5em .5em; ! important; /* ???????????? ?????? ?????? */
	font-family: inherit; ! important; /* ?????? ?????? */
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 95% 50%; ! important; /* ???????????? ????????? ?????? */
	border: 1px solid #dc3545; ! important;
	border-radius: 0px; ! important; /* iOS ??????????????? ?????? */
	-webkit-appearance: none; ! important; /* ???????????? ?????? ????????? */
	-moz-appearance: none; ! important;
	appearance: none;
	!
	important;
}

#keyword {
	width: 200px; /* ????????? ???????????? */
	height: 41px;
	padding: .5em .5em; /* ???????????? ?????? ?????? */
	font-family: inherit; /* ?????? ?????? */
	border: 1px solid #dc3545;
	border-radius: 0px; /* iOS ??????????????? ?????? */
	-webkit-appearance: none; /* ???????????? ?????? ????????? */
	-moz-appearance: none;
	appearance: none;
	border-color: #dc3545 !important;
	border-top-left-radius: 20px;
	border-bottom-right-radius: 20px;
}

#submit {
	width: 75px; /* ????????? ???????????? */
	height: 41px;
	padding: .5em .5em; /* ???????????? ?????? ?????? */
	font-family: inherit; /* ?????? ?????? */
	border: 1px solid #dc3545 !important;
	border-radius: 0px; /* iOS ??????????????? ?????? */
	-webkit-appearance: none; /* ???????????? ?????? ????????? */
	-moz-appearance: none;
	appearance: none;
	background-color: white;
}

#searchForm {
	text-align: center;
	margin: 10px 0;
}

ul.latest-navleft>li {
	margin-right: 10px;
}

#btn-sch {
	background-color: white;
    border: 1px #dc3545 solid;
    border-radius: 5px;
    padding: 4px 26px;
    font-size: 14px;
    margin-top: 5px;
    line-height: 31px;
    vertical-align: bottom;
}

#productSelect, #mallSelect {
	-webkit-appearance: none; /* ???????????? ?????? ????????? */
	-moz-appearance: none;
	appearance: none;
	background: url(????????? ??????) no-repeat 95% 50%; /* ????????? ????????? ????????? */
}

/* IE 10, 11??? ???????????? ????????? ????????? */
#searchCar::-ms-expand {
	display: none;
}

#mallSelect, #productSelect {
	width: 200px; /* ????????? ???????????? */
	height: 41px;
	padding: .5em .5em; ! important; /* ???????????? ?????? ?????? */
	font-family: inherit; ! important; /* ?????? ?????? */
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 95% 50%; ! important; /* ???????????? ????????? ?????? */
	border: 1px solid #dc3545; ! important;
	border-radius: 0px; ! important; /* iOS ??????????????? ?????? */
	-webkit-appearance: none; ! important; /* ???????????? ?????? ????????? */
	-moz-appearance: none; ! important;
	appearance: none;
	!
	important;
}

#keyword {
	width: 200px; /* ????????? ???????????? */
	height: 41px;
	padding: .5em .5em; /* ???????????? ?????? ?????? */
	font-family: inherit; /* ?????? ?????? */
	border: 1px solid #dc3545;
	border-radius: 0px; /* iOS ??????????????? ?????? */
	-webkit-appearance: none; /* ???????????? ?????? ????????? */
	-moz-appearance: none;
	appearance: none;
	border-color: #dc3545 !important;
	border-top-left-radius: 20px;
	border-bottom-right-radius: 20px;
}

#mallSelect, #productSelect {
	width: 75px; /* ????????? ???????????? */
	height: 41px;
	padding: .5em .5em; /* ???????????? ?????? ?????? */
	font-family: inherit; /* ?????? ?????? */
	border: 1px solid #dc3545 !important;
	border-radius: 0px; /* iOS ??????????????? ?????? */
	-webkit-appearance: none; /* ???????????? ?????? ????????? */
	-moz-appearance: none;
	appearance: none;
	background-color: white;
}

#searchForm {
	text-align: center;
	margin: 10px 0;
}

#whatColumn-text, #keyword-text {
	background-color: white;
	border: 1px lightgray solid;
	border-radius: 5px;
	padding: 4px 8px;
	font-size: 40px;
	margin-top: 5px;
	align: center;
	margin: 10px 0;
	text-align: center;
}
.feturedsection2{ /* ?????? ????????? ????????? ?????? */
padding : 0 500px;
/* background-color: #bdbdbd; */
background-clip: content-box;
border-radius: 30px;

}

</style>
	
	<div class="feturedsection2">
		   <form id="searchForm" action="mainList.ca" method="post">
      <table align="center" text-align="center"><tr><td>
      </td><h3>???????????? ????????? ???????????????</h3></tr>
      <tr><td>
        <select name="whatColumn" style="display:none;" id="whatColumn-text">
      <option value="" selected="selected"/>
      </select>
         <input type="text" style="width:500px;" name="keyword" class="form-control form-control-dark" placeholder="????????? ???????????????(????????? ???????????? ?????? Enter??? ????????????.)" aria-label="Search" onkey
="JavaScript:press(this.form)">
        </td></tr></table>
        </form>
       <form id="searchForm" action="mainList.ca" method="post" style="padding-bottom:50px;">
        <input type="hidden" value="wr"  id="keyword2" name ="keyword2">
        <select name="whatColumn2" id="productSelect" style="width:200px;"id="keyword-text">
       <option value="0" selected>?????????
       <c:forEach var="x" items="${comLists}" varStatus="status">
       <option value="${x.company}" >${x.company}
         </c:forEach>
       </select>
    
        <input type="hidden" value="wr2" name="keyword3" id="keyword3">
        <select name="whatColumn3" id="mallSelect" style="width:200px;" id="keyword-text">
        <option value="0" selected>??????
    <c:forEach var="y" items="${modLists}">
       <option value="${y.model}" class="mall${y.company}">${y.model}
    </c:forEach>
    
    </select>
        <input id="btn-sch" type="submit" value="??????" style="cursor: pointer;">
        </form>
        
        </div>

   <!-- ____________________Featured Section ______________________________-->
   <div class="allcontain">


      <!-- ________________________LATEST CARS SECTION _______________________-->
      <div class="latestcars">
         <ul class="nav nav-tabs navbar-left latest-navleft">
            <li role="presentation" class="li-sortby"><span class="sortby"> </span></li>
            <li role="presentation"><a href="#" class="alphSort">????????????
            </a></li>
            <li data-filter=".HPRICE" role="presentation"><a href="#"
               class="prcBtnH">?????? ????????? </a></li>
            <li data-filter=".LPRICE" role="presentation"><a href="#"
               class="prcBtnL">?????? ?????????</a></li>
            <li id="hideonmobile">
         </ul>
      </div>
      
      <!-- ________________________Latest Cars Image Thumbnail________________--> <!-- ????????? ????????? ?????? ????????? ?????? ????????? : 286x329 -->
      <div class="grid">
         <div class="row">
            <c:forEach begin="0" end="7" items="${lists}" var="item">
               		<c:set var="images" value="${fn:split(item.cimage,',')}" />
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
						<div class="txthover">
							<img width="327" height="376" src="<%=request.getContextPath()%>/resources/images/${images[0]}"
								alt="car1"> <!-- img ????????? ?????? ?????? ??????, ?????? ????????? ?????? ????????? ???????????? ????????? ???????????????. ????????? ??????..?-->
							<div class="txtcontent">
								<div class="stars">
									<div class="glyphicon glyphicon-star"></div>
									<div class="glyphicon glyphicon-star"></div>
									<div class="glyphicon glyphicon-star"></div>
								</div>
								<div class="simpletxt">
									<h3 class="name">${item.carname}</h3>
									<br>
									<h4 class="price">
            							<fmt:formatNumber value="${item.cprice}" pattern="####"/>??????
            						</h4>
									<div class="wishtxt">
										<p class="paragraph1" onclick="wish('${item.cnum}','${item.cid}')">??? ?????????</p>
										<p class="paragraph2" onclick="window.location.href='carDetailView.ca?cnum=${item.cnum}'">
											????????? <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
												alt="compicon"></span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
         </div>
      </div>



      <div class="feturedsection">
         <h1 class="text-center">
            <span>&bullet; ??? ??? ??? ??? &bullet;</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span>&bullet; F A Q &bullet;</span>
         </h1>
      </div>
      <div class="feturedimage"> <!-- div .row firstrow ??? div .row costumrow??? ????????? ?????? ????????? ?????????????????????. -->
         <div class="row firstrow">
            <div class="col-lg-6 costumcol colborder1">
               <div class="row costumrow">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
                     <img
                        src="<%=request.getContextPath()%>/resources/image/featurporch.jpg"
                        alt="porsche">
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                     <div class="featurecontant">
                        <h1>[??????][?????????]</h1>
                        <p style="overflow:hidden;">
                           "?????? ???????????? ????????? ?????????"<br> ??? ????????? ?????? ?????????????????????.
                        </p>
                        <button id="btnRM" onclick="window.location.href='list.reb'">?????????</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 costumcol colborder2">
               <div class="row costumrow">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
                     <img
                        src="<%=request.getContextPath()%>/resources/image/featurporch1.jpg"
                        alt="porsche1">
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
                     <div class="featurecontant">
                        <h1>F A Q</h1>
                        <p style="overflow:hidden;">
                           ???????????? ??? ?????? ????????? ?????? ?????? ???????????? ????????? ???????????????
                        </p>
                        <button id="btnRM2" onclick="window.location.href='list.fq'">?????????</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

   </div>
   <script>
      (function(i, s, o, g, r, a, m) {
         i['GoogleAnalyticsObject'] = r;
         i[r] = i[r] || function() {
            (i[r].q = i[r].q || []).push(arguments)
         }, i[r].l = 1 * new Date();
         a = s.createElement(o), m = s.getElementsByTagName(o)[0];
         a.async = 1;
         a.src = g;
         m.parentNode.insertBefore(a, m)
      })(window, document, 'script',
            '//www.google-analytics.com/analytics.js', 'ga');

      ga('create', 'UA-1913063-2', 'auto');
      ga('send', 'pageview');
   </script>

   <script type="text/javascript"
      src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/jquery.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/resources/source/js/isotope.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/resources/source/js/myscript.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>

   <script>
      $(document).ready(function () {
         const swiper = new Swiper('.swiper', {
           loop: true,
           autoplay: {
            delay: 3000,
           },

           // If we need pagination
           pagination: {
             el: '.swiper-pagination',
           },

           // Navigation arrows
           navigation: {
             nextEl: '.swiper-button-next',
             prevEl: '.swiper-button-prev',
           },

           // And if we need scrollbar
           scrollbar: {
             el: '.swiper-scrollbar',
           },
         });
      })
      function wish(cnum,cid){
         location.href = "wishadd.mall?cnum="+cnum+"&cid="+cid;
      }
   </script>

</body>

<%@ include file="bottom.jsp"%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/style/contactstyle.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/style/mystyle.css">
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
    <script>
    var malls = false;

    function update_selected() {
      $("#mallSelect").val(0);
      $("#mallSelect").find("option[value!=0]").detach();

      $("#mallSelect").append(malls.filter(".mall" + $(this).val()));
    }
	function update_hidden1(){
		$('#keyword2').val($('#productSelect').val());
	}
	function update_hidden2(){
		$('#keyword3').val($('#mallSelect').val());
	}
    $(function() {
      malls = $("#mallSelect").find("option[value!=0]");
      malls.detach();

      $("#productSelect").change(update_selected);
      $("#productSelect").change(update_hidden1);
      $("#mallSelect").change(update_hidden2);
      
      $("#mallSelect").trigger("change");
      $("#productSelect").trigger("change");
    });
    </script>
<style>
.swiper-button-next, .swiper-rtl .swiper-button-prev {
	color: white !important;
}
.swiper-button-prev {
    color: white;
}

.swiper-pagination-bullet.swiper-pagination-bullet-active {
    background: transparent;
}
ul[class='nav navbar-nav navbarborder'] {
	float: left;
}


.swiper {
    width: 950px;
    margin: 0 auto;
    height: 400px;
    border-radius: 20px;
}

.swiper-image {
	display: inline-block;
	width: 100%;
	height: 100%;
    background-repeat: no-repeat;
    background-size: 100% auto;
}
</style>
<body>

<!-- Slider main container -->
<div class="swiper">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    <div class="swiper-slide">
    	<div class="swiper-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/genesis.png')"></div>
	</div>
    <div class="swiper-slide">
    	<div class="swiper-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/sportage.png')"></div>
	</div>
    <div class="swiper-slide">
    	<div class="swiper-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/palisade3.png')"></div>
	</div>
  </div>
  <!-- If we need pagination -->
  <div class="swiper-pagination"></div>

  <!-- If we need navigation buttons -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <!-- If we need scrollbar -->
  <div class="swiper-scrollbar"></div>
</div>

<style>
#searchCar {
  -webkit-appearance: none;  /* ???????????? ?????? ????????? */
  -moz-appearance: none;
  appearance: none;
  background: url(????????? ??????) no-repeat 95% 50%;  /* ????????? ????????? ????????? */ 
}

/* IE 10, 11??? ???????????? ????????? ????????? */
#searchCar::-ms-expand { 
  display: none;
}
#searchCar{
  width: 200px; /* ????????? ???????????? */
   height:41px;
  padding: .5em .5em; !important;/* ???????????? ?????? ?????? */
  font-family: inherit;  !important;/* ?????? ?????? */
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; !important;/* ???????????? ????????? ?????? */  
  border: 1px solid #dc3545; !important;
  border-radius: 0px; !important;/* iOS ??????????????? ?????? */
  -webkit-appearance: none;  !important;/* ???????????? ?????? ????????? */
  -moz-appearance: none; !important;
  appearance: none; !important;

}
#keyword{
 width: 200px; /* ????????? ???????????? */
 height:41px;
  padding: .5em .5em; /* ???????????? ?????? ?????? */
  font-family: inherit;  /* ?????? ?????? */
  border: 1px solid #dc3545; 
  border-radius: 0px; /* iOS ??????????????? ?????? */
  -webkit-appearance: none; /* ???????????? ?????? ????????? */
  -moz-appearance: none;
  appearance: none;
  border-color: #dc3545!important;
  border-top-left-radius: 20px;
  border-bottom-right-radius: 20px;
}
#submit{
 width: 75px; /* ????????? ???????????? */
 height:41px;
  padding: .5em .5em; /* ???????????? ?????? ?????? */
  font-family: inherit;  /* ?????? ?????? */
  border: 1px solid #dc3545!important; 
  border-radius: 0px; /* iOS ??????????????? ?????? */
  -webkit-appearance: none; /* ???????????? ?????? ????????? */
  -moz-appearance: none;
  appearance: none;
  background-color: white;
}

#searchForm {
	text-align: center;
    margin: 10px 0;
}

ul.latest-navleft > li {
    margin-right: 10px;
}
#btn-sch{
      background-color: white;
       border: 1px lightgray solid;
       border-radius: 5px;
       padding: 4px 8px;
       font-size: 13px;
        margin-top: 5px;
   }

#productSelect,#mallSelect{
  -webkit-appearance: none;  /* ???????????? ?????? ????????? */
  -moz-appearance: none;
  appearance: none;
  background: url(????????? ??????) no-repeat 95% 50%;  /* ????????? ????????? ????????? */ 
}

/* IE 10, 11??? ???????????? ????????? ????????? */
#searchCar::-ms-expand { 
  display: none;
}
#mallSelect,#productSelect{
  width: 200px; /* ????????? ???????????? */
   height:41px;
  padding: .5em .5em; !important;/* ???????????? ?????? ?????? */
  font-family: inherit;  !important;/* ?????? ?????? */
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; !important;/* ???????????? ????????? ?????? */  
  border: 1px solid #dc3545; !important;
  border-radius: 0px; !important;/* iOS ??????????????? ?????? */
  -webkit-appearance: none;  !important;/* ???????????? ?????? ????????? */
  -moz-appearance: none; !important;
  appearance: none; !important;

}
#keyword{
 width: 200px; /* ????????? ???????????? */
 height:41px;
  padding: .5em .5em; /* ???????????? ?????? ?????? */
  font-family: inherit;  /* ?????? ?????? */
  border: 1px solid #dc3545; 
  border-radius: 0px; /* iOS ??????????????? ?????? */
  -webkit-appearance: none; /* ???????????? ?????? ????????? */
  -moz-appearance: none;
  appearance: none;
  border-color: #dc3545!important;
  border-top-left-radius: 20px;
  border-bottom-right-radius: 20px;
}
#mallSelect,#productSelect{
 width: 75px; /* ????????? ???????????? */
 height:41px;
  padding: .5em .5em; /* ???????????? ?????? ?????? */
  font-family: inherit;  /* ?????? ?????? */
  border: 1px solid #dc3545!important; 
  border-radius: 0px; /* iOS ??????????????? ?????? */
  -webkit-appearance: none; /* ???????????? ?????? ????????? */
  -moz-appearance: none;
  appearance: none;
  background-color: white;
}

#searchForm {
   text-align: center;
    margin: 10px 0;
}
   #whatColumn-text, #keyword-text{
      background-color: white;
      border: 1px lightgray solid;
      border-radius: 5px;
      padding: 4px 8px;
      font-size: 40px;
        margin-top: 5px;
        align: center;
       margin: 10px 0;
        text-align: center;
   }

</style>


<div class="feturedsection">
      <form id="searchForm"class="col-6  col-lg-auto mb-3 mb-lg-0 me-lg-3" action="mainList.ca" method="post">
      <table align="center" text-align="center"><tr><td>
        <select name="whatColumn" style="display:none;" id="whatColumn-text">
      <option value="" selected="selected"/>
      </select>
         <input type="text" style="width:500px;" name="keyword" class="form-control form-control-dark" placeholder="????????? ???????????????(????????? ???????????? ?????? Enter??? ????????????.)" aria-label="Search" onkey
="JavaScript:press(this.form)">
        </td></tr></table>
        </form>
       <form id="searchForm" class="col-6 col-lg-auto mb-3 mb-lg-0 me-lg-3" action="mainList.ca" method="post">
        <input type="hidden" value="wr"  id="keyword2" name ="keyword2">
        <select name="whatColumn2" id="productSelect" style="width:200px;"id="keyword-text">
       <option value="0" selected>?????????
       <c:forEach var="x" items="${comLists}" varStatus="status">
       <option value="${x.company}" >${x.company}
         </c:forEach>
       </select>
    
        <input type="hidden" value="wr2" name="keyword3" id="keyword3">
        <select name="whatColumn3" id="mallSelect" style="width:200px;" id="keyword-text">
        <option value="0" selected>??????
    <c:forEach var="y" items="${modLists}">
       <option value="${y.model}" class="mall${y.company}">${y.model}
    </c:forEach>
    
    </select>
        <input id="btn-sch" type="submit" value="??????" style="cursor: pointer;">
        </form> 
        </div>

	<!-- ____________________Featured Section ______________________________-->
	<div class="allcontain">


		<!-- ________________________LATEST CARS SECTION _______________________-->
		<div class="latestcars">
			<h1 class="text-center"><p></p></h1>
			<ul class="nav nav-tabs navbar-left latest-navleft">
				<li role="presentation" class="li-sortby"><span class="sortby"> </span></li>
				<li role="presentation"><a href="#" class="alphSort">????????????
				</a></li>
				<li data-filter=".HPRICE" role="presentation"><a href="#"
					class="prcBtnH">?????? ????????? </a></li>
				<li data-filter=".LPRICE" role="presentation"><a href="#"
					class="prcBtnL">?????? ?????????</a></li>
				<li id="hideonmobile">
			</ul>
		</div>
		
		<!-- ________________________Latest Cars Image Thumbnail________________--> <!-- ????????? ????????? ?????? ????????? ?????? ????????? : 286x329 -->
		<div class="grid">
			<div class="row">
				<c:forEach begin="0" end="7" items="${lists}" var="item">
               		<c:set var="images" value="${fn:split(item.cimage,',')}" />
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
						<div class="txthover">
							<img width="327" height="376" src="<%=request.getContextPath()%>/resources/images/${images[0]}"
								alt="car1"> <!-- img ????????? ?????? ?????? ??????, ?????? ????????? ?????? ????????? ???????????? ????????? ???????????????. ????????? ??????..?-->
							<div class="txtcontent">
								<div class="stars">
									<div class="glyphicon glyphicon-star"></div>
									<div class="glyphicon glyphicon-star"></div>
									<div class="glyphicon glyphicon-star"></div>
								</div>
								<div class="simpletxt">
									<h3 class="name">${item.carname}</h3>
									<br>
									<h4 class="price">
            							<fmt:formatNumber value="${item.cprice}" pattern="####"/>??????
            						</h4>
									<div class="wishtxt">
										<p class="paragraph1" onclick="wish('${item.cnum}','${item.cid}')">??? ?????????</p>
										<p class="paragraph2" onclick="window.location.href='carDetailView.ca?cnum=${item.cnum}'">
											????????? <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
												alt="compicon"></span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>



		<div class="feturedsection">
			<h1 class="text-center">
				<span>&bullet; ??? ??? ??? ??? &bullet;</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span>&bullet; F A Q &bullet;</span>
			</h1>
		</div>
		<div class="feturedimage"> <!-- div .row firstrow ??? div .row costumrow??? ????????? ?????? ????????? ?????????????????????. -->
			<div class="row firstrow">
				<div class="col-lg-6 costumcol colborder1">
					<div class="row costumrow">
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
							<img
								src="<%=request.getContextPath()%>/resources/image/featurporch.jpg"
								alt="porsche">
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
							<div class="featurecontant">
								<h1>[??????][?????????]</h1>
								<p style="overflow:hidden;">
									"?????? ???????????? ????????? ?????????"<br> ??? ????????? ?????? ?????????????????????.
								</p>
								<button id="btnRM" onclick="window.location.href='list.reb'">?????????</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 costumcol colborder2">
					<div class="row costumrow">
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
							<img
								src="<%=request.getContextPath()%>/resources/image/featurporch1.jpg"
								alt="porsche1">
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
							<div class="featurecontant">
								<h1>F A Q</h1>
								<p style="overflow:hidden;">
									???????????? ??? ?????? ????????? ?????? ?????? ???????????? ????????? ???????????????
								</p>
								<button id="btnRM2" onclick="window.location.href='list.fq'">?????????</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-1913063-2', 'auto');
		ga('send', 'pageview');
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/jquery.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/js/isotope.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/js/myscript.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>

	<script>
		$(document).ready(function () {
			const swiper = new Swiper('.swiper', {
			  loop: true,
			  autoplay: {
			   delay: 3000,
			  },

			  // If we need pagination
			  pagination: {
			    el: '.swiper-pagination',
			  },

			  // Navigation arrows
			  navigation: {
			    nextEl: '.swiper-button-next',
			    prevEl: '.swiper-button-prev',
			  },

			  // And if we need scrollbar
			  scrollbar: {
			    el: '.swiper-scrollbar',
			  },
			});
		})
		function wish(cnum,cid){
			location.href = "wishadd.mall?cnum="+cnum+"&cid="+cid;
		}
	</script>

</body>

<%@ include file="bottom.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/style/contactstyle.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/style/mystyle.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/style/slider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resourcessource/font-awesome-4.5.0/css/font-awesome.css">
<%@ include file="top.jsp"%>
 <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
    <script>
    var malls = false;

    function update_selected() {
      $("#mallSelect").val(0);
      $("#mallSelect").find("option[value!=0]").detach();

      $("#mallSelect").append(malls.filter(".mall" + $(this).val()));
    }
	function update_hidden1(){
		$('#keyword2').val($('#productSelect').val());
	}
	function update_hidden2(){
		$('#keyword3').val($('#mallSelect').val());
	}
    $(function() {
      malls = $("#mallSelect").find("option[value!=0]");
      malls.detach();

      $("#productSelect").change(update_selected);
      $("#productSelect").change(update_hidden1);
      $("#mallSelect").change(update_hidden2);
      
      $("#mallSelect").trigger("change");
      $("#productSelect").trigger("change");
    });
    </script>
<style>
ul[class='nav navbar-nav navbarborder'] {
	float: left;
}
</style>
<body>
	<div class="allcontain">
		<div id="carousel-up" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner " role="listbox">
				<div class="item active">
					<img src="<%=request.getContextPath()%>/resources/image/oldcar.jpg"
						alt="oldcar">
					<div class="carousel-caption">
						<h2>Porsche 356</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur ,<br> sed do eiusmod
							tempor incididunt ut labore
						</p>
					</div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/image/porche.jpg"
						alt="porche">
					<div class="carousel-caption">
						<h2>Porche</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur ,<br> sed do eiusmod
							tempor incididunt ut labore
						</p>
					</div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/image/benz.jpg"
						alt="benz">
					<div class="carousel-caption">
						<h2>Car</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur ,<br> sed do eiusmod
							tempor incididunt ut labore
						</p>
					</div>
				</div>
			</div>
			<nav class="navbar navbar-default midle-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed textcostume"
						data-toggle="collapse" data-target="#navbarmidle"
						aria-expanded="false">
						<h1>SEARCH TEXT</h1>
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- <div class="collapse navbar-collapse" id="navbarmidle">
					<div class="searchtxt">
						<h1>SEARCH TEXT</h1>
					</div>
					 <form class="navbar-form navbar-left searchformmargin"
						role="search">
						<div class="form-group">
							<input type="text" class="form-control searchform"
								placeholder="Enter Keyword">
						</div>
					</form>
					 <ul class="nav navbar-nav navbarborder">
						<li class="li-category"><a
							class="btn  dropdown-toggle btn-costume" id="dropdownMenu1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Category<span
								class="glyphicon glyphicon-chevron-down downicon"></span></a>
							<ul class="dropdown-menu" id="mydd">
								<li><a href="#">Epic</a></li>
								<li><a href="#">Old</a></li>
								<li><a href="#">New</a></li>
							</ul></li>
						<li class="li-minyear"><a
							class="btn  dropdown-toggle btn-costume" id="dropdownMenu2"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Min
								Year <span class="glyphicon glyphicon-chevron-down downicon"></span>
						</a>
							<ul class="dropdown-menu" id="mydd2">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
							</ul></li>
						<li class="li-maxyear"><a
							class="btn dropdown-toggle btn-costume" id="dropdownMenu3"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Max
								Year <span class="glyphicon glyphicon-chevron-down downicon"></span>
						</a>
							<ul class="dropdown-menu" id="mydd3">
								<li><a href="#">1900</a></li>
								<li><a href="#">2000</a></li>
								<li><a href="#">2016</a></li>
							</ul></li>
						<li class="li-slideprice">
							<p>
								<label class="slidertxt" for="amount">Price </label> <input
									class="priceslider" type="text" id="amount" readonly="readonly">
							</p>
							<div id="slider-range"></div>

						</li>
						<li class="li-search">
							<button class="searchbutton">
								<span class="glyphicon glyphicon-search "></span>
							</button>
						</li>
					</ul> 

				</div> -->
		 <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" action="mainList.ca" method="post">
     	<input type="hidden" value="wr" id="keyword2" name ="keyword2">
     	<select name="whatColumn2" id="productSelect">
    	<option value="0" selected>?????????
    	<c:forEach var="x" items="${comLists}" varStatus="status">
    	<option value="${x.company}" >${x.company}
   		</c:forEach>
    	</select>
    
     	<input type="hidden" value="wr2" name="keyword3" id="keyword3">
        <select name="whatColumn3" id="mallSelect">
        <option value="0" selected>??????
    <c:forEach var="y" items="${modLists}">
    	<option value="${y.model}" class="mall${y.company}">${y.model}
    </c:forEach>
    
    </select>
        <input type="submit" value="??????">
        </form> 
        <form class="col-4  mb-3 mb-lg-0 me-lg-3" action="mainList.ca" method="post">
         <select name="whatColumn" style="display:none;">
			<option value="" selected="selected"/>
			</select>
          <input type="text" name="keyword" class="form-control form-control-dark" placeholder="????????? ???????????????" aria-label="Search" onkeypress="JavaScript:press(this.form)">
        </form>
      		</nav>
		</div>
	</div>
        
       
	
	<!-- ____________________Featured Section ______________________________-->
	<div class="allcontain">


		<!-- ________________________LATEST CARS SECTION _______________________-->
		<div class="latestcars">
			<h1 class="text-center">&bullet; LATEST CARS &bullet;</h1>
			<ul class="nav nav-tabs navbar-left latest-navleft">
				<li role="presentation" class="li-sortby"><span class="sortby">SORT
						BY: </span></li>
				<li data-filter=".RECENT" role="presentation"><a
					href="#mostrecent" class="prcBtnR">MOST RECENT </a></li>
				<li data-filter=".POPULAR" role="presentation"><a
					href="#mostpopular" class="prcBtnR">MOST POPULAR </a></li>
				<li role="presentation"><a href="#" class="alphSort">ALPHABETICAL
				</a></li>
				<li data-filter=".HPRICE" role="presentation"><a href="#"
					class="prcBtnH">HIGHEST PRICE </a></li>
				<li data-filter=".LPRICE" role="presentation"><a href="#"
					class="prcBtnL">LOWEST PRICE </a></li>
				<li id="hideonmobile">
			</ul>
		</div>
		<br> <br>
		<!-- ________________________Latest Cars Image Thumbnail________________--> <!-- ????????? ????????? ?????? ????????? ?????? ????????? : 286x329 -->
		<div class="grid">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img width="327" height="376" src="<%=request.getContextPath()%>/resources/images/k5 3?????? 1.6 ?????? ???????????? 1.jpg"
							alt="car1"> <!-- img ????????? ?????? ?????? ??????, ?????? ????????? ?????? ????????? ???????????? ????????? ???????????????. ????????? ??????..?-->
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">?????????</h3>
								<p>
									"1997??? 1??? 1??????<br> ????????? ????????? ?????????"
								</p>
								<h4 class="price">?????? 1234&euro;</h4>
								<button>??? ??????</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										????????? <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										?????????????????? 15??? <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
					<div class="txthover">
						<img src="<%=request.getContextPath()%>/resources/image/car2.jpg"
							alt="car2">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Renault</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="price">900 &euro;</h4>
								<button>READ MORE</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Add to Wishlist <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="<%=request.getContextPath()%>/resources/image/car3.jpg"
							alt="car3">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Ford Mustang</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="price">3000 &euro;</h4>
								<button>READ MORE</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Add to Wishlist <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="<%=request.getContextPath()%>/resources/image/car4.jpg"
							alt="car4">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Rover</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="price">1000 &euro;</h4>
								<button>READ MORE</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Add to Wishlist <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="<%=request.getContextPath()%>/resources/image/car5.jpg"
							alt="car5">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Porche</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="price">1200 &euro;</h4>
								<button>READ MORE</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Add to Wishlist <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="<%=request.getContextPath()%>/resources/image/car6.jpg"
							alt="car6">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Porche 911</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="price">4000 &euro;</h4>
								<button>READ MORE</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Add to Wishlist <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="<%=request.getContextPath()%>/resources/image/car7.jpg"
							alt="car7">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Chevrolet SS</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="price">3000 &euro;</h4>
								<button>READ MORE</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Add to Wishlist <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="<%=request.getContextPath()%>/resources/image/car8.jpg"
							alt="car8">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Meclaren</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="price">2500 &euro;</h4>
								<button>READ MORE</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Add to Wishlist <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="<%=request.getContextPath()%>/resources/image/compicon.png"
											alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="feturedsection">
			<h1 class="text-center">
				<span class="bdots"></span>&bullet; ??? ??? ??? ??? &bullet;<span
					class="carstxt">&bullet; F A Q &bullet;</span>
			</h1>
		</div>
		<div class="feturedimage"> <!-- div .row firstrow ??? div .row costumrow??? ????????? ?????? ????????? ?????????????????????. -->
			<div class="row firstrow">
				<div class="col-lg-6 costumcol colborder1">
					<div class="row costumrow">
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
							<img
								src="<%=request.getContextPath()%>/resources/image/featurporch.jpg"
								alt="porsche">
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
							<div class="featurecontant">
								<h1>[??????][?????????]</h1>
								<p style="overflow:hidden;">
									"?????? ???????????? ????????? ?????????"<br> ??? ????????? ?????? ?????????????????????.
								</p>
								<h2>2000??????</h2>
								<button id="btnRM" onclick="rmtxt()">?????????</button>
								<div id="readmore">
									<h1>????????? 2.0 ?????????</h1>
									<p > <!-- overflow:hidden ?????? ???????????? ????????? ????????? ???????????? -->
										????????? ????????? ????????? ?????? ????????? ?????? ????????????dsadasdasdsa <!-- br?????? ?????? ?????? ????????? ??? ??? ?????? ?????? overflow:hidden ?????? ???????????????. -->
										?????????dasfdsf??? <!-- ?????? ??? ????????? '?????? ????????????'?????? ????????? ?????? ?????????, '?????????' ~ '????????????' ???????????? ????????? ??????????????????, ?????? p???????????? ????????? ?????? ????????? ?????? ?????? ????????? ??????, ?????? ?????? ????????? ??????????????? ????????????/.. -->
									</p>
									<button id="btnRL">??????</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 costumcol colborder2">
					<div class="row costumrow">
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
							<img
								src="<%=request.getContextPath()%>/resources/image/featurporch1.jpg"
								alt="porsche1">
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
							<div class="featurecontant">
								<h1>F A Q</h1>
								<p style="overflow:hidden;">
									???????????? ??? ?????? ????????? ?????? ?????? ???????????? ????????? ???????????????
								</p>
								<h2>????????? ?????? ????????? ?????? &euro;</h2>
								<button id="btnRM2">?????????</button>
								<div id="readmore2">
									<h1>??????</h1>
									<p style="overflow:hidden;">
										????????? ??? ????????? ?????????. ?????? ?????? ????????? ??????????????????.
									</p>
									<button id="btnRL2">??????</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-1913063-2', 'auto');
		ga('send', 'pageview');
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/jquery.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/js/isotope.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/js/myscript.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>


</body>

<%@ include file="bottom.jsp"%> --%>