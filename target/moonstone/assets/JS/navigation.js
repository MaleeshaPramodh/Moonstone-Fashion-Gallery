window.addEventListener("scroll", function (){
    var header = document.getElementById("nav-div");
    var body = document.getElementById("body");
    var scrollTrigger = body.offsetTop = header.offsetHeight;
    if (window.pageYOffset > scrollTrigger) {
        header.classList.add("fixed-bg1");
        header.classList.remove("fixed-bg2");
    }else {
        header.classList.add("fixed-bg2");
        header.classList.remove("fixed-bg1");
    }
});