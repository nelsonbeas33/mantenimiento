

let MovedDragElement = null;


function CreateDragElement(id, name, ResX, ResY, Path){

    let element = document.createElement("div");
    element.id = id;
    element.classList.add("draggable-elem");

    element.addEventListener("dblclick", (e) => {
        window.location.href = ManteinenceRegisterFormUrl + "?id=" + id
    });

    let elementImage = document.createElement("img");
    elementImage.src = location.protocol + "//" + location.host + "/" + Path;
    elementImage.runat = "server";
    elementImage.alt = name;
    elementImage.width = ResX;
    elementImage.height = ResY;
    elementImage.classList.add("listElement");

    element.appendChild(elementImage);

    document.getElementById("containerDragAndDrop").appendChild(element);
    SetDragPropertys(id);

    return id;
}

function SetDragPropertys(id){
    let draggableElem = document.getElementById(id);
    let initialX = 0,
    initialY = 0;
    let moveElement = false;

    //Events Object
    let events = {
    mouse: {
        down: "mousedown",
        move: "mousemove",
        up: "mouseup",
    },
    touch: {
        down: "touchstart",
        move: "touchmove",
        up: "touchend",
    },
    };

    let deviceType = "";

    //Detech touch device
    const isTouchDevice = () => {
    try {
        //We try to create TouchEvent (it would fail for desktops and throw error)
        document.createEvent("TouchEvent");
        deviceType = "touch";
        return true;
    } catch (e) {
        deviceType = "mouse";
        return false;
    }
    };

    isTouchDevice();

    //Start (mouse down / touch start)
    draggableElem.addEventListener(events[deviceType].down, (e) => {
    e.preventDefault();

    if (e.button == 0) {
        //initial x and y points
        initialX = !isTouchDevice() ? e.clientX : e.touches[0].clientX;
        initialY = !isTouchDevice() ? e.clientY : e.touches[0].clientY;

        //Start movement
        moveElement = true;
    }
    });

    //Move
    draggableElem.addEventListener(events[deviceType].move, (e) => {
        //if movement == true then set top and left to new X andY while removing any offset
        if (moveElement && e.button == 0) {
            e.preventDefault();
            let newX = !isTouchDevice() ? e.clientX : e.touches[0].clientX;
            let newY = !isTouchDevice() ? e.clientY : e.touches[0].clientY;
            draggableElem.style.top =
            draggableElem.offsetTop - (initialY - newY) + "px";
            draggableElem.style.left =
            draggableElem.offsetLeft - (initialX - newX) + "px";
            initialX = newX;
            initialY = newY;

            MovedDragElement = draggableElem;
        }
    });

      //mouse up / touch end
    draggableElem.addEventListener(
        events[deviceType].up,
        (stopMovement = (e) => {
            if (e.button == 0) {

                //let newX = !isTouchDevice() ? e.clientX : e.touches[0].clientX;
                //let newY = !isTouchDevice() ? e.clientY : e.touches[0].clientY;
                //MovedDragElement.style.top = e.clientX + "px";
                //MovedDragElement.style.left = e.clientY + "px";

                MovedDragElement = null;
                moveElement = false;
            }
        })
    );

    draggableElem.addEventListener("mouseleave", stopMovement);
    draggableElem.addEventListener(events[deviceType].up, (e) => {
    moveElement = false;
    });

}


function CreateElementId(elementId){
    let NumberOfElements = document.getElementsByClassName("draggable-elem").length;
    return "N" + elementId + "_" + (NumberOfElements + 1).toString();
}


function CreteLineElemetsJSON() {
    let elements = document.getElementsByClassName("draggable-elem");

    let elemetsJson = {
        lineId: activeLineId,
        elements: {}
    }

    let elementList = [];

    for (let i = 0; i < elements.length; i++) {
        elementList.push({ Id: elements[i].id, Top: elements[i].style.top, Left: elements[i].style.left });
    }

    elemetsJson["elements"] = elementList;

    return elemetsJson;
}



function SaveLine() {
    let elemetsJson = CreteLineElemetsJSON();
    PostPersistence(elemetsJson, "https://localhost:44316/api/persistenceLine");
}


