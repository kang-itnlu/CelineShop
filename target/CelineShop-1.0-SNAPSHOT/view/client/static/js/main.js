
/*scroll to top*/

$(document).ready(function () {
    $(function () {
        $.scrollUp({
            scrollName: 'scrollUp', // Element ID
            scrollDistance: 300, // Distance from top/bottom before showing element (px)
            scrollFrom: 'top', // 'top' or 'bottom'
            scrollSpeed: 300, // Speed back to top (ms)
            easingType: 'linear', // Scroll to top easing (see http://easings.net/)
            animation: 'fade', // Fade, slide, none
            animationSpeed: 200, // Animation in speed (ms)
            scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
            //scrollTarget: false, // Set a custom target element for scrolling to the top
            scrollText: '<i class="fas fa-angle-up"></i>', // Text for element, can contain HTML
            scrollTitle: false, // Set a custom <a> title if required.
            scrollImg: false, // Set true to use image
            activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
            zIndex: 2147483647 // Z-Index for the overlay
        });
    });
});

$(function () {
    var zoom = function (elm) {
        elm
            .on('mouseover', function () {
                $(this).children('.img__inner-detail').css({ 'transform': 'scale(2)' });
            })
            .on('mouseout', function () {
                $(this).children('.img__inner-detail').css({ 'transform': 'scale(1)' });
            })
            .on('mousemove', function (e) {
                $(this).children('.img__inner-detail').css({ 'transform-origin': ((e.pageX - $(this).offset().left) / $(this).width()) * 100 + '% ' + ((e.pageY - $(this).offset().top) / $(this).height()) * 100 + '%' });
            })
    }

    $('.product__img').each(function () {
        $(this)
            .append('<div class="img__inner-detail"></div>')
            .children('.img__inner-detail').css({ 'background-image': 'url(' + $(this).data('img__inner-detail') + ')' });
        zoom($(this));
    })
})

//Ẩn hiện chi tiết sản phẩm

// document.getElementById("product-img").onclick = function (eventOn) {
//     document.getElementById("modal").style.display = 'flex';
//     document.getElementById("modal").style.justifyContent= 'center';

// };
//     $(document).ready(function chooseBut(){
//   $(".product__img").click(function(){
//       $("#modal").

//   });
// });
// Lấy 2 button và thẻ div
//xử lí toggle chi tiết sản phẩm

//countdown



