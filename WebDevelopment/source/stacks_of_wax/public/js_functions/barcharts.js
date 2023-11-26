google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);
// bar chart for collection
function drawChart() {
  const data = JSON.parse(document.getElementById("myChart").dataset.chartdata);
  var chartData = [];
  chartData.push(["Collection", "Count"]);
  data.forEach(function (bar) {
    chartData.push([bar.collection_name, bar.number]);
  });
  var dataTable = google.visualization.arrayToDataTable(chartData);
  var options = {
    title: "Collection",
    width: 500,
    height: 400,
  };
  var chart = new google.visualization.BarChart(
    document.getElementById("myChart")
  );
  chart.draw(dataTable, options);
}
