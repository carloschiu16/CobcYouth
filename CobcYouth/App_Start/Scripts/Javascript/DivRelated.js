function DefaultSize() {
    document.getElementById('Div_GridView').style.display = "none";
}

function Setsize() {
    var Gridview = document.getElementById('MainContent_GridViewPlan');
    Gridview.style.display = "";
    document.getElementById('Div_GridView').style.display = "";
    $(document).ready(function () {
        $("#Div_GridView").animate({ height: "600px", width: "100%" }, 500);
    });
}

function ReSetsize() {
    check = false;
    $("#Div_GridView").height("400px");
    $("#Div_GridView").width("90%");
    $(document).ready(function () {
        $("#Div_GridView").animate({ height: "0px", width: "0px" }, 500, DefaultSize);
    });
}


function Redirect(url) {
    $("#Div_GridView").height("400px");
    $("#Div_GridView").width("90%");
    $(document).ready(function () {
        $("#Div_GridView").animate({ height: "0px", width: "0px" }, 500, function () { window.location.replace(url) });
    });

}
