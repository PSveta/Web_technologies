//Cоздать функцию greeting, которая принимает в качестве аргумента имя человека 
//и выводит приветствие, используя переданное ей имя, в консоль.

const username = prompt('Введите имя:');

function greeting(name) {
    console.log(`Привет, ${username}`);
}

greeting(username)