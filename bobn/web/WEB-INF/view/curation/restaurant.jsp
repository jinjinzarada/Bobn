<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOBn-맛집추천</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous">
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8de45e528b9f32ce1d3ab18b8139f297&libraries=services"></script>
<script>

function tablecreate(){
	var html = '';
	var radiocount = $('input[name="resname_radio"]').length;
	console.log(radiocount);
	for(i=1; i<radiocount+1; i++){
	html += '<tr>';
	html += '<td>'+i+'</td>';
	html += '<td>'+$('.nav_resname').eq(i-1).text()+'</td>';
	html += '<td>'+$('.doro').eq(i-1).text()+'</td>';
	html += '<td>'+$('.jibun').eq(i-1).text()+'</td>';
	html += '<td>'+$('.tel').eq(i-1).text()+'</td>';
	html += '</tr>';
	
	}
	$("#dynamic_tbody").append(html);
				
	
}


function _excelDown(fileName, sheetName, sheetHtml) { 
	var html = ''; 
	html += '<html xmlns:x="urn:schemas-microsoft-com:office:excel">'; 
	html += ' <head>'; 
	html += ' <meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">'; 
	html += ' <xml>'; 
	html += ' <x:ExcelWorkbook>'; 
	html += ' <x:ExcelWorksheets>'; 
	html += ' <x:ExcelWorksheet>' 
	html += ' <x:Name>' + sheetName + '</x:Name>'; // 이게 시트 이름 개피곤하다 진짜
	html += ' <x:WorksheetOptions><x:Panes></x:Panes></x:WorksheetOptions>'; 
	html += ' </x:ExcelWorksheet>'; 
	html += ' </x:ExcelWorksheets>'; 
	html += ' </x:ExcelWorkbook>'; 
	html += ' </xml>'; 
	html += ' </head>'; 
	html += ' <body>'; 
	// ----------------- 시트 내용 부분 ----------------- 
	html += sheetHtml; 
	//시트 내용 부분 ----------------- 
	html += ' </body>'; 
	html += '</html>'; 
	// 데이터 타입 
	var data_type = 'data:application/vnd.ms-excel'; 
	var ua = window.navigator.userAgent; 
	var blob = new Blob([html], {type: "application/csv;charset=utf-8;"}); 
	if ((ua.indexOf("MSIE ") > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) && window.navigator.msSaveBlob) { 
			// ie이고 msSaveBlob 기능을 지원하는 경우 - 이거는 그냥 알고 넘어가자 이해가 어렵다
			navigator.msSaveBlob(blob, fileName); 
		} else { 
			// ie가 아닌 경우 (바로 다운이 되지 않기 때문에 클릭 버튼을 만들어 클릭을 임의로 수행하도록 처리) 
			var anchor = window.document.createElement('a'); 
			anchor.href = window.URL.createObjectURL(blob); 
			anchor.download = fileName; 
			document.body.appendChild(anchor); 
			anchor.click(); 
			// 클릭(다운) 후 요소 제거 
			document.body.removeChild(anchor); 
			} 
	}
	
	function downloadexcel(){ //대상 테이블을 가져옴 
		var table = document.getElementById("tablerestaurantinfo"); 
		if(table){ // CASE 대상 테이블이 존재하는 경우 
			// 엑셀다운 (엑셀파일명, 시트명, 내부데이터HTML) 
			_excelDown("식당정보.xls", "시트1", document.getElementById("tablerestaurantinfo").outerHTML); 
			} 
	}

</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap%27');
* {
	font-family: 'Noto Sans', sans-serif !important;
}
.modal {
	     position: fixed;
	     top: 0;
	     left: 0;
	     width: 100%;
	     height: 100%;
	     display: flex;
	     justify-content: center;
	     align-items: center;
	   }
	
.modal .bg {
	     width: 100%;
	     height: 100%;
	     background-color: rgba(0, 0, 0, 0.6);
	  	}
	
.modalBox {
	     position: absolute;
	     background-color: #fff;
	     width: 700px;
	     height: 320px;
	     padding: 15px;
	   }
	
.modalBox button {
	     display: block;
	     width: 80px;
	     margin: auto;
	     margin-top: 5%;
	     margin-bottom: 5%;
	     background: #fb9300;
	    border: 1px solid #fb9300;
	    color: white;
	    transition: 0.3s;
	   }
.modalBox button:hover {
		background: white;
    	color: #fb9300;
		}
	   
.hidden {
          display: none;
        }

#userinput_wrap{
	margin: auto;
	text-align: left;
	width: 1200px;
	padding-left: 9.111px;
	margin-top: 1.5%;
	margin-bottom: -1%;
	display: flex;
	flex-direction: column;
	
}
#userinput2_wrap{
	width: 100vw;
	word-break: break-all;
	white-space:wrap; 
}
#userinput3_wrap{
	margin-top: 0.5%;
	float: left;
	width: 100vw;
	
}

#userinput_commitbutton{
	background: #fb9300;
    border: 1px solid #fb9300;
    color: white;
    transition: 0.3s;
}
#userinput_commitbutton:hover{
	background: white;
    color: #fb9300;
}

.resizemap{
	background: #fb9300;
    border: 1px solid #fb9300;
    color: white;
    transition: 0.3s;
}
.resizemap:hover{
	background: white;
    color: #fb9300;
}

#line1, #line2, #line3{
	background-color: #F54748;
	height:2px;
	width: 70%;
	margin: auto;
	margin-bottom: 1%;
}

#placelisttitle{
	margin: auto;
	width: 70%;
	margin-bottom: 1%;
	font-weight: bold;
}

#placesList{
	padding-left: 0;
	margin: auto;
	width: 70%;
	
}
#pagination{
	margin: auto;
	width: 70%;
}
#exceldown_wrap{
	margin: auto;
	text-align: left;
	width:70%;
	margin-top: 1.5%;
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	
	
}
.search{
	margin: auto;
	text-align: left;
	width: 70%;
	
	margin-top: 1.5%;
	margin-bottom: 1.5%;
	
}
#sectionall{
	margin: auto;
	item-align: left;
}

#l_excelbtn{
	background: #fb9300;
    border: 1px solid #fb9300;
    color: white;
    transition: 0.3s;
     margin-right: 1%;
     flex-shrink: 0;
     margin-top:2px;
}
#l_excelbtn:hover{
	background: white;
    color: #fb9300;
}
.openBtn{
	background: #fb9300;
    border: 1px solid #fb9300;
    color: white;
    transition: 0.3s;
    margin-top:2px;
    flex-shrink: 0;
}
.openBtn:hover{
	background: white;
    color: #fb9300;
}
#naverbtntagcopy{
	background: #fb9300;
    border: 1px solid #fb9300;
    color: white;
    transition: 0.3s;
    flex-shrink: 0;
    margin-right: 1%;
    margin-top:2px;
}
#naverbtntagcopy:hover{
	background: white;
    color: #fb9300;
}

.paste_food, .caloshow, .sodiumshow{
	font-weight: bold;
	border:0;
}
.caloshow, .sodiumshow{
	font-weight: bold;
	width: 50px;
}
a{
	color:#fb9300;
	text-decoration: none;
}


</style>
</head>
<body>
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<div id="all_wrap">


	<div id="userinput_wrap">
		<div id="userinput2_wrap">검색어를 입력해주세요. 검색어는 현재 위치하신 곳의 <strong>동 단위의 지역명</strong>(예:역삼동)과 검색하시고 싶은 <strong>메뉴</strong>(예:삼겹살, 불고기 등)를 나누어서 입력해주시기 바랍니다.</div>
		<div id="userinput3_wrap">
			<input id="userplace" placeholder="현재 위치 입력(예:역삼동)">
			<input id="userfood" placeholder="음식 메뉴 입력(예:맛집)" onkeypress="userinputsearch()">
			<button id="userinput_commitbutton" onclick="userinputsearch()">검색어 입력하기!</button>
			<button class="resizemap" onclick="resizeMap(); relayout()">지도가 작다면 크기를 늘려드릴게요!</button>
		</div>
	</div>
	
	
	<div class="map_wrap">
		    <div id="map" style="width:70%;height:50%;position:relative;overflow:hidden; margin-top:5%; margin-bottom:5%; margin-left:15%; margin-right:15%"></div>
		    <div>
				 
			</div>
		<div id="menu_wrap" class="bg_white">
		        <div class="option">
		            <div>
		                <form onsubmit="searchPlaces(); return false;" hidden>
		                    <input type="text" value="KH정보교육원강남지원1관" id="keyword" size="15"> 
		                    <button type="submit">검색하기</button> 
		                </form>
		            </div>
		        </div>
			<hr id="line1">
			<div id="searchresult_wrap">
		     <div id="placelisttitle">검색결과</div>
			<hr id="line2">
			<div id="placediv">
		      <ul id="placesList"></ul>
		      <hr id="line3">
		      <div id="pagination"></div>
		      
		    </div>
		    </div>
		</div>
	</div>
	
	
	<table id="tablerestaurantinfo" border="1" hidden> 
		<thead> 
			<tr> 
				<th>번호</th> 
				<th>식당이름</th> 
				<th>주소1</th> 
				<th>주소2</th> 
				<th>전화번호</th> 
			</tr> 
		</thead> 
		<tbody id="dynamic_tbody"> 
		</tbody> 
	</table>

	<div id="exceldown_wrap">
		<input type="button" id="l_excelbtn" value="결과를 엑셀로 다운로드하세요!" onclick="tablecreate(); downloadexcel();"/>
		 <button id="naverbtntagcopy" type="button" onclick="tooriginalbtn()">선택한 음식점을 네이버로 더 자세히 알려드릴게요!</button>
		<button type="button" class="openBtn" onclick="calo()">그런데 그거 아세요...? 지금 검색하신 음식은...</button>
	</div>
	
	
	<section id="sectionall">
	        <form action="https://search.naver.com/search.naver" method="get" target="_blank">
	            <div class="search">
	                <input type="text" name="query" id="query" value="" hidden>
	                <button id="naverbtntag" type="submit" onclick="searchnaver()"hidden>선택한 음식점을 네이버로 더 자세히 알려드릴게요!</button>
		          
	            </div>
	        </form>
	</section>
	
	
	<section>

        <div class="calo_wrap">
            
            <div class="modal hidden">
			  <div class="bg"></div>
			  <div class="modalBox">
			    <div>현재 검색을 하신</div>
			    <input type="text" name="paste_food" class="paste_food">
			    <div>의 경우 100g당 칼로리와 나트륨 함량이 무려</div>
			    <input type="text" class="caloshow"><span>칼로리 &nbsp&nbsp&nbsp&nbsp&nbsp/&nbsp&nbsp&nbsp&nbsp&nbsp</span>
			    <input type="text" class="sodiumshow"><span>mg</span>
			    <div>정도네요!</div>
			    <div>건강에 더 좋은 선택지가 있어요!</div>
			    <div>만약 건강과 영양을 복합적으로 생각하시는 분이시라면</div>
			    <div><a href="<%=request.getContextPath()%>/shopblist">여기를 클릭해주세요!</a></div>
			    <div>여러분의 건강과 영양을 한층 더 건강하게!</div>
			    <button class="closeBtn">창 닫기</button>
			  </div>
			</div>
       </div>
	</section>
</div>

<script>
	function tooriginalbtn(){
		$('#naverbtntag').click(); 
	}
	
	const open = () => {
	    document.querySelector(".modal").classList.remove("hidden");
	  }

	  const close = () => {
	    document.querySelector(".modal").classList.add("hidden");
	  }

	  document.querySelector(".openBtn").addEventListener("click", open);
	  document.querySelector(".closeBtn").addEventListener("click", close);
	  document.querySelector(".bg").addEventListener("click", close);
	
	  
	  
	  
	  function calo(){
		  
		  if($('#userfood').val() == null || $('#userfood').val() == ''){
			  alert('검색하실 음식을 먼저 입력해주세요!');
			  document.querySelector(".openBtn").removeEventListener("click", open);
			  setTimeout( function(){ $('#userfood').focus(); }, 50 );
			  return;
		  }
		  if($('#userfood').val() !== null && $('#userfood').val() !== ''){
			  var userinputfoodname = $('#userfood').val();
			  console.log(userinputfoodname);
			  $('.paste_food').attr('value', userinputfoodname);
		  }
		  
		  if($('.paste_food').val() !== null && $('.paste_food').val() !== ''){
			  document.querySelector(".modal").classList.remove("hidden");
			  var foodname = $('.paste_food').val();
			  $.ajax({
                  url:'calo',
                  async:false,
                  type:'get',
                  data:{ 'foodname' : foodname,
                  	},
                  dataType:'json',
                  success:function(data){
                  	if (data != null && data.caloinfo != null && data.sodiuminfo != null) {
                  		$('.caloshow').val(data.caloinfo);
                  		$('.sodiumshow').val(data.sodiuminfo);
                          console.log("ajax 진입-성공(data)까지 들어왔어");
                          
                          
                      } else {
                          console.log("ajax 진입-성공(else)까지 들어왔어");
                          $('.caloshow').val("확인된 칼로리 정보가 없네요!");
                          $('.sodiumshow').val("확인된 나트륨 정보가 없네요!");
                      }
                  },
                  error : function(error) {
                      console.log("ajax 진입(에러)까지 들어왔어");
                      $('.caloshow').val("확인된 칼로리 정보가 없네요!");
                      $('.sodiumshow').val("확인된 나트륨 정보가 없네요!");
                  }
              });
			  $(".paste_food").prop('readonly', true);
		  }
		  
		}



function userinputsearch(){
	var userinputloc = document.getElementById('userplace').value;
	var userinputfood = document.getElementById('userfood').value;
	var mapinputvalue = document.getElementById('keyword');
	
	var userinputall = document.getElementById( "userplace" ).value + document.getElementById( "userfood" ).value;
	
	$('#keyword').attr('value', userinputall);
	searchPlaces();
	}


/*
function searchnaver(){
	//지금 지도에서 목록으로 빼오는 부분에 식당 정보 div에 내가 임의로 index+1의 값을 넣음
	var get_resname = $("h5");
	console.log(get_resname);
	console.log('타입? ' + typeof (get_resname)); // object
	console.log('Array? ' + Array.isArray(get_resname)); //false
	//그냥 object key : value 
	$.each(get_resname, function (index, value) {
	console.log('인덱스값' + index);
	console.log(value);
	console.log('text =' + $(value).text());
	});
	
	 //for(i = 1; i <= $("h5").length; i++){
	       //console.log($('h5:nth-child('+i+')').text());
	    //}
}
*/
function searchnaver(){
	var checkedEle = $("input[name=resname_radio]:checked");
	console.log(checkedEle);
	console.log(checkedEle.parent().find(".nav_resname").text());  // 식당명
	
	var get_resname = checkedEle.parent().find(".nav_resname").text()
	//var get_resname = $("#nav_resname").text();
	console.log(get_resname);
	$('#query').val(get_resname);
	//오늘 강사님께 느리고 민폐라고 탈탈 털렸지만 이 부분을 도와주셔서 수월하게 해결
}



//마커를 담을 배열
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
    };  

// 지도를 생성    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색
searchPlaces();

// 키워드 검색을 요청하는 함수
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요! 본 검색은 한글에 최적화가 되어 있습니다.');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출
        displayPlaces(data);

        // 페이지 번호를 표출
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않아요. 검색어를 더 자세하고 정확하게 입력해주세요!');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('결과 검색 중 오류가 발생했습니다. 불편을 끼쳐 죄송합니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시
        // mouseout 했을 때는 인포윈도우를 닫음
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<input type="radio" id="radiobtn" class="' + (index+1) + '" name="resname_radio">' + (index+1) + '번 음식점</input>' + '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5 class="nav_resname">' + places.place_name + '</h5>';

    if (places.road_address_name) {
        if(places.address_name !== null && places.address_name !== ''){itemStr += '    <span class="doro">((도로명 주소))= ' + places.road_address_name + '</span>' +
            '   <span class="jibun gray"> ((지번 주소))= ' +  places.address_name  + '</span>' ;}
        else{itemStr += '    <span class="doro">((도로명 주소))= ' + places.road_address_name + '</span>' +
            '   <span class="jibun gray"> ((지번 주소))= 정보없음</span>';}
    	
    } else {
        itemStr += '    <span class="doro">((도로명 주소))= 정보없음</span>' + '    <span class="jibun gray">((지번주소))= ' +  places.address_name  + '</span>'; 
        
         
    }
                 
      if(places.phone.length < 7) {itemStr += '  <span class="tel">((전화번호))= 정보없음</span>' +
          '</div>';           }
      if(places.phone.length > 7) {itemStr += '  <span class="tel">((전화번호))= ' + places.phone  + '</span>' +
              '</div>';           }

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씀
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출
    markers.push(marker);  // 배열에 생성된 마커를 추가

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수
// 인포윈도우에 장소명을 표시
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
 
function resizeMap() {
    var mapContainer = document.getElementById('map');
    mapContainer.style.width = '70%';
    mapContainer.style.height = '70%'; 
}

function relayout() {    
    
    // 지도의 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출
    // window의 resize 의 경우에는 map.relayout 함수가 자동 호출
    map.relayout();
    $('.resizemap').css("display", "none");
}

var mapTypeControl = new kakao.maps.MapTypeControl();

//지도에 컨트롤을 추가해야 지도위에 표시됩니다
//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);





	
	

  
</script>



<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
</body>
</html>