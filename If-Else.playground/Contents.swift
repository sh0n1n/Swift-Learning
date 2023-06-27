import Foundation

let myName = "Ronin"
let myAge = 19
let yourName = "Foo"
let yourAge = 22

if myName == "Ronin" {
    "Your name is \(myName)"
} else {
    "That is not your name"
}
 
if myName == "Ronin" {
    "Yes, it's your name"
} else if myName == "Foo" {
    "Are you Foo?"
} else {
    "I give up!"
}

if myName == "Ronin" && myAge == 19 {
    "That's correct"
} else if myAge == 20 {
    "Error"
} else {
    "I don't know how old I am"
}


if myAge == 19 || myName == "Ronin" {
    "Either age is 19, name is Ronin or both"
} else if myName == "Ronin" || myAge == 19 {
    "It's too late to get in this clause"
}

if myName == "Ronin"
    && myAge == 19
    && yourName == "Foo"
    || yourAge == 21 {
    "My name is Ronin and I'm 19 y.o and your name is Foo ...OR... you are 21"
}

if (myName == "Ronin"
    && myAge == 19)
    &&
    (yourName == "Foo"
     || yourAge == 22) {
    "My name's Ronin and I'm 19... AND ... your name's Foo or you're 19"
} else {
    "That didn't work well"
}
