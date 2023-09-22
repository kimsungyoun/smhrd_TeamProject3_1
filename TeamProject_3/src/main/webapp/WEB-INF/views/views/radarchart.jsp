<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Multiple Analyses in Radar Chart</title>
    <style>
        /* 부모 div의 크기를 설정 */
        #radarContainer{
            width: 400px;
            height: 400px;
        }
        #lineContainer{
            width: 800px;
            height: 400px;
        }
    </style>
</head>

<body>
<!-- 레이더 차트 -->
<div id="radarContainer">
    <canvas id="sentimentRadarChart"></canvas>
</div>
<%-- 라인 차트--%>
<div id="lineContainer">
    <canvas id="lineChart"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
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

</body>
</html>
