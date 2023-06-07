function previewImage(event) {
    var input = event.target;
    var preview = document.getElementById('image-preview');

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            preview.innerHTML = '<img src="' + e.target.result + '">';
        };

        reader.readAsDataURL(input.files[0]);
    }
}