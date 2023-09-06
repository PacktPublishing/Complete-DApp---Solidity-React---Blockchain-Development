/ Anonymous Arrow Functions ES6 Javascript

// why switch - easy format syntax 
// the this keyword works diff 
// arrow scopes for this is not defined and global - like in most coding languages 
// scoping of this

// name function 


 

function sum(a,b) {
    return a + b;
}

// name function 


// conversion to arrow 
// function is assumed
// return is implicit and curly 

let sum2 = (a,b) => a + b 

function isPositive(n) {
    return n >= 0;
}


//one single paramter and will still work 
let isPositive = n => n >= 0;

// name function 

function randomNumber(){ 
    return Math.random 
}

let randomNumber = () => Math.random 

// anoonymous functions shine as arrow functions when passing functions to other functions 
document.addEventListener('click', function() {
    console.log('click')
})

document.addEventListener('click', () => {
    console.log('click')
})