const hamBurger = document.getElementById("NavBarButtonToogle");
const NavBarElementButton = document.getElementById("NavBarElementsButton");
let navBarExpanded = false;
let navBarExpandedLarge = false;

hamBurger.addEventListener("click", function () {
    document.querySelector("#sidebar").classList.toggle("expand");
    document.querySelector("#sidebar").classList.remove("expandElements");

    navBarExpanded = !navBarExpanded;

    if (navBarExpandedLarge) {
        NavBarElementButton.click();
    }
});

NavBarElementButton.addEventListener("click", function () {

    navBarExpandedLarge = !navBarExpandedLarge;
    if (navBarExpandedLarge) {
        document.getElementById("sidebar").classList.add("expandElements");
    } else {
        document.getElementById("sidebar").classList.remove("expandElements");
    }

});



