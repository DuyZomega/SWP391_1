let toggle = document.querySelector('.toggle');
let navigation = document.querySelector('.navigation');
let header = document.querySelector('.header');
let main = document.querySelector('.main-content');

toggle.onclick = function () {
    navigation.classList.toggle('active');
    header.classList.toggle('active');
    main.classList.toggle('active');
};

$('.nav-link').each(function(i){
    if(i === 0){
        $(this).addClass('active');
    }
});
$('.tab-pane').each(function(i){
    if(i === 0){
        $(this).addClass('active');
    }
});
//loading
// $(window).on("load",function () {
//     $(".preloader").fadeOut("slow");
//     $(".preloader").css("display","none");
// });

let feedback = document.querySelectorAll('.feedback');
feedback.onclick = function () {
    $("#" + (this).data("data-target")).classList.toggle('active'); 
}

// input image
let fileInput = document.getElementById("file-input");
let imageContainer = document.getElementById("images");
let numOfFiles = document.getElementById("num-of-files");
let removeFiles = document.getElementById("removeFiles");

function preview() {
    imageContainer.innerHTML = "";
    numOfFiles.textContent = `${fileInput.files.length}
    Files Selected`;

    for (i of fileInput.files) {
        let reader = new FileReader();
        let figure = document.createElement("figure");
        let figCap = document.createElement("figcaption");

        figCap.innerText = i.name;
        figure.appendChild(figCap);
        reader.onload=()=> {
            let img = document.createElement("img");
            img.setAttribute("src",reader.result);
            figure.insertBefore(img,figCap);
        }
        imageContainer.appendChild(figure);
        reader.readAsDataURL(i);
    }
}

// success
function success() {
    swal({
        title: "Thành Công!",
        text: "Xác nhận thao tác của bạn.",
        icon: "success",
        timer: 3000
    });
}


//data-table
$(document).ready( function () {
    $('#myTable').DataTable();
} );

// change page history detail
$(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});

//profile
var loadFile = function (event) {
    var image = document.getElementById("output");
    image.src = URL.createObjectURL(event.target.files[0]);
  };  

//chart
const ctx = document.getElementById('chart-Dashboard').getContext('2d');
const day = [
    {x: Date.parse('2022-06-09 UTC+0700'), y: 18},
    {x: Date.parse('2022-06-10 UTC+0700'), y: 10},
    {x: Date.parse('2022-06-11 UTC+0700'), y: 4},
    {x: Date.parse('2022-06-12 UTC+0700'), y: 7},
    {x: Date.parse('2022-06-13 UTC+0700'), y: 16},
    {x: Date.parse('2022-06-14 UTC+0700'), y: 18},
    {x: Date.parse('2022-06-15 UTC+0700'), y: 12}
];

const week = [
    {x: Date.parse('2022-06-5 UTC+0700'), y: 134},
    {x: Date.parse('2022-06-12 UTC+0700'), y: 100},
    {x: Date.parse('2022-06-19 UTC+0700'), y: 240},
    {x: Date.parse('2022-06-26 UTC+0700'), y: 150},
    {x: Date.parse('2022-07-03 UTC+0700'), y: 175},
];

const chart = new Chart(ctx, {   
    type: 'bar',
    data: {
        // labels: Object.keys(week),
        datasets: [{
            label: 'Doanh thu tuần',
            data: day,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1,
        }]
    },
    options: {
        scales: {
            x: {
                type: 'time',
                time: {
                    unit: 'day'
                }
            },
            y: {
                beginAtZero: true
            }
        }
    }
}); 

function timeFrame(period) {
    if (period.value == 'day') {
        chart.data.datasets[0].data = day;
        chart.options.scales.x.time.unit = period.value;
    }
     if (period.value == 'week') {
        chart.data.datasets[0].data = week;
        chart.options.scales.x.time.unit = period.value;
    }
    chart.update();
}

//
function onChange() {
    const password = document.querySelector('input[name=newpassword]');
    const confirm = document.querySelector('input[name=confirm]');
    if (confirm.value === password.value) {
      confirm.setCustomValidity('');
    } else {
      confirm.setCustomValidity('Passwords do not match');
    }
  }