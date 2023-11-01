<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://d3js.org/d3.v4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3-cloud/1.2.5/d3.layout.cloud.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<link rel=stylesheet href=../inc/newsList.css>

<style>
	h1 {font-size:50px;}
	h2 {font-size:20px;}
	#doughnutContainer{
		width: 400px;
		height: 400px;
		margin-bottom:100px;
	}  
	
	#barContainer {
		width: 400px;
		height: 400px;
		margin-bottom:100px;
	} 
	
	#radarContainer, #radarContainer2{
		width: 400px;
		height: 400px;
		margin-bottom:100px;
	}
	
	#lineContainer{
		width: 800px;
		height: 400px;
		margin-bottom:100px;
	}
	
	#wordCloud1, #wordCloud2 {
		width: 400px;
		height: 400px;
		margin-bottom:100px;
	}
	
	#wordCloud{
		display: flex;
		direction: row;
	}
	
	#radarChart{
		display: flex;
		direction: row;
	}
	th{
		text-align:center;
	}
	td{
		width:10%;
	}
	
	td:nth-child(5n+3){
		width:60%;
	}
	
</style>

<main>
	<div>
		<h1 align="center">캐주얼 게임 ${g_rank}위 : ${g_name}</h1>
		<div align="right">
		<form action="/smhrd/analyze/analyzeList" method="get">
			<select style="height:25px;margin-right:5px;" id="no" name="no" size="1">
				<c:forEach var="Gdto" items="${gameList}">
					<option value="${Gdto.g_rank}">${Gdto.g_rank}위 : ${Gdto.g_name}</option>
				</c:forEach>
				<input style="height:25px" type="submit" value="선택"/>
			</select>
		</form>
		</div>
	</div>
	<input type="hidden" id="game_rank" value="${g_rank}">
	<!-- 유용수 높은 리뷰 10개 출력 -->
	<div>
		<h2>다른 사용자들이 공감 많이 하는 리뷰 Top 10</h2>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>평점</th>
					<th>유용수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Rdto" items="${list}">
					<tr> 
						<td>${Rdto.r_no}</td>
						<td>${Rdto.r_user}</td>
						<td>${Rdto.r_content}</td>
						<td>${Rdto.r_ratings}</td>
						<td>${Rdto.r_utility}</td>
					</tr>
				</c:forEach> 
		
			</tbody>
		</table>
	</div>

	<!-- 차트 -->
	<div id="chart" align="center">
	
	
	
		<!-- 도넛 차트 -->
		<div id="doughnutContainer">
		    <h2>긍정/부정 비율</h2>
		    <p>총 리뷰 수 : ${count}</p>
		    <canvas id="sentimentDoughnutChart"></canvas>
		    <input type="hidden" id="doughnutPos" value="${pie.pos_count}">
		    <input type="hidden" id="doughnutNeg" value="${pie.neg_count}">
		</div>
		
		<script>
		    // 도넛 차트
		    const doughnutCtx = document.getElementById('sentimentDoughnutChart').getContext('2d');
		    var sumPos = document.getElementById('doughnutPos').value;
		    var sumNeg = document.getElementById('doughnutNeg').value;
		    console.log(sumPos, sumNeg);
		    new Chart(doughnutCtx, {
		        type: 'doughnut',
		        data: {
		            labels: ['긍정','부정'],
		            datasets: [{
		                data: [sumPos, sumNeg],
		                backgroundColor: ['rgba(0, 0, 255, 1)' ,'rgba(255, 0, 0, 0.5)'],
		                borderColor: ['rgba(0, 0, 255, 1)', 'rgba(255, 0, 0, 1)'],
		                borderWidth: 1
		            }]
		        },
		        options: {
		            responsive: true,
		            maintainAspectRatio: false
		        }
		    });
		</script>
	 
	 
	 
	 


		<!-- 레이더 차트 -->
		<div style="display:flex; direction:row;justify-content:center;">
		
			<div id="radarContainer">
			    <h2>긍정 레이더차트</h2>
			    <canvas id="sentimentRadarChart"></canvas>
				<c:forEach var="Key" items="${rader1.key}">
					<button class="Pos-key-button" value="${Key}">${Key}</button>
				</c:forEach>
				<input type="hidden" id="posKey" value="${rader1.key}" />
				<input type="hidden" id="posValue" value="${rader1.value}" />
				<input type="hidden" id="posTopValue" value="${rader1.value2}" />
			</div>
			
			<div id="radarContainer2">
			    <h2>부정 레이더차트</h2>
			    <canvas id="sentimentRadarChart2"></canvas>
				<c:forEach var="Key" items="${rader0.key}" >
					<button class="Neg-key-button" value="${Key}">${Key}</button>
				</c:forEach>
				<input type="hidden" id="negKey" value="${rader0.key}" />
				<input type="hidden" id="negValue" value="${rader0.value}" />
				<input type="hidden" id="negTopValue" value="${rader0.value2}" />
			</div>
		</div>
		<div>
			<div id="pos_reviewList"></div>
			<div id="neg_reviewList"></div>
		</div>
		
		<script type="text/javascript">
			var no = document.getElementById('game_rank').value;
			var keyButtons = document.getElementsByClassName('Pos-key-button');
			
	
			for (var i = 0; i < keyButtons.length; i++) {
			    keyButtons[i].addEventListener("click", function() {
			    	var key = '';
			    	key += this.value;
			        PosReviewShow(no, key);
			    });
			}
			
			function PosReviewShow(no, key){
				$.ajax({
					url: '/smhrd/analyze/reviewShow',
					data: {
						no: no, //해당 게임 순위
						key: key //클릭한 keyword
					},
					success: function(result){
						$("#neg_reviewList").html("");
						$("#pos_reviewList").html("");
						
						var tag = "<h2>긍정</h2><table><thead>";
						tag += "<tr><th>번호</th><th>작성자</th><th>내용</th><th>평점</th><th>유용수</th></tr>";
						tag += "</thead><tbody>";
						$(result).each(function(i, review){
							tag += "<tr><td>"+review.r_no+"</td><td>"+review.r_user+"</td><td>"+review.r_content+"</td><td>"+review.r_ratings+"</td><td>"+review.r_utility+"</td></tr>";
						});
						tag += "</tbody></table>";
						$("#pos_reviewList").append(tag);
					},
					error: function(e){
						console.log(e.responseText);
					}
				});
			};
		</script>
		
		<script type="text/javascript">
			var no = document.getElementById('game_rank').value;
			var keyButtons = document.getElementsByClassName('Neg-key-button');
			
	
			for (var i = 0; i < keyButtons.length; i++) {
			    keyButtons[i].addEventListener("click", function() {
			    	var key = '';
			    	key += this.value;
			        NegReviewShow(no, key);
			    });
			}
			
			function NegReviewShow(no, key){
				$.ajax({
					url: '/smhrd/analyze/reviewShow',
					data: {
						no: no, //해당 게임 순위
						key: key //클릭한 keyword
					},
					success: function(result){
						$("#pos_reviewList").html("");
						$("#neg_reviewList").html("");
												
						var tag = "<h2>부정</h2><table><thead>";
						tag += "<tr><th>번호</th><th>작성자</th><th>내용</th><th>평점</th><th>유용수</th></tr>";
						tag += "</thead><tbody>";
						$(result).each(function(i, review){
							tag += "<tr><td>"+review.r_no+"</td><td>"+review.r_user+"</td><td>"+review.r_content+"</td><td>"+review.r_ratings+"</td><td>"+review.r_utility+"</td></tr>";
						});
						tag += "</tbody></table>";
						$("#neg_reviewList").append(tag);
					},
					error: function(e){
						console.log(e.responseText);
					}
				});
			};
		</script>
		
		
		<script>     
		    // 레이더 차트
		    var posKey = document.getElementById('posKey').value.replace(/\[|\]/g, '').split(',');
		    var posValue = document.getElementById('posValue').value.replace(/\[|\]/g, '').split(',').map(Number);
		    var posTopValue = document.getElementById('posTopValue').value.replace(/\[|\]/g, '').split(',').map(Number);
		    var negKey = document.getElementById('negKey').value.replace(/\[|\]/g, '').split(',');
		    var negValue = document.getElementById('negValue').value.replace(/\[|\]/g, '').split(',').map(Number);
		    var negTopValue = document.getElementById('negTopValue').value.replace(/\[|\]/g, '').split(',').map(Number);
		    
		    console.log(posKey);
		    console.log(posValue);
		    const radarCtx = document.getElementById('sentimentRadarChart').getContext('2d');
		    const radarCtx2 = document.getElementById('sentimentRadarChart2').getContext('2d');
		
		    new Chart(radarCtx, {
		        type: 'radar',
		        data: {
		            labels: posKey, //['버그', '밸런스', '현질유도', '광고', '디자인', '스토리'],
		            datasets: [
		                {
		                    label: '현재 게임 ',
		                    data: posValue, //[60, 30, 10, 80, 100, 50],
		                    backgroundColor: 'rgba(0, 128, 255, 0.2)',
		                    borderColor: 'rgba(0, 128, 255, 1)',
		                    borderWidth: 1
		                },
		                {
		                    label: 'Top10 게임',
		                    data: posTopValue,//[50, 80, 100, 20, 10, 30],
		                    backgroundColor: 'rgba(128, 128, 255, 0.2)',
		                    borderColor: 'rgba(128, 128, 255, 1)',
		                    borderWidth: 1
		                }
		            ]
		        },
		        options: {
		            responsive: true,
		            maintainAspectRatio: false,
		            scales: {
		                r: {
		                    beginAtZero: true
		                }
		            }
		        }
		    });
		    
		    new Chart(radarCtx2, {
		        type: 'radar',
		        data: {
		            labels: negKey, //['버그', '밸런스', '현질유도', '광고', '디자인', '스토리'],
		            datasets: [
		                {
		                    label: '현재 게임 ',
		                    data: negValue, //[60, 30, 10, 80, 100, 50],
		                    backgroundColor: 'rgba(0, 128, 255, 0.2)',
		                    borderColor: 'rgba(0, 128, 255, 1)',
		                    borderWidth: 1
		                },
		                {
		                    label: 'Top10 게임',
		                    data: negTopValue,//[50, 80, 100, 20, 10, 30],
		                    backgroundColor: 'rgba(128, 128, 255, 0.2)',
		                    borderColor: 'rgba(128, 128, 255, 1)',
		                    borderWidth: 1
		                }
		            ]
		        },
		        options: {
		            responsive: true,
		            maintainAspectRatio: false,
		            scales: {
		                r: {
		                    beginAtZero: true
		                }
		            }
		        }
		    });
		</script>
		
		
		
		
		
		
		<!-- 라인 차트-->
		<div id="lineContainer">
		    <h2>시간에 따른 긍정/부정 추세</h2>
		    <canvas id="lineChart"></canvas>
		    <%-- <c:forEach var="date" items="${line.date}">
		    	<input type="hidden" class="lineDate" value="${date}">
		    </c:forEach> --%>
		    <input type="hidden" id="lineDate" value="${line.date}">
		    <input type="hidden" id="linePos" value="${line.pos}">
		    <input type="hidden" id="lineNeg" value="${line.neg}">
		</div>
		<div id="lineContainer">
		    <h2>시간에 따른 감정 변화 추이</h2>
		    <canvas id="lineChart2"></canvas>
		    <%-- 
			    <c:forEach var="date" items="${line.date}">
			    	<input type="hidden" class="lineDate" value="${date}">
			    </c:forEach> 
		    --%>
		    <input type="hidden" id="lineScore" value="${line.score}">
		</div>
		
		<script> 
		    // 꺽은선형 그래프
		    const lineCtx = document.getElementById('lineChart').getContext('2d');
		    /////////////////// 날짜타입을 간단한 형식의 년-월-일 형태로 변환 작업 ///////////////////
		    /* var formattedDateList = [];
			var dateList = document.getElementsByClassName('lineDate');
			for (var i = 0; i < dateList.length; i++) {
			    var originalDate = dateList[i].value;
			    var parts = originalDate.split('GMT');
			    var dateParts = parts[0].split(' ');
			    var day = dateParts[1];
			    var month = dateParts[2];
			    var year = dateParts[3];
			    
			    var formattedDate = year + '-' + month + '-' + day;
			    formattedDateList.push(formattedDate);
			} */
			//////////////////////// 변환 작업 끝 ///////////////////////////////////////////
			var date = document.getElementById('lineDate').value.replace(/\[|\]/g, '').split(',').map(String);
		    var pos = document.getElementById('linePos').value.replace(/\[|\]/g, '').split(',').map(Number);
		    var neg = document.getElementById('lineNeg').value.replace(/\[|\]/g, '').split(',').map(Number);
			
		    console.log('date >> ', date);
			console.log('pos.length >> ', pos.length);
		    console.log('neg.length >> ', neg.length);
		    </script>
		    <script>
		    new Chart(lineCtx, {
		        type: 'line',
		        data: {
		            labels: date,//formattedDateList,
		            datasets: [
		                {
		                    label: '긍정',
		                    data: pos,
		                    borderColor: 'rgba(0, 128, 255, 1)',
		                    fill: false,
		                    borderWidth: 1
		                },
		                {
		                    label: '부정',
		                    data: neg,
		                    borderColor: 'rgba(255, 99, 132, 1)',
		                    fill: false,
		                    borderWidth: 1
		                }
		            ]
		        },
		        options: {
		            responsive: true,
		            maintainAspectRatio: false,
		            scales: {
		                y: {
		                    beginAtZero: true
		                }
		            }
		        }
		    });
		    </script>
		    
		    <script>
			 	// 꺽은선형 그래프
			    const lineCtx2 = document.getElementById('lineChart2').getContext('2d');
			    var score = document.getElementById('lineScore').value.replace(/\[|\]/g, '').split(',').map(Number);
			    new Chart(lineCtx2, {
			        type: 'line',
			        data: {
			            labels: date,//formattedDateList,
			            datasets: [
			                {
			                    label: '감정 점수',
			                    data: score,
			                    borderColor: 'rgba(128, 128, 255, 1)',
			                    fill: false,
			                    borderWidth: 1
			                }
			            ]
			        },
			        options: {
			            responsive: true,
			            maintainAspectRatio: false,
			            scales: {
			                y: {
			                    beginAtZero: true
			                }
			            }
			        }
			    });
			    </script>
		
		
		
		<!-- 워드 클라우드 -->
		<div style="display:flex; direction:row;justify-content:center;">
			<div id="wordCloud1" style="margin-right:20px;">
				<h2>긍정 키워드</h2>
				<div class="wordCloud"><img src="data:image/jpeg;base64,${pos_wordcloudImage}" alt="WordCloud" width="400px"/></div>
			</div>
			<div id="wordCloud2">
				<h2>부정 키워드</h2>
				<div class="wordCloud"><img src="data:image/jpeg;base64,${neg_wordcloudImage}" alt="WordCloud" width="400px"/></div>
			</div>
		</div>
	</div>
	
	
	
	<div>
	    <h2>해석</h2>
		<div id="response"></div>
	</div>

	<script>
		$(document).ready(function() {	       
			var no = document.getElementById('game_rank').value;
			const responseDiv = document.getElementById("response");
	     	// 로딩 중 메시지 표시
	        responseDiv.innerHTML = "로딩 중...";
	        console.log(no);
	        // 플라스크 서버에 POST 요청을 보냅니다.
	        fetch("http://127.0.0.1:5000/ask?no="+no, {  // YOUR_FLASK_SERVER_ENDPOINT 부분을 실제 플라스크 서버 엔드포인트로 변경하세요.
	            method: 'GET',
	        })
	        .then(response => response.json()) 
	        .then(data => {
	        	/* var result = data.response.split('\n');
	        	console.log(result);
	        	var lastElement = result[result.length - 1];
	        	console.log("lastEl >> ", lastElement); */
	            // 응답을 div#response에 출력합니다.
	            document.getElementById("response").innerHTML = data.response;
	        })
	        .catch(error => {
	            console.error('Error:', error);
	        });
	    });
	</script>
</main>