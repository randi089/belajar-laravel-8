// slug otomatis
const title = document.getElementById('title');
const nama = document.getElementById('name');
const slug =document.getElementById('slug');

if (title) {
    title.addEventListener('change', function() {
        fetch('/dashboard/posts/checkSlug?title=' + title.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug);
    });
} else if (nama) {
    nama.addEventListener('change', function() {
        fetch('/dashboard/categories/checkSlug?name=' + nama.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug);
    });
}

// off event trix editor
document.addEventListener('trix-file-accept', function(e) {
    e.preventDefault();
});

// Preview Gambar
function previewImage() {
    const image = document.querySelector('#image');
    const imagePreview = document.querySelector('.img-preview');

    imagePreview.style.display = 'block';

    const ofReader = new FileReader();
    ofReader.readAsDataURL(image.files[0]);

    ofReader.onload = function(oFREvent) {
        imagePreview.src = oFREvent.target.result;
    }
}