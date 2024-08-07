const title = document.getElementById('title');
const slug =document.getElementById('slug');

if (title) {
    title.addEventListener('change', function() {
        fetch('/dashboard/posts/checkSlug?title=' + title.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug);
    });
}

document.addEventListener('trix-file-accept', function(e) {
    e.preventDefault();
});
