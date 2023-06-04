window.addEventListener('DOMContentLoaded', function() {
    var container = document.querySelector('.image-container');
    var images = container.getElementsByTagName('img');
    var imageWidth = images[0].offsetWidth;


    var numImages = images.length;
    for (var i = 0; i < numImages; i++) {
        var clone = images[i].cloneNode(true);
        container.appendChild(clone);
    }

    var totalWidth = imageWidth * numImages;

    container.style.width = totalWidth + 'px';
});







