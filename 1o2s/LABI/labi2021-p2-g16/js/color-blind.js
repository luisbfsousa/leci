function colorBlindOpen(){
	var menu = document.getElementById("box1");
	var menuJanela = document.getElementById("janela");
  var menu2 = document.getElementById("box2");
  
	if(menuJanela.style.display = "none"){
		menuJanela.style.display = "block";
    menu.style.display = "none";
    menu2.style.display = "block";
	}
}

function colorBlindClose(){
	var menu = document.getElementById("box1");
	var menuJanela = document.getElementById("janela");
  var menu2 = document.getElementById("box2");
  
	if(menuJanela.style.display = "block"){
		menuJanela.style.display = "none";
    menu.style.display = "block";
    menu2.style.display = "none";
	}
}

// Protanopia button

function deutoranopia(){
	var button1 = document.getElementById("button1");
	var button2 = document.getElementById("button2");
	var button3 = document.getElementById("button3");

	var note1 = document.getElementById("note1");
	var note2 = document.getElementById("note2");
	var note3 = document.getElementById("note3");

	document.getElementById("logotipo").src = "img/logo_colorblind.png";

	button1.style.backgroundColor = "#7774A4";
	button2.style.backgroundColor = "#E9ED3C";
	button3.style.backgroundColor = "#4A3BA6";

	note1.style.filter = "invert(94%) sepia(57%) saturate(563%) hue-rotate(8deg) brightness(79%) contrast(83%)";
	note2.style.filter = "invert(21%) sepia(79%) saturate(1614%) hue-rotate(232deg) brightness(93%) contrast(94%)";
	note3.style.filter = "invert(100%) sepia(17%) saturate(6391%) hue-rotate(3deg) brightness(82%) contrast(134%)";
}

function nonColorBlind(){
	var button1 = document.getElementById("button1");
	var button2 = document.getElementById("button2");
	var button3 = document.getElementById("button3");

	var note1 = document.getElementById("note1");
	var note2 = document.getElementById("note2");
	var note3 = document.getElementById("note3");

	document.getElementById("logotipo").src = "img/logo.png";

	button1.style.backgroundColor = "#6A8EAE";
	button2.style.backgroundColor = "#FEC601";
	button3.style.backgroundColor = "#02C39A";

	note1.style.filter = "invert(51%) sepia(96%) saturate(2930%) hue-rotate(318deg) brightness(95%) contrast(93%)";
	note2.style.filter = "invert(50%) sepia(86%) saturate(460%) hue-rotate(88deg) brightness(98%) contrast(86%)";
	note3.style.filter = "invert(65%) sepia(100%) saturate(596%) hue-rotate(360deg) brightness(104%) contrast(103%)";

}
