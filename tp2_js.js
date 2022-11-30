function somme(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
var c = Number(a) + Number (b);
result.innerText = c;
}

function soustraction(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
var c = Number(a) - Number (b);
result.innerText = c;
}

function multiplication(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
var c = Number(a) * Number (b);
result.innerText = c;
}

function division(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
var c = Number(a) / Number (b);
result.innerText = c;
}

function parite(){
    var v = Number(document.getElementById("inputOne").value);
    if ( v % 2 == 0)
    result.innerText="Ce nombre est pair";
    else
    result.innerText="Ce nombre est impair";
}

function permute()
{
    var v3 = "";
    m = document.getElementById("inputOne").value;
    n = document.getElementById("inputTwo").value;
    v3= m;
    m = n;
    n =v3;

    inputOne.value = m;
    inputTwo.value = n;
}