window.addEventListener('turbolinks:load', function() {
  var ctx = document.getElementById("myChart").getContext('2d');
  var myChart = new Chart(ctx, {
    type: 'pie',
    data: {
      labels: gon.labels,
      datasets: [{
        data: gon.understand,
        backgroundColor: [
          'rgba(0, 200, 0, 0.8)',
          'rgba(255, 50, 100, 0.8)',
          'rgba(169, 169, 169, 0.8)'
        ]
      }]
    }
  });
});