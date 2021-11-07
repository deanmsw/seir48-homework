
 const fetchCover = function (event) {

    event.preventDefault(); // stay on page, dont send data to server.
    const title = document.getElementById('title').value
    console.log('fetching', title);

    const xhr = new XMLHttpRequest();

    xhr.open('GET', `https://www.googleapis.com/books/v1/volumes?q=title:${title}`);
    xhr.send();

    xhr.onreadystatechange = function () {

    if (xhr.readyState !== 4) return;

    const data = JSON.parse(xhr.responseText); // convert string into js object
    const cover = data.items[0].volumeInfo.imageLinks.thumbnail;
    document.getElementById('cover').setAtribute('src', cover);
};

};

document.querySelector('form').addEventListener('submit', fetchCover);
