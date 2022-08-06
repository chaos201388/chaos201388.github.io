'use strict';

// https://www.youtube.com/watch?v=Jakoi0G8lBg


console.log(typeof true);
console.log(typeof 1.414);
console.log(typeof 'Cardcaptor Sakura');
console.log(typeof [0, 1, 1, 2, 3, 5, 8, 13, 21]);
console.log(typeof {name: 'value'});
console.log(typeof Symbol());
console.log(typeof undefined);
console.log(typeof null);
console.log(typeof NaN);


const DEBUG = true;
let number = 123;

if (DEBUG) {
    const DEBUG = false;
    let number = 456;

    console.log(DEBUG, number);
}

console.log(DEBUG, number);


let say = (...params) => {
    let something = '';
    for (let param of params) {
        something += `${param} `;
    }
    return something;
}

let something = say('hello', 'world');
console.log(something);


let numbers = [1, 5, 10, 10, 5, 1];

let total = numbers.reduce((m, n) => m + n);
let odds = numbers.filter(n => n % 2 == 1);
let squares = numbers.map(n => n ** 2);

console.log(total);
console.log(odds);
console.log(squares);


let movie = {
    'title': 'Dead Pool 2',
    'runtime': 119,
    'rating': 8.3
};

let {title, runtime} = movie;

console.log(title, runtime);

let {rating} = movie;

console.log(rating);


let x = 1;
let y = 2;

[x, y] = [y, x];

console.log(x, y);


class Car {
    constructor(brand, owner) {
        this.brand = brand;
        this.owner = owner;
    }

    showInfo() {
        console.log(this.brand, this.owner);
    }
}

let car = new Car('BMW', 'Alice');

car.showInfo();


let fruits = new Set();

fruits.add('apple');
fruits.delete('apple');

console.log(fruits);


let cache = new Map();

cache.set('name', 'David');
cache.set('age', 30);

let name = cache.get('name');
let age = cache.get('age');

console.log(name, age);

cache.forEach((value, key) => {
    console.log(key, value);
});
