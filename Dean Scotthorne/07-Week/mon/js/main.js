console.log('hello world')

// Redo Google Books Search as a single page app that uses AJAX to display (at a minimum) the book cover thumbnail --stick to vanilla JS for some practice (no jQuery) ---- done
// Read these references for more on AJAX: https://gist.github.com/wofockham/05ed3a17212d7ed005fe
// Complete the following sections on my.generalassemb.ly:
// Introduction to Computer Science --- Done
// Algorithms: Introduction to Algorithms --- Done
// Algorithms: Big O Notation --- Done
// Assess these algorithms for discussion



 const fetchCover = function (event) {

    event.preventDefault(); // stay on page, dont send data to server.
    
      const xhr = new XMLHttpRequest();

      xhr.onreadystatechange = function () {

        if (xhr.readyState !== 4) return;
        const data = JSON.parse(xhr.responseText); // convert string into js object
        console.log(data)



        const p = document.createElement('p');
        p.innerHTML = data.items[0].volumeInfo.title;
        document.body.appendChild(p);

        const img = document.createElement('img');
          img.src = data.items[0].volumeInfo.imageLinks.thumbnail;
        document.body.appendChild(img);
      }

      const link1 = document.getElementById('input')
      console.log(link1.value)


      xhr.open('GET', `https://www.googleapis.com/books/v1/volumes?q=title:${link1.value}` );
      xhr.send();
};

document.querySelector('form').addEventListener('submit', fetchCover);

// fetchFact();
