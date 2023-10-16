<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://d3js.org/d3.v4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3-cloud/1.2.5/d3.layout.cloud.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<link rel=stylesheet href=../inc/newsList.css>

<style>
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
	
</style>

<main>
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
		    <h2>도넛차트</h2>
		    <li>총 리뷰 수 : ${count}</li>
		    <canvas id="sentimentDoughnutChart"></canvas>
		    <input type="hidden" id="doughnutPos" value="${pie.pos_count}">
		    <input type="hidden" id="doughnutNeg" value="${pie.neg_count}">
		</div>
		
		<!-- 막대 차트 -->
	<!-- 	<div id="barContainer">
			<h2>막대차트</h2>
		    <canvas id="sentimentBarChart"></canvas>
		</div>
	 -->
	 
		<!-- 레이더 차트 -->
		<div id="radarContainer">
		    <h2>긍정 레이더차트</h2>
		    <canvas id="sentimentRadarChart"></canvas>
		    <input type="hidden" id="radarPosKey" value="${dto.pos_key}">
		    <input type="hidden" id="radarNegKey" value="${dto.neg_key}">
		    <input type="hidden" id="radarPosValue" value="${dto.pos_value}">
		    <input type="hidden" id="radarNegValue" value="${dto.neg_value}">
		    <input type="hidden" id="radarPTopValue" value="${dto.p_top_value}">
		    <input type="hidden" id="radarNTopValue" value="${dto.n_top_value}">
		</div>
		<div id="radarContainer2">
		    <h2>부정 레이더차트</h2>
		    <canvas id="sentimentRadarChart2"></canvas>
		</div>
		
		<!-- 라인 차트-->
		<div id="lineContainer">
		    <h2>시간에 따른 긍정/부정 추세</h2>
		    <canvas id="lineChart"></canvas>
		    <c:forEach var="date" items="${line.date}">
		    	<input type="hidden" class="lineDate" value="${date}">
		    </c:forEach>
		    <input type="hidden" id="linePos" value="${line.pos}">
		    <input type="hidden" id="lineNeg" value="${line.neg}">
		    
		</div>
		
		<!-- 워드 클라우드 -->
		<div id="wordCloud1">
			<h2>긍정 키워드</h2>
			<div class="wordCloud"><img src="data:image/jpeg;base64,${pos_wordcloudImage}" alt="WordCloud" width="400px"/></div>
		</div>
		<div id="wordCloud2">
			<h2>부정 키워드</h2>
			<div class="wordCloud"><img src="data:image/jpeg;base64,${neg_wordcloudImage}" alt="WordCloud" width="400px"/></div>
		</div>
		
	</div>
	
</main>





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

    
<script>     
    // 레이더 차트
    var keyPos = document.getElementById('radarPosKey').value.split(',');
    var keyNeg = document.getElementById('radarNegKey').value.split(',');
    var valuePos = document.getElementById('radarPosValue').value.split(',').map(Number);
    var valueNeg = document.getElementById('radarPosValue').value.split(',').map(Number);
    var valueTopPos = document.getElementById('radarPTopValue').value.split(',').map(Number);
    var valueTopNeg = document.getElementById('radarNTopValue').value.split(',').map(Number);
    
    const radarCtx = document.getElementById('sentimentRadarChart').getContext('2d');
    const radarCtx2 = document.getElementById('sentimentRadarChart2').getContext('2d');
    console.log(keyPos);
    console.log(valuePos);
    
    new Chart(radarCtx, {
        type: 'radar',
        data: {
            labels: keyPos, //['버그', '밸런스', '현질유도', '광고', '디자인', '스토리'],
            datasets: [
                {
                    label: '현재 게임 ',
                    data: valuePos, //[60, 30, 10, 80, 100, 50],
                    backgroundColor: 'rgba(0, 128, 255, 0.2)',
                    borderColor: 'rgba(0, 128, 255, 1)',
                    borderWidth: 1
                },
                {
                    label: 'Top10 게임',
                    data: valueTopPos, //[50, 80, 100, 20, 10, 30],
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
            labels: keyNeg, //['버그', '밸런스', '현질유도', '광고', '디자인', '스토리'],
            datasets: [
                {
                    label: '현재 게임 ',
                    data: valueNeg, //[60, 30, 10, 80, 100, 50],
                    backgroundColor: 'rgba(0, 128, 255, 0.2)',
                    borderColor: 'rgba(0, 128, 255, 1)',
                    borderWidth: 1
                },
                {
                    label: 'Top10 게임',
                    data: valueTopNeg, //[50, 80, 100, 20, 10, 30],
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


<script> 
    // 꺽은선형 그래프
    const lineCtx = document.getElementById('lineChart').getContext('2d');
    /////////////////// 날짜타입을 간단한 형식의 년-월-일 형태로 변환 작업 ///////////////////
    var formattedDateList = [];
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
	}
	//////////////////////// 변환 작업 끝 ///////////////////////////////////////////
	/* var posList = [];
	var negList = [];
	for (var i=0; i < ) */
    var pos = document.getElementById('linePos').value.replace(/\[|\]/g, '').split(',').map(Number);
	console.log(pos.length);
    var neg = document.getElementById('lineNeg').value.replace(/\[|\]/g, '').split(',').map(Number);
    console.log(neg.length);
    new Chart(lineCtx, {
        type: 'line',
        data: {
            labels: formattedDateList,
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
    
    
