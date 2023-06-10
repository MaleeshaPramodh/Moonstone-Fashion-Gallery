var extractedImage = document.getElementById('extracted-image');
function extractImage(imageElement) {
    extractedImage.src = imageElement.src;
    extractedImage.style.display = 'block';
}
function closeExtractedImage() {
    extractedImage.src = '';
    extractedImage.style.display = 'none';
}