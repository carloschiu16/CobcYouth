function Setsize() {
    document.getElementById('Div_Info_close').style.display = "none";
    document.getElementById('Div_Info').style.display = "";

    document.getElementById('Div_AppInfo_close').style.display = "none";
    document.getElementById('Div_AppInfo').style.display = "none";
    $(document).ready(function () {
        $("#Div_Info").animate({ height: "200px", width: "95%" }, 500, function () {
            $(document).ready(function () {
                document.getElementById('Div_AppInfo').style.display = "";
                $("#Div_AppInfo").animate({ height: "270px", width: "95%" }, 500);
            });
        });
    });
}

function CloseInfoDiv() {
    $("#Div_Info").height("200px");
    $("#Div_Info").width("90%");
    $(document).ready(function () {
        $("#Div_Info").animate({ height: "60px", width: "170px" }, 500, function () {
            document.getElementById('tbinfo').style.display = "none";
            document.getElementById('Div_Info').style.display = "none";
            document.getElementById('Div_Info_close').style.display = "";
            $(document).ready(function () {
                $("#Div_Info_close").animate({ height: "60px", width: "170px" }, 500);
            });
        });
    });
}

function OpenInfoDiv() {
    $("#Div_Info_close").height("60px");
    $("#Div_Info_close").width("170px");
    $(document).ready(function () {
        document.getElementById('tbinfo').style.display = "";
        document.getElementById('Div_Info').style.display = "";
        document.getElementById('Div_Info_close').style.display = "none";
        $(document).ready(function () {
            $("#Div_Info").animate({ height: "200px", width: "95%" }, 500);
        });
    });
}

function CloseAppInfoDiv() {
    $("#Div_AppInfo").height("200px");
    $("#Div_AppInfo").width("90%");
    $(document).ready(function () {
        $("#Div_AppInfo").animate({ height: "60px", width: "170px" }, 500, function () {
            document.getElementById('tbAppinfo').style.display = "none";
            document.getElementById('Div_AppInfo').style.display = "none";
            document.getElementById('Div_AppInfo_close').style.display = "";
            $(document).ready(function () {
                $("#Div_AppInfo_close").animate({ height: "60px", width: "170px" }, 500);
            });
        });
    });
}

function OpenAppInfoDiv() {
    $("#Div_AppInfo_close").height("60px");
    $("#Div_AppInfo_close").width("160px");
    $(document).ready(function () {
        document.getElementById('tbAppinfo').style.display = "";
        document.getElementById('Div_AppInfo').style.display = "";
        document.getElementById('Div_AppInfo_close').style.display = "none";
        $(document).ready(function () {
            $("#Div_AppInfo").animate({ height: "270px", width: "95%" }, 500);
        });
    });
}

function MoveRight() {
    $(document).ready(function () {
        $(document).ready(function () {
            $("#Div_Info_close").animate({ left: "270px" }, 500);
        });
    });
}

