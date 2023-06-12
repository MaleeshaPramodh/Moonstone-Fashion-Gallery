window.addEventListener("scroll", function (){
    var header = document.getElementById("nav-div");
    var body = document.getElementById("body");
    var scrollTrigger = body.offsetTop = header.offsetHeight;
    if (window.pageYOffset > scrollTrigger) {
        header.classList.add("fixed-ft1");
        header.classList.remove("fixed-ft2");
    }else {
        header.classList.add("fixed-ft2");
        header.classList.remove("fixed-ft1");
    }
});