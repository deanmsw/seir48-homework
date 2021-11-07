// console.log('hello world')

// Write code inside the functions
// You will have to figure out what parameters to include
// All functions must use recursion

function findMax(arr){
  // This function returns the largest number in a given array.
    arr.sort(function(a, b) {
    return a - b;

  })
    return arr[arr.length -1]

};
  findMax([3,4,2,1,2]);
  findMax([-1, -34, -45]);
// }
//------------------------------------------------------------------------------
// let arr2 = [];
// let arr4 = [];
function factorial(n){
    // This function returns the factorial of a given number.

      if (n <= 0) {
        return
      } else {

     factorial(n) = n * factorial(n-1);

       }
      // factorial(num - 1);
};




 console.log(factorial(8))


//     if (num <= 1) {
//       return
//     } else {
//       arr2.push(num)
//
//       arr4.push(arr2[0] *= num -1);
//       factorial(num - 1);
//     }
//       return arr4[arr4.length -1];
//
//   };
//
// console.log(factorial(8));



//------------------------------------------------------------------------------

  // let arr3 = [0, 1, 1]

  function fibonacci(num){
    // This function returns the Nth number in the fibonacci sequence.
    // https://en.wikipedia.org/wiki/Fibonacci_number
    // For this function, the first two fibonacci numbers are 1 and 1

  // if( num = 1 ) {
  //
  //   console.log(num ++)
  // } else
  //     fibonacci();
  //     };
  //
  //
  // fibonacci(2);


  // arr3[arr3.length - 2] + arr3[arr3.length - 1]



}








//------------------------------------------------------------------------------


function coinFlips(){
    // This function returns an array of all possible outcomes from flipping a coin N times.
    // Input type: Integer
    // For example, coinFlips(2) would return the following:
    // ["HH", "HT", "TH", "TT"]
    // H stands for Heads and T stands for tails
    // Represent the two outcomes of each flip as "H" or "T"
}

function letterCombinations(){
    // This function returns an array of all combinations of the given letters
    // Input type: Array of single characters
    // For example, letterCombinations(["a","b","c"]) would return the following:
    // ["a","b","c","ab","ac","ba","bc","ca","cb","abc","acb","bac","bca","cab","cba"]
}

module.exports = {
    findMax,
    factorial,
    fibonacci,
    coinFlips,
    letterCombinations
}
