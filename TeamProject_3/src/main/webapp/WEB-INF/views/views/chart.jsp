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
	
	#radarContainer{
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
</style>

<main>
<div id="chart" align="center">
	<!-- 도넛 차트 -->
	<div id="doughnutContainer">
	    <h2>도넛차트</h2>
	    <canvas id="sentimentDoughnutChart"></canvas>
	</div>
	
	<!-- 막대 차트 -->
	<div id="barContainer">
		<h2>막대차트</h2>
	    <canvas id="sentimentBarChart"></canvas>
	</div>

	<!-- 레이더 차트 -->
	<div id="radarContainer">
	    <h2>레이더차트</h2>
	    <canvas id="sentimentRadarChart"></canvas>
	</div>
	
	<!-- 라인 차트-->
	<div id="lineContainer">
	    <h2>라인차트</h2>
	    <canvas id="lineChart"></canvas>
	</div>
	
	<!-- 워드 클라우드 -->
	<div>
		<h2>긍정 키워드</h2>
		<svg id="wordCloud1"></svg>
		<h2>부정 키워드</h2>
		<svg id="wordCloud2"></svg>
	</div>
</div>
	
</main>

<script>
    // 도넛 차트 
    const doughnutCtx = document.getElementById('sentimentDoughnutChart').getContext('2d');
    new Chart(doughnutCtx, {
        type: 'doughnut',
        data: {
            labels: ['긍정', '보통','부정'],
            datasets: [{
                data: [40, 25 ,35],
                backgroundColor: ['rgba(0, 255, 0, 0.5)','rgba(0, 0, 255, 1)' ,'rgba(255, 0, 0, 0.5)'],
                borderColor: ['rgba(0, 255, 0, 1)', 'rgba(0, 0, 255, 1)', 'rgba(255, 0, 0, 1)'],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false
        }
    });
    
    // 막대 차트
    const barCtx = document.getElementById('sentimentBarChart').getContext('2d');
    new Chart(barCtx, {
        type: 'bar',
        data: {
            labels: ['게임', '좀','잘','만','들','어봐'],
            datasets: [{
                data: [70, 30, 50, 80, 40, 60],
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
    
    // 레이더 차트
    const radarCtx = document.getElementById('sentimentRadarChart').getContext('2d');
    new Chart(radarCtx, {
        type: 'radar',
        data: {
            labels: ['버그', '밸런스', '현질유도', '광고', '디자인', '스토리'],
            datasets: [
                {
                    label: 'Analysis 1',
                    data: [60, 30, 10, 80, 100, 50],
                    backgroundColor: 'rgba(0, 128, 255, 0.2)',
                    borderColor: 'rgba(0, 128, 255, 1)',
                    borderWidth: 1
                },
                {
                    label: 'Analysis 2',
                    data: [50, 80, 100, 20, 10, 30],
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
    
    const wordData1 = [
        {text: 'Hello', size: 30},
        {text: 'World', size: 20},
        {text: 'D3', size: 50},
        // Add more words here
      ];

      const wordData2 = [
        {text: 'Another', size: 40},
        {text: 'Cloud', size: 20},
        {text: 'Example', size: 60},
        // Add more words here
      ];

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