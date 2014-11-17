/////////////////////////////////////////////JAVASCRIPT EXERCISES////////////////////////////////////////////////

1. Define a function max() that takes two numbers as arguments and returns the largest of them. Use the 
if-then-else construct available in Javascript.

function max(x, y) {
if (x > y) {
    return x
} else if (y > x) {
	return y
}
}
max(12, 14)

// => Returns 14

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

2. Define a function maxOfThree() that takes three numbers as arguments and returns the largest of them.

function max(x, y, z) {
if (x > y && x > z) {
    return x
} else if (y > x && y > z) {
	return y
} else {
    return z
}
}
max(25, 14, 9)

// => Returns 25
// Basic if else statement we are using && to make sure that x or y will only be returned if the fulfill both conditions stated

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

3. Write a function that takes a character (i.e. a string of length 1) and returns true if it is a vowel, false otherwise.

function vowel(x) {
    if (x === "a" || x === "e" || x ===  "i" || x ===  "o" || x === "u") {
        return true
    } else {
        return false
    }
}
vowel("e")

// => This will return true

// There is a better way of doing this since this code is fairly long, lets refactor it

function vowel(c) {
    return ['a', 'e', 'i', 'o', 'u'].indexOf(c) !== -1
}

vowel("b")

// This is a very interesting way of solving this problem lets review it step by step:

"We create a normal function and give it a variable"	

"Then we ask our method to return the result of using indexOf of variable C, on an array of vowels. indexOf will search for
the index value if it does not find the argument given it on the string or array it will automatically return -1, so knowing that
we state on the next part of the code, if the result of the index search is NOT equal to -1 return true, else return false. This is a
very clever way of getting true or false results."

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

4. Write a function translate() that will translate a text into "rövarspråket". That is, double every consonant and place 
an occurrence of "o" in between. For example, translate("this is fun") should return the string "tothohisos isos fofunon".

function vowel(c) {
    return ['a', 'e', 'i', 'o', 'u'].indexOf(c) !== -1;
}

function translate(string){
    var x = "";
    for (var i = 0; i < string.length; i++) {
		if(vowel(string[i])) {
			x += (string[i]);
		} else {
			x += (string[i] + "o" + string[i]);
		}
	}
    console.log(x);
}

translate("Happy")

"Lets analyze this code step by step:"

"We are using our vowel function, if you need to know how it works please refer to the previous exercise"

"We create a new function that takes as a parameter string, then we create a variable x, this seems fairly easy up to this point"

"We then proceed to create our for LOOP, in which we create a new varibale i and equal it to 0 then we make sure that this variable can
never be bigger than the lenght of our string, finally we tell javascript that we want to add 1 after each time we loop."

"We proceed using i as an integer for our index purposes, since in javascript strings have an index value. Now  that we are looping
through each letter of our string we can play around with them and add them into our new string."

"Another kew point to understand is that we are asking if (vowel(string[i])) we know that our metho will return true or false, if this
statement is true then shove that string into our empty string x, if it is false however add that string followed by an o followed by
the string"

"Confusing... i Know! :D"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

5. Define a function sum() and a function multiply() that sums and multiplies (respectively) all the numbers in an array of numbers. 
For example, sum([1,2,3,4]) should return 10, and multiply([1,2,3,4]) should return 24.

function sum (x) {
    console.log(x.reduce(function(prev, cur) {
    return prev + cur;
}));
}

// => Returns 10 

function multiply (x) {
    console.log(x.reduce(function(prev, cur) {
        return prev * cur;
    }));
}

// => Reeturns 24

// This is another tricky javascript exercise, we are using the method REDUCE let us break down this method in the following lines

"Reduce, will act as a call back method and it can play around with 4 different arguments"

"previousValue or prev, as the name clearly states this will be the previous value to the current value you are using, if there is none
it will be given the initial value which can be understood as the first object to use as the first argument to the first call of the 
callback"

"currentValue or cur, this is the current value the method is working on"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

6. Define a function reverse() that computes the reversal of a string. For example, reverse("jag testar") should return the string 
"ratset gaj".

function reverse(string) {
    var x = ""
	for(var i = string.length - 1; i >= 0; i--) {
		x += string[i]
	}
    return x
}

reverse("marco")

// 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

7. Represent a small bilingual lexicon as a Javascript object in the following fashion {"merry":"god", "christmas":"jul", 
"and":"och", "happy":"gott", "new":"nytt", "year":"år"} and use it to translate your Christmas cards from English into Swedish.



////////////////////////////////////////////////////////////////////////////////////////////////////////////////

8. Write a function findLongestWord() that takes an array of words and returns the length of the longest one.

function longWords(array) {
    array.sort(function (a, b) {
        return a.length < b.length;
    });
    console.log(array[0])
}

x = ["ma", "mark", "marco", "m"]

longWords(x)

// => This will give us as a result "marco"

"Finding the longest word is not too complicated, the best way to do it in my opinion is to sort the array by the lenght of each
of the strings within it. After sorting and placing the longest string on the very start of the array, we can console.log it by 
calling its index since now we know that array[0] will always be the longest word"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

9. Write a function filterLongWords() that takes an array of words and an integer i and returns the array of words that are longer 
than i.

function longWords(array, num) {
    var y = [];
    for(var i = 0; i < array.length; i ++) {
        if (array[i].length > num) {
            y.push(array[i]) ;
        }
    }
    console.log(y)
}
x = ["ma", "mark", "marco", "m"]
longWords(x, 2)



"This problem was little more complex, so we give our function two parameters this time one will be our array and the other one
will be our integer. We need a variable that is an empty array to push our new iterated elements into it. We proceed then to create
a for loop in order to go through each element of our array. Then we test each elements length and compare it to our integer if 
the element within the array asses the condition it will be pushed into our newly created array, then we proceed to console log Y 
with the new iterated elements "

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

JavaScript basic

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

1. Write a JavaScript program to display the current day and time in the following format.
Sample Output : Today is : Friday. 
Current time is : 4 PM : 50 : 22

var today = new Date();
var day = today.getDay();
var daylist = ["Sunday","Monday","Tuesday","Wednesday ","Thursday","Friday","Saturday"];
       alert("Today is : " + daylist[day] + ".");
        var hour = today.getHours();
        var minute = today.getMinutes();
        var second = today.getSeconds();
        var prepand = (hour >= 12)? " PM ":" AM ";
        hour = (hour >= 12)? hour - 12: hour;
alert("Current Time : "+hour + prepand + " : " + minute + " : " + second);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

2. Write a JavaScript program to print the contents of the current window.

function print_current_page() {
    window.print();
  }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

3. Write a JavaScript program to get the current date.
Expected Output : 
mm-dd-yyyy, mm/dd/yyyy or dd-mm-yyyy, dd/mm/yyyy 

var today = new Date();
var dd = today.getDate();
//The value returned by getMonth is an integer between 0 and 11, referring 0 to January, 1 to February, and so on.
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
  if(dd<10) {
      dd='0'+dd;
  } 

  if(mm<10) {
      mm='0'+mm;
  } 
  today = mm+'-'+dd+'-'+yyyy;
  alert(today);
  
  today = mm+'/'+dd+'/'+yyyy;
  alert(today);
  
  today = dd+'-'+mm+'-'+yyyy;
  alert(today);
  
  today = dd+'/'+mm+'/'+yyyy;
  alert(today);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

4. Write a JavaScript program to find the area of a triangle where lengths of the three of its sides are 5, 6, 7.

var side1 = 5; 
var side2 = 6; 
var side3 = 7; 
var perimeter = (side1 + side2 + side3)/2;
var area =  Math.sqrt(perimeter*((perimeter-side1)*(perimeter-side2)*(perimeter-side3)));
console.log(area);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

5. Write a JavaScript program to rotate the string 'w3resource' in right direction by periodically removing one letter from the 
end of the string and attaching it to the front.

function animate_string(id) {
    var element = document.getElementById(id);
    var textNode = element.childNodes[0]; // assuming no other children
    var text = textNode.data;

setInterval(function () {
   text = text[text.length - 1] + text.substring(0, text.length - 1);
    textNode.data = text;
  }, 100);
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

6. Write a JavaScript program to determine whether a given year is a leap year in the Gregorian calendar. 

  year = window.prompt("Input a Year : ");
  x = (year % 100 === 0) ? (year % 400 === 0) : (year % 4 === 0);
  alert(x);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

7. Write a JavaScript program to find 1st January be a Sunday between 2014 and 2050. 

console.log('--------------------');
for (var year = 2014; year <= 2050; year++) {
    var d = new Date(year, 0, 1);
    if ( d.getDay() === 0 ) {
        console.log("1st January is being a Sunday  "+year);
    }
  }
console.log('--------------------');

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

8. Write a JavaScript program where the program takes a random integer between 1 to 10, the user is then prompted 
to input a guess number. If the user input matches with guess number, the program will display a message "Good Work" 
otherwise display a message "Not matched". 

// Get a random integer from 1 to 10 inclusive
 var num = Math.ceil(Math.random() * 10);
 var gnum = prompt('Guess the number between 1 and 10 inclusive');
 if (gnum == num) {
   alert('Matched');
 } else {
   alert('Not matched, the number was ' + num);
 }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

9. Write a JavaScript program to validate a date in dd/mm/yyyy format. If the user input matches with the format, 
the program will display a message "Valid Date" otherwise display a message "Invalid Date!". Go to the editor

 function isValiddt(rdt) {
  var regDt = /(?:0[1-9]|[12][0-9]|3[01])\/(?:0[1-9]|1[0-2])\/(?:19|20\d{2})/; 
  return regDt.test(rdt);
 }
                
function valid_date() {
 var inputdt = document.getElementById("txtdt");
  if (isValiddt(inputdt.value)) {
   alert("Valid Date");
  } else {
    alert("Invalid Date!");
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

10. Write a JavaScript program to calculate days left until next Christmas. Go to the editor
Click me to see the solution

today=new Date();
  var cmas=new Date(today.getFullYear(), 11, 25);
  if (today.getMonth()==11 && today.getDate()>25) {
  cmas.setFullYear(cmas.getFullYear()+1); 
  };

  var one_day=1000*60*60*24;
  alert(Math.ceil((cmas.getTime()-today.getTime())/(one_day))+
  " days left until Christmas!");

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

11. Write a JavaScript program to calculate multiplication and division of two numbers (input from user). 

function multiplyBy() {
        num1 = document.getElementById("firstNumber").value;
        num2 = document.getElementById("secondNumber").value;
        document.getElementById("result").innerHTML = num1 * num2;
}

function divideBy() { 
        num1 = document.getElementById("firstNumber").value;
        num2 = document.getElementById("secondNumber").value;
document.getElementById("result").innerHTML = num1 / num2;
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////

12. Write a JavaScript program to convert temperatures to and from celsius, fahrenheit.
[ Formula : c/5 = f-32/9 [ where c = temperature in celsius and f = temperature in fahrenheit ] 
Expected Output : 
60°C is 140 °F
45°F is 7.222222222222222°C

function cToF(celsius) {
  var cTemp = celsius;
  var cToFahr = cTemp * 9 / 5 + 32;
  var message = cTemp+'\xB0C is ' + cToFahr + ' \xB0F.';
    console.log(message);
}

function fToC(fahrenheit) {
  var fTemp = fahrenheit;
  var fToCel = (fTemp - 32) * 5 / 9;
  var message = fTemp+'\xB0F is ' + fToCel + '\xB0C.';
    console.log(message);
} 
cToF(60);
fToC(45);


Javascript Functions

Exercise #3.2

var name = prompt("What is your first name?");
var lastname = prompt("What is your last name?");
alert("Welcome back my dearest" + " " + name + " " + lastname);


////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #3.3

var name = prompt("What is your first name?");
var lastname = prompt("What is your last name?").toUpperCase();
alert("Welcome back my dearest" + " " + name + " " + lastname);


////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #4

var entry = prompt("ID and Age")
if (entry >=21 && entry <= 100) {
  alert("You may pass, drinks are half off till 9pm")
} else {
  alert("Get the hell out of here before I call the 5 - 0 on you punk")
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Review Exercise #2

var value = prompt("PLease give input a number")
  if (value%7 == 0) {
    alert("You chose a lucky number, good for you! Now scram!!!") 
  } else if (value%2 == 0) {
    alert("You are even steven my friend, NOW SCRAM!!!")
  } else {
    alert("Not your lucky day huh.....")
  };

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Review Exercise #2.1 

var slap = function {
  alert('SLAP');
};
slap();

//correct the syntax

var slap = function () {
  alert('SLAP');
};
slap();


////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Review Exercise #2.2

var kick = function (name) {
  alert(name ' reproaches your behavior.');
};
kick('Billy');

//correct the syntax

var kick = function (name) {
  alert(name + ' reproaches your behavior.');
};
kick('Billy');

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #2.3

var doubleIt = function (x) {
  alert(X + ' times two is ' + x);
};
doubleIt(8);

//find the two logical errors

var doubleIt = function (x) {
  alert(x + ' times two is ' + x*x);
};
doubleIt(8);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #2.4

var greet = function () {
  alert("Welcome, " + name);
};
greet('Bob');

//fix the one logical errors

var greet = function (x) {
  alert("Welcome, " + x);
};
greet('Bob');

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #3.1

var yell = function (x) {
  alert(x.toUpperCase());
}

yell("MaRcOs")

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #3.2

var divideBy = function(x, y) {
  alert(x / y);
}

var result = divideBy(50, 2);
console.log('Result should be 25:', result);

result = divideBy(40, 10);
console.log('Result should be 4:', result);

result = divideBy(99, 3);
console.log('Result should be 33:', result);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #3.3

var welcome = function(name1, name2) {
  if (name1 && name2) {
    console.log("Welcome " + name1 + " and " + name2 + "!")
  } else if (name1) {
    console.log("Welcome " + name1 + "!")
  } else {
    nil
  };
};

var result = welcome('Alice', 'Bob');
console.log('Result should be "Welcome, Alice and Bob!"', result);

var result = welcome('Alice');
console.log('Result should be "Welcome, Alice!"', result);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Exercise #4.1

var secretNumber = parseInt(Math.random() * 100, 10) + 1;
console.log(secretNumber)

var userGuess = prompt("Give me a number")

function myFunction(x) {
  if (Math.floor(x) === secretNumber) {
    alert("You guessed the number!!!!! CONGRATULATIONS!!!! YOU WIN A MILLION DOLLARS! not!");
  } else if (x > secretNumber ) {
    alert("It is a lower number!!");
    var userGuess = prompt("Give me a number")
    myFunction(userGuess);
  } else if (x < secretNumber) {
    alert("It is a higher number");
    var userGuess = prompt("Give me a number")
    myFunction(userGuess);
  } 
}

myFunction(userGuess)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

