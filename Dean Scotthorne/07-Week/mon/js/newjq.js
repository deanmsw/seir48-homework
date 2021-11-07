console.log('batty')

const fetchCover = function (event) {
  event.preventDefault();

  const title = $('#title').val();


// returns a deferred object: .done()
$.ajax(`https://www.googleapis.com/books/v1/volumes?q=title:${title}`).done(function(data) {
   const cover = data.items[0].volumeInfo.imageLinks.thumbnail;
   $('#cover').attr('src', cover);
})
};

$('form').on('submit', fetchCover);
