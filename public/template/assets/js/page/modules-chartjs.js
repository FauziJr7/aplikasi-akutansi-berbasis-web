"use strict";

var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["01 Oktober 2022", "02 Oktober 2022", "03 Oktober 2022", "04 Oktober 2022", "05 Oktober 2022", "06 Oktober 2022", "07 Oktober 2022"],
    datasets: [{
      label: 'Debit',
      data: [68.5, 98, 78, 48, 86, 84, 71],
      borderWidth: 2,
      backgroundColor: '#F49D1A',
      borderColor: '#DC3535',
      borderWidth: 2.5,
      pointBackgroundColor: '#B01E68',
      pointRadius: 4
    }]
  },
  options: {
    legend: {
      display: false
    },
    scales: {
      yAxes: [{
        gridLines: {
          drawBorder: false,
          color: '#F49D1A',
        },
        ticks: {
          beginAtZero: true,
          stepSize: 25
        }
      }],
      xAxes: [{
        ticks: {
          display: false
        },
        gridLines: {
          display: false
        }
      }]
    },
  }
});

var ctx = document.getElementById("myChart2").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["Kas", "Perlengkapan Kantor", "Sewa Dibayar Dimuka", "Usaha Utang", "Modal Pemilik", "Utang Hipotek", "Beban Iklan"],
    datasets: [{
      label: 'Statistics',
      data: [48, 58, 38, 68, 88, 78, 98],
      borderWidth: 2,
      backgroundColor: '#F0FF42',
      borderColor: '#54B435',
      borderWidth: 2.5,
      pointBackgroundColor: '#379237',
      pointRadius: 4
    }]
  },
  options: {
    legend: {
      display: false
    },
    scales: {
      yAxes: [{
        gridLines: {
          drawBorder: false,
          color: '#54B435',
        },
        ticks: {
          beginAtZero: true,
          stepSize: 20
        }
      }],
      xAxes: [{
        ticks: {
          display: false
        },
        gridLines: {
          display: false
        }
      }]
    },
  }
});

var ctx = document.getElementById("myChart3").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    datasets: [{
      data: [
        80,
        50,
        40,
        30,
        20,
      ],
      backgroundColor: [
        '#191d21',
        '#63ed7a',
        '#ffa426',
        '#fc544b',
        '#6777ef',
      ],
      label: 'Dataset 1'
    }],
    labels: [
      'Kas',
      'Perlengkapan Kantor',
      'Sewa Dibayar di muka',
      'Utang Usaha',
      'Modal Pemilik'
    ],
  },
  options: {
    responsive: true,
    legend: {
      position: 'bottom',
    },
  }
});

var ctx = document.getElementById("myChart4").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'pie',
  data: {
    datasets: [{
      data: [
        80,
        50,
        40,
        30,
        100,
      ],
      backgroundColor: [
        '#191d21',
        '#63ed7a',
        '#ffa426',
        '#fc544b',
        '#6777ef',
      ],
      label: 'Dataset 1'
    }],
    labels: [
      'Neraca Saldo',
      'Jurnal Penyesuaian',
      'NS yang disesuaikan',
      'Laba Rugi',
      'Neraca'
    ],
  },
  options: {
    responsive: true,
    legend: {
      position: 'bottom',
    },
  }
});