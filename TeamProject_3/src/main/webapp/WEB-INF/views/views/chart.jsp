<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Positive and Negative Sentiment Charts</title>
    <style>
        /* 부모 div의 크기를 설정 */
        #doughnutContainer, #barContainer {
            width: 400px;
            height: 400px;
        }
    </style>
</head>

<body>
<!-- 도넛 차트 -->
<div id="doughnutContainer">
    <canvas id="sentimentDoughnutChart"></canvas>
</div>

<!-- 막대 차트 -->
<div id="barContainer">
    <canvas id="sentimentBarChart"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    // 도넛 차트
    const doughnutCtx = document.getElementById('sentimentDoughnutChart').getContext('2d');
    new Chart(doughnutCtx, {
        type: 'doughnut',
        data: {
            labels: ['긍정', '부정'],
            datasets: [{
                data: [70, 30],
                backgroundColor: ['rgba(0, 255, 0, 0.5)', 'rgba(255, 0, 0, 0.5)'],
                borderColor: ['rgba(0, 255, 0, 1)', 'rgba(255, 0, 0, 1)'],
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
</script>
</body>
</html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <style>
        /* 부모 div의 크기를 설정 */
        #doughnutContainer, #barContainer {
            width: 400px;
            height: 400px;
        }
    </style>

<main>
<!-- 도넛 차트 -->
<div id="doughnutContainer">
    <canvas id="sentimentDoughnutChart"></canvas>
</div>

<!-- 막대 차트 -->
<div id="barContainer">
    <canvas id="sentimentBarChart"></canvas>
</div>
</main>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    // 도넛 차트
    const doughnutCtx = document.getElementById('sentimentDoughnutChart').getContext('2d');
    new Chart(doughnutCtx, {
        type: 'doughnut',
        data: {
            labels: ['긍정', '부정'],
            datasets: [{
                data: [70, 30],
                backgroundColor: ['rgba(0, 255, 0, 0.5)', 'rgba(255, 0, 0, 0.5)'],
                borderColor: ['rgba(0, 255, 0, 1)', 'rgba(255, 0, 0, 1)'],
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
</script>
>>>>>>> 81176eadb3157eff295cab06816a53472a8d036c
