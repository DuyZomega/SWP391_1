let toggle = document.querySelector(".toggle");
let navigation = document.querySelector(".navigation");
let header = document.querySelector(".header");
let main = document.querySelector(".main-content");


toggle.onclick = function () {
  navigation.classList.toggle("active");
  header.classList.toggle("active");
  main.classList.toggle("active");
};

$(".nav-link").each(function (i) {
  if (i === 0) {
    $(this).addClass("active");
  }
});
$(".tab-pane").each(function (i) {
  if (i === 0) {
    $(this).addClass("active");
  }
});

//print bill
$('.btn-print').click(function () {
    var table = document.getElementById("table");
    var wme = window.open("","","with=900,height=700");
    wme.document.write(table.outerHTML);
    wme.document.close();    
    wme.focus();
    wme.print();
    wme.close();

})

//loading
// $(window).on("load",function () {
//     $(".preloader").fadeOut("slow");
//     $(".preloader").css("display","none");
// });

let vnd = Intl.NumberFormat("vi-VN", {
  style: "currency",
  currency: "VND",
  useGrouping: true,
});
function price_format() {
  $(".price-format").each(function () {
    var $price = $(this).data("price"),
      html = vnd.format($price);
    $(this).html(html);
  });
}
$(function () {
  price_format();
});

let feedback = document.querySelectorAll(".feedback");
feedback.onclick = function () {
  $("#" + this.data("data-target")).classList.toggle("active");
};

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
    reader.onload = () => {
      let img = document.createElement("img");
      img.setAttribute("src", reader.result);
      figure.insertBefore(img, figCap);
    };
    imageContainer.appendChild(figure);
    reader.readAsDataURL(i);
  }
}

$(document).ready(function () {
  //data-table
  $("#myTable").DataTable();

});


$(document).ready(function () {
  $(".clickable-row").click(function () {
    window.location = $(this).data("href");
  });
});

$(document).ready(function () {
  setTimeout(function () {
    $("#notif").css("display", "none");
  }, 3000);
});


//profile
var loadFile = function (event) {
  var image = document.getElementById("output");
  image.src = URL.createObjectURL(event.target.files[0]);
};

//change idHome for delete
function change(event) {
  document.getElementById("idhome").value = event.target.value;
}

// input other reason
function other(event) {
  if (event.target.value === "custom") {
    document.getElementById("otherid").style.display = "block";
    document.getElementById("otherid1").style.display = "block";
    document.getElementById("otherid2").style.display = "block";
    document.getElementById("customFile").style.display = "block";
    document.getElementById("labeldecp").style.display = "block";
    document.getElementById("decp").style.display = "block";
  } else {
    document.getElementById("otherid").style.display = "none";
    document.getElementById("otherid1").style.display = "none";
    document.getElementById("otherid2").style.display = "none";
    document.getElementById("customFile").style.display = "none";
    document.getElementById("labeldecp").style.display = "none";
    document.getElementById("decp").style.display = "none";
  }
}



// sweetalert
function submitFunc() {
  swal({
    title: "Successfully!",
    icon: "success",
    timer: 1000,
  }).then(() => {
    document.getElementById("form").submit();
  });
  return false;
}


// confirm to dele
function confirmdele() {
  if (!confirm("Are you sure to delete?")) {
    return false;
  }
}


$('#checkAll').click(function () {    
  $('input:checkbox').prop('checked', this.checked);  
  if ($('#checkAll').prop('checked')) {
    document.getElementById("all-tip").style.display = "block";
  } else {
    document.getElementById("all-tip").style.display = "none";

  }
});






  





