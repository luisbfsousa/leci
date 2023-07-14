
var button1 = document.getElementById("button1");
var button2 = document.getElementById("button2");
var button3 = document.getElementById("button3");

function pagination(){

	var section1 = document.getElementById("index");
	var section2 = document.getElementById("musiclab");
	var section3 = document.getElementById("library");

	var fill = document.getElementById("fill");

	fill.style.display = "none";

	section1.style.display = "block";
	section2.style.display = "none";
	section3.style.display = "none";
}


function pagination2(){

	var section1 = document.getElementById("index");
	var section2 = document.getElementById("musiclab");
	var section3 = document.getElementById("library");

	var fill = document.getElementById("fill");

	fill.style.display = "none";

	section1.style.display = "none";
	section2.style.display = "block";
	section3.style.display = "none";


}


function pagination3(){

	var section1 = document.getElementById("index");
	var section2 = document.getElementById("musiclab");
	var section3 = document.getElementById("library");

	var fill = document.getElementById("fill");

	fill.style.display = "none";
	
	section1.style.display = "none";
	section2.style.display = "none";
	section3.style.display = "block";
}

function inicio(){

	var section1 = document.getElementById("index");
	var section2 = document.getElementById("musiclab");
	var section3 = document.getElementById("library");

	var fill = document.getElementById("fill");

	fill.style.display = "block";
	
	section1.style.display = "none";
	section2.style.display = "none";
	section3.style.display = "none";
}
