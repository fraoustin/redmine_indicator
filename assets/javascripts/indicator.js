$(document).ready(function() {
    console.log("indicator");
    if (document.querySelectorAll('.chartjs').length > 0) {
        var script = document.createElement("script")
        script.src = '/plugin_assets/redmine_indicator/javascripts/Chart.min.js'
        script.onload = function(){
            Array.from(document.querySelectorAll('.chartsjs')).forEach(elt => {
            var code = JSON.parse(elt.innerText);
            console.log(code);
            //chart = ...
            //elt.parentNode.insertBefore(chart, elt);
            });
        }
        document.head.appendChild(script)
    }



});
 

