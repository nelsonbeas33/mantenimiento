





function setFormInputAnimation(element) {
    element.addEventListener("focus", function () {
        let LableText = element.parentNode.getelementById(lableText)
        LableText.classList.add("FocusedInputLable");
    });

    element.addEventListener("change", function () {
        console.log("...");
    });

    element.addEventListener("focusout", function () {

        if (element.value == "") {
            let LableText = element.parentNode.getElementsByTagName("span")[0];
            LableText.classList.remove("FocusedInputLable");
        }
    });

}

function print() {
    console.log("xd");
}