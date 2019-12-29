var provRoad = {
    id: -1,
    ref: "",
    name: "",
    origin: "",
    destination: "",
    distance: 1
};

function modifyById(id, ref, name, origin, destination, distance) {
    provRoad.id = id;
    provRoad.ref = ref;
    provRoad.name = name;
    provRoad.origin = origin;
    provRoad.destination = destination;
    provRoad.distance = distance;
    document.getElementById("provRoadRef").value = ref;
    document.getElementById("provRoadName").value = name;
    document.getElementById("provRoadOrigin").value = origin;
    document.getElementById("provRoadDestination").value = destination;
    document.getElementById("provRoadDistance").value = distance;
}

var deleteTarget = -1;

function deleteById(id) {
    deleteTarget = id;
}

function getPageNum() {
    var pageString = window.location.pathname.split("/");
    var pageNum = 1;
    if (pageString.length > 2) {
        pageNum = pageString[pageString.length - 1];
    }
    return pageNum;
}

function jumpModify() {
    updateProvRoad();
    post('/modify', {
        id: provRoad.id,
        ref: provRoad.ref,
        name: provRoad.name,
        origin: provRoad.origin,
        destination: provRoad.destination,
        distance: provRoad.distance,
        page: getPageNum()
    });
}

function post(URL, PARAMS) {
    var temp = document.createElement("form");
    temp.action = URL;
    temp.method = "post";
    temp.style.display = "none";
    for (var x in PARAMS) {
        var opt = document.createElement("textarea");
        opt.name = x;
        opt.value = PARAMS[x];
        temp.appendChild(opt);
    }
    document.body.appendChild(temp);
    temp.submit();
    return temp;
}

function updateProvRoad() {
    provRoad.ref = document.getElementById("provRoadRef").value;
    provRoad.name = document.getElementById("provRoadName").value;
    provRoad.origin = document.getElementById("provRoadOrigin").value;
    provRoad.destination = document.getElementById("provRoadDestination").value;
    provRoad.distance = document.getElementById("provRoadDistance").value;
}

function jumpDelete() {
    var pageString = window.location.pathname.split("/");
    location = "/delete/" + deleteTarget + "?page=" + getPageNum();
}

function jumpAdd() {
    UpdateProvRoadAdd();
    post('/add', {
        ref: provRoad.ref,
        name: provRoad.name,
        origin: provRoad.origin,
        destination: provRoad.destination,
        distance: provRoad.distance
    });
}

function UpdateProvRoadAdd() {
    provRoad.ref = document.getElementById("provRoadRefAdd").value;
    provRoad.name = document.getElementById("provRoadNameAdd").value;
    provRoad.origin = document.getElementById("provRoadOriginAdd").value;
    provRoad.destination = document.getElementById("provRoadDestinationAdd").value;
    provRoad.distance = document.getElementById("provRoadDistanceAdd").value;
}