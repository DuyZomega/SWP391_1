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

//


$(document).ready(function () {
    //data-table
    $('#myTable').DataTable();

    $("td:has(#input)").click(function() {
        $("#input", this).removeAttr("disabled");
    });
} );


$(document).ready(function () {
    
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
})
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

const month = [
    {x: Date.parse('2022-01-01 UTC+0700'), y: 1234},
    {x: Date.parse('2022-02-01 UTC+0700'), y: 3542},
    {x: Date.parse('2022-03-01 UTC+0700'), y: 1231},
    {x: Date.parse('2022-04-01 UTC+0700'), y: 1221},
    {x: Date.parse('2022-05-01 UTC+0700'), y: 1233},
    {x: Date.parse('2022-06-01 UTC+0700'), y: 1323},
    {x: Date.parse('2022-07-01 UTC+0700'), y: 2412},
    {x: Date.parse('2022-08-01 UTC+0700'), y: 1233},
    {x: Date.parse('2022-09-01 UTC+0700'), y: 1233},
    {x: Date.parse('2022-12-01 UTC+0700'), y: 3212},
    {x: Date.parse('2022-09-01 UTC+0700'), y: 1233},
    {x: Date.parse('2022-12-01 UTC+0700'), y: 1321},
];

const chart = new Chart(ctx, {   
    type: 'bar',
    data: {
        // labels: Object.keys(week),
        datasets: [{
            label: 'Doanh thu nhà nghỉ A',
            data: day,
            backgroundColor: [
                'rgba(39, 174, 96,0.5)'
            ],
            borderColor: [
                'rgba(39, 174, 96,1.0)'

            ],
            borderWidth: 1,
        },{
            label: 'Doanh thu nhà nghỉ B',
            data: day,
            backgroundColor: [
                'rgba(211, 84, 0,0.5)'
            ],
            borderColor: [

                'rgba(211, 84, 0,1.0)'
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
    if (period.value == 'month') {
        chart.data.datasets[0].data = month;
        chart.options.scales.x.time.unit = period.value;
    }
    chart.update();
} 

//change idHome for delete
function change(event) {
    document.getElementById("idhome").value = event.target.value;
}


// input other reason
function other(event) {
    if (event.target.value === 'custom') {
        document.getElementById("otherid").style.display = "block";
        document.getElementById("otherid1").style.display = "block";
        document.getElementById("otherid2").style.display = "block";
        document.getElementById("customFile").style.display = "block";
    } else {
        document.getElementById("otherid").style.display = "none";
        document.getElementById("otherid1").style.display = "none";
        document.getElementById("otherid2").style.display = "none";
        document.getElementById("customFile").style.display = "none";
    }
}

// select input

$("#motelid").change(function() {
    var cat = $(this).val(); // this is the selected value
 
    $("#typyRoom option:not(." + cat + ")").hide(); // you hide every option that don't have your selected value as a class
    $("#typyRoom option." + cat).show(); // you only show selected options
    $("#typyRoom").val(""); //reset the previously selected value
});


function submitFunc() {
    swal({
        title: "Successfully!",
        icon: "success",
        timer: 1000
    }).then(() => {
        document.getElementById('form').submit();
    });
    return false;
};
