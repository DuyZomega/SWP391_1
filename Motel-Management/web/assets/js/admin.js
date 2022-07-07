//
//let vnd = Intl.NumberFormat("vi-VN", {
//  style: "currency",
//  currency: "VND",
//  useGrouping: true,
//});
//function price_format(){
//    $('.price-format').each(function(){
//        var $price = $(this).data('price'),
//            html=vnd.format($price);
//        $(this).html(html);
//    });
//}
//$(function(){
//    price_format();
//});
//// input image
//let fileInput = document.getElementById("file-input");
//let imageContainer = document.getElementById("images");
//let numOfFiles = document.getElementById("num-of-files");
//let removeFiles = document.getElementById("removeFiles");
//
//function preview() {
//    imageContainer.innerHTML = "";
//    numOfFiles.textContent = `${fileInput.files.length}
//    Files Selected`;
//
//    for (i of fileInput.files) {
//        let reader = new FileReader();
//        let figure = document.createElement("figure");
//        let figCap = document.createElement("figcaption");
//
//        figCap.innerText = i.name;
//        figure.appendChild(figCap);
//        reader.onload=()=> {
//            let img = document.createElement("img");
//            img.setAttribute("src",reader.result);
//            figure.insertBefore(img,figCap);
//        }
//        imageContainer.appendChild(figure);
//        reader.readAsDataURL(i);
//    }
//}
////data-table
//
//$(document).ready( function () {
//    $('#myTable').DataTable();
//} );
//
////profile
//var loadFile = function (event) {
//    var image = document.getElementById("output");
//    image.src = URL.createObjectURL(event.target.files[0]);
//  };  
//
//let label = document.querySelector(".label");
//let hover = document.querySelector(".profile-pic");
//
//profileAvat = function () {
//    label.classList.toggle(".active");
//}
//
