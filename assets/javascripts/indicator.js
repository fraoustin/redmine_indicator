$(document).ready(function() {
    console.log("indicator");
    if (document.querySelectorAll('#leftIndicator').length > 0) {
        src = document.querySelectorAll('#leftIndicator')[0]
        dst = document.querySelectorAll('.splitcontentleft')[0]
        before = document.querySelectorAll('.splitcontentleft div')[0]
        dst.insertBefore(src, before)
    }



});
 

