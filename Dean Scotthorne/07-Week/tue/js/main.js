console.log('hello world')


// https://v2.jokeapi.dev/joke/Programming?amount=10


const fetchJoke = function () {//
//const title = $('#title').val();
//

// returns a deferred object: .done()
$.ajax(`https://geek-jokes.sameerkumar.website/api?format=json`).done(function(data) {
   const joke = data
   console.log(joke)
   $('#response').text(data.joke).appendTo("p")
})
};

$('#joke').on('click', fetchJoke);
