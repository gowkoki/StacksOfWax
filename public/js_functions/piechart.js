// Load google charts
google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);

//pie charts for genres
function drawChart() {
  const data = JSON.parse(
    document.getElementById("piechart").dataset.chartdata
  );
  var chartData = [];
  chartData.push(["Genres", "Count"]);

  data.forEach(function (pie) {
    chartData.push([pie.genres_name, pie.number]);
  });

  var dataTable = google.visualization.arrayToDataTable(chartData);

  var options = {
    title: "Genres",
    width: 500,
    height: 400,
  };

  var chart = new google.visualization.PieChart(
    document.getElementById("piechart")
  );
  chart.draw(dataTable, options);
}
