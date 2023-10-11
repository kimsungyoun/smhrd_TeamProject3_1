<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://d3js.org/d3.v4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3-cloud/1.2.5/d3.layout.cloud.js"></script>
<style>
   svg {
     border: 1px solid black;
     border-radius: 50%;
     width:500px; 
     height:500px; 
   }
</style>

<main>
<svg id="wordCloud1"></svg>
<svg id="wordCloud2"></svg>
</main>

<script>
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
  }

  generateCloud("#wordCloud1", wordData1);
  generateCloud("#wordCloud2", wordData2);
</script>
