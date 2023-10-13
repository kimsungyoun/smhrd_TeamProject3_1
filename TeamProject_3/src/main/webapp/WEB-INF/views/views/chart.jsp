<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://d3js.org/d3.v4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3-cloud/1.2.5/d3.layout.cloud.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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
	
	svg {
		border: 1px solid black;
		border-radius: 50%;
		width:500px; 
		height:500px; 
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
	<div id="chart" align="center">
		<!-- 도넛 차트 -->
		<div id="doughnutContainer">
		    <h2>도넛차트</h2>
		    <canvas id="sentimentDoughnutChart"></canvas>
		    <input type="hidden" id="doughnutPos" value="${dto.pos_sum}">
		    <input type="hidden" id="doughnutNeg" value="${dto.neg_sum}">
		</div>
	
		<!-- 레이더 차트 -->
		<div id="radarChart">
			<input type="hidden" id="radarPosKey" value="${dto.pos_key}">
			<input type="hidden" id="radarNegKey" value="${dto.neg_key}">
			<input type="hidden" id="radarPosValue" value="${dto.pos_value}">
			<input type="hidden" id="radarNegValue" value="${dto.neg_value}">
			<input type="hidden" id="radarPTopValue" value="${dto.p_top_value}">
			<input type="hidden" id="radarNTopValue" value="${dto.n_top_value}"> 
			    
			<div id="radarContainer">
			    <h2>긍정 레이더차트</h2>
			    <canvas id="sentimentRadarChart"></canvas>
			     
			</div>
			<div id="radarContainer2">
			    <h2>부정 레이더차트</h2>
			    <canvas id="sentimentRadarChart2"></canvas>
			</div>
		</div>
		
		<!-- 워드 클라우드 -->
		<div id="wordCloud">
			<input type="hidden" id="wordPosKey" value="${dto.word_poskey}">
		    <input type="hidden" id="wordPosValue" value="${dto.word_posval}">
		    <input type="hidden" id="wordNegKey" value="${dto.word_negkey}">
		    <input type="hidden" id="wordNegValue" value="${dto.word_negval}"> 
			<div>
				<h2>긍정 키워드</h2>
				<svg id="wordCloud1"></svg>
			</div>
			<div>
				<h2>부정 키워드</h2>
				<svg id="wordCloud2"></svg>		 
			</div>			    
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
    // 막대 차트
    var keyPos = document.getElementById('radarPosKey').value.split(',');
    var keyNeg = document.getElementById('radarNegKey').value.split(',');
    var valuePos = document.getElementById('radarPosValue').value.split(',').map(Number);
    var valueNeg = document.getElementById('radarPosValue').value.split(',').map(Number);
    const barCtx = document.getElementById('sentimentBarChart').getContext('2d');
    new Chart(barCtx, {
        type: 'bar',
        data: {
            labels: keyPos.slice(0,3).concat(keyNeg.slice(0,3)),//['게임', '좀','잘','만','들','어봐'],
            datasets: [{
                data: valuePos.slice(0,3).concat(valueNeg.slice(0,3)),//[70, 30, 50, 80, 40, 60],
                backgroundColor: ['rgba(0, 128, 255, 0.5)', 'rgba(255, 128, 0, 0.5)', 'rgba(128, 128, 255, 0.5)', 'rgba(255, 128, 128, 0.5)', 'rgba(128, 128, 128, 0.5)','rgba(255, 128, 0, 128)'],
                borderColor: ['rgba(0, 128, 255, 0.5)', 'rgba(255, 128, 0, 0.5)', 'rgba(128, 128, 255, 0.5)', 'rgba(255, 128, 128, 0.5)', 'rgba(128, 128, 128, 0.5)','rgba(255, 128, 0, 128)'],
                borderWidth: 1
            }]
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
    new Chart(lineCtx, {
        type: 'line',
        data: {
            labels: ['1일', '2일', '3일', '4일', '5일', '6일', '7일', '8일', '9일', '10일'],
            datasets: [
                {
                    label: 'Dataset 1',
                    data: [10, 12, 8, 15, 20, 22, 24, 18, 15, 14],
                    borderColor: 'rgba(0, 128, 255, 1)',
                    fill: false,
                    borderWidth: 1
                },
                {
                    label: 'Dataset 2',
                    data: [5, 8, 12, 9, 15, 18, 12, 15, 16, 18],
                    borderColor: 'rgba(255, 99, 132, 1)',
                    fill: false,
                    borderWidth: 1
                },
                {
                    label: 'Dataset 3',
                    data: [20, 18, 15, 17, 12, 10, 8, 9, 12, 14],
                    borderColor: 'rgba(255, 206, 86, 1)',
                    fill: false,
                    borderWidth: 1
                },
                {
                    label: 'Dataset 4',
                    data: [5, 9, 10, 12, 14, 16, 20, 22, 25, 28],
                    borderColor: 'rgba(75, 192, 192, 1)',
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
    //워드클라우드
    var keyPos = document.getElementById('wordPosKey').value.split(',');
    var keyNeg = document.getElementById('wordNegKey').value.split(',');
    var valuePos = document.getElementById('wordPosValue').value.split(',').map(Number);
    var valueNeg = document.getElementById('wordNegValue').value.split(',').map(Number);
   
    const wordData1 = [];
   	for (var i = 0; i < keyPos.length; i++) {
   	    var key = keyPos[i].replace('\'', '').replace('\'', '');
   	    var value = valuePos[i]*5;
   	 	wordData1.push({text: key, size: value},)
   	};
       
      const wordData2 = [];
      for (var i = 0; i < keyNeg.length; i++) {
     	    var key = keyNeg[i].replace('\'', '').replace('\'', '');
     	    var value = valueNeg[i]*5;
     	   wordData2.push({text: key, size: value},)
     	};

      function generateCloud(selector, words) {
        d3.layout.cloud().size([500, 500])
                .words(words)
                .padding(5)
                .rotate(() => 0)
                .fontSize(d => d.size)
                .spiral("archimedean")
                .on("end", draw)
                .start();

        function draw(words) {
          d3.select(selector)
                  .append("g")
                  .attr("transform", "translate(250,250)")
                  .selectAll("text")
                  .data(words)
                  .enter().append("text")
                  .style("font-size", d => d.size + "px")
                  .attr("text-anchor", "middle")
                  .attr("transform", d => "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")")
                  .text(d => d.text);
        }
      };

      generateCloud("#wordCloud1", wordData1);
      generateCloud("#wordCloud2", wordData2);
     </script>