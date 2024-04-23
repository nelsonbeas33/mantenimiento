const contextMenu = document.querySelector(".wrapperMenu"),
    shareMenu = contextMenu.querySelector(".share-menu");


const dragAndDropZoneElement = document.getElementById("dragAndDropZone");
let ElementContextMenuHover = null;

dragAndDropZoneElement.addEventListener("contextmenu", e => {
    e.preventDefault();

    let x = e.pageX, y = e.pageY,
        winWidth = window.innerWidth,
        winHeight = window.innerHeight,
        cmWidth = contextMenu.offsetWidth,
        cmHeight = contextMenu.offsetHeight;

    if (x > (winWidth - cmWidth - shareMenu.offsetWidth)) {
        shareMenu.style.left = "-200px";
    } else {
        shareMenu.style.left = "";
        shareMenu.style.right = "-200px";
    }

    x = x > winWidth - cmWidth ? winWidth - cmWidth - 5 : x;
    y = y > winHeight - cmHeight ? winHeight - cmHeight - 5 : y;

    contextMenu.style.left = `${x}px`;
    contextMenu.style.top = `${y}px`;
    contextMenu.style.visibility = "visible";

    if (e.target.nodeName == "IMG") {
        e.target.classList.add("listEelementDotted");

        //cambio de elemento con contextmenu
        try {
            if (e.target != ElementContextMenuHover) {
                ElementContextMenuHover.classList.remove("listEelementDotted");
            }
        } catch {

        }

        ElementContextMenuHover = e.target;
    } else {
        try {
            ElementContextMenuHover.classList.remove("listEelementDotted");
        } catch {

        }
    }

    
});

document.addEventListener("click", () => {

    contextMenu.style.visibility = "hidden";
    try {
        ElementContextMenuHover.classList.remove("listEelementDotted");
    } catch {

    }
});