function pagination(){
	var section1 = document.getElementById("index");
	var section2 = document.getElementById("musiclab");
	var section3 = document.getElementById("library");

	
	var button1 = document.getElementById("button1");
	var button2 = document.getElementById("button2");
	var button3 = document.getElementById("button3");
	

	button1.addEventListener("click", pg);
}


function pg(){
	section1.style.display = "block";
	section2.style.display = "none";
	section3.style.display = "none";
}
