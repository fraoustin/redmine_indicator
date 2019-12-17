$(document).ready(function() {
    console.log("indicator");
    if (document.querySelectorAll('#leftIndicatorTop').length > 0) {
        src = document.querySelectorAll('#leftIndicatorTop')[0]
        dst = document.querySelectorAll('.splitcontentleft')[0]
        before = document.querySelectorAll('.splitcontentleft div')[0]
        dst.insertBefore(src, before)
    }



});
 

