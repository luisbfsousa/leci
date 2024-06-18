window.onload = function() {
    var email = localStorage.getItem('email');
    var predefinedEmailDiogo = 'diogolinux@gmail.com'; 
    var predefinedEmailSusana = 'susanadias@gmail.com'; 
    var accountImage = document.querySelector('.account-image');
    var accountEmailElement = document.querySelector('.account-email');

    if (email === predefinedEmailDiogo) {
        accountImage.src = 'assets/images/diogo.jpeg';
        accountEmailElement.textContent = "Socio: nº 69420";
    } else if (email === predefinedEmailSusana) { 
        accountImage.src = 'assets/images/susana.jpg';
        accountEmailElement.textContent = "Socio: nº 27391";
    } else {
        accountImage.src = 'assets/images/convidado.jpg'; 
        accountEmailElement.textContent = "";
    }
};

document.querySelector('.account-button').addEventListener('click', function() {
    var nomeCompleto = document.getElementById('nomeCompleto').value;
    var nomeAbreviado = document.getElementById('nomeAbreviado').value;
    var dataNascimento = document.getElementById('dataNascimento').value;
    var NumeroCC = document.getElementById('NumeroCC').value;
    var email = document.getElementById('email').value;
    var nTelefone = document.getElementById('nTelefone').value;
    var morada = document.getElementById('morada').value;
    var cidade = document.getElementById('cidade').value;
    var codigoPostal = document.getElementById('codigoPostal').value;
    var pais = document.getElementById('pais').value;
    var genero = document.getElementById('genero').value;

    if (email === 'diogolinux@gmail.com') {
        alert('Contactar clube para salvar mudanças');
    }
    else if (email === 'susanadias@gmail.com') {
        alert('Contactar clube para salvar mudanças');
    } else if (!nomeCompleto || !nomeAbreviado || !dataNascimento || !NumeroCC || !email || !nTelefone || !morada || !cidade || !codigoPostal || !pais || genero === "") {
        alert('Preencha todos os campos');
    } else {
        localStorage.setItem('nomeCompleto', nomeCompleto);
        localStorage.setItem('nomeAbreviado', nomeAbreviado);
        localStorage.setItem('dataNascimento', dataNascimento);
        localStorage.setItem('NumeroCC', NumeroCC);
        localStorage.setItem('email', email);
        localStorage.setItem('nTelefone', nTelefone);
        localStorage.setItem('morada', morada);
        localStorage.setItem('cidade', cidade);
        localStorage.setItem('codigoPostal', codigoPostal);
        localStorage.setItem('pais', pais);
        localStorage.setItem('genero', genero);
        alert('Perfil Atualizado\n \nUma mensagem foi enviada por email para definir a password e aceder à conta daqui em diante');
    }
});

document.addEventListener('DOMContentLoaded', function() {
    var email = localStorage.getItem('email');
    var predefinedEmailDiogo = 'diogolinux@gmail.com';
    var predefinedEmailSusana = 'susanadias@gmail.com';
    var nomeCompletoDiogo = 'Diogo Tavares Carvalho';
    var nomeAbreviadoDiogo = 'Diogo Carvalho';
    var dataNascimentoDiogo = '2004-09-10';
    var NumeroCCDiogo = '113221';
    var nTelefoneDiogo = '910480953';
    var moradaDiogo = 'Rua de Cucujaes';
    var cidadeDiogo = 'Cucujães';
    var codigoPostalDiogo = '3721-908';
    var paisDiogo = 'Portugal';
    var generoDiogo = 'male';

    var nomeCompletoSusana = 'Susana Manuel Ribeiro Soares Dias';
    var nomeAbreviadoSusana = 'Susana Dias';
    var dataNascimentoSusana = '2001-09-11';
    var NumeroCCSusana = '987654';
    var nTelefoneSusana = '938329806';
    var moradaSusana = 'Travessa 1º Visconde da Granja';
    var cidadeSusana = 'Aveiro';
    var codigoPostalSusana = '3800-244';
    var paisSusana = 'Portugal';
    var generoSusana = 'female';

    if(email === predefinedEmailDiogo) {
        document.getElementById('nomeCompleto').value = nomeCompletoDiogo;
        document.getElementById('nomeAbreviado').value = nomeAbreviadoDiogo;
        document.getElementById('dataNascimento').value = dataNascimentoDiogo;
        document.getElementById('NumeroCC').value = NumeroCCDiogo;
        document.getElementById('email').value = email;
        document.getElementById('nTelefone').value = nTelefoneDiogo;
        document.getElementById('morada').value = moradaDiogo;
        document.getElementById('cidade').value = cidadeDiogo;
        document.getElementById('codigoPostal').value = codigoPostalDiogo;
        document.getElementById('pais').value = paisDiogo;
        document.getElementById('genero').value = generoDiogo;
    } else if (email === predefinedEmailSusana) {
        document.getElementById('nomeCompleto').value = nomeCompletoSusana;
        document.getElementById('nomeAbreviado').value = nomeAbreviadoSusana;
        document.getElementById('dataNascimento').value = dataNascimentoSusana;
        document.getElementById('NumeroCC').value = NumeroCCSusana;
        document.getElementById('email').value = email;
        document.getElementById('nTelefone').value = nTelefoneSusana;
        document.getElementById('morada').value = moradaSusana;
        document.getElementById('cidade').value = cidadeSusana;
        document.getElementById('codigoPostal').value = codigoPostalSusana;
        document.getElementById('pais').value = paisSusana;
        document.getElementById('genero').value = generoSusana;
    } else {
        document.getElementById('nomeCompleto').value = localStorage.getItem('nomeCompleto') || '';
        document.getElementById('nomeAbreviado').value = localStorage.getItem('nomeAbreviado') || '';
        document.getElementById('dataNascimento').value = localStorage.getItem('dataNascimento') || '';
        document.getElementById('NumeroCC').value = localStorage.getItem('NumeroCC') || '';
        document.getElementById('email').value = localStorage.getItem('email') || '';
        document.getElementById('nTelefone').value = localStorage.getItem('nTelefone') || '';
        document.getElementById('morada').value = localStorage.getItem('morada') || '';
        document.getElementById('cidade').value = localStorage.getItem('cidade') || '';
        document.getElementById('codigoPostal').value = localStorage.getItem('codigoPostal') || '';
        document.getElementById('pais').value = localStorage.getItem('pais') || '';
        document.getElementById('genero').value = localStorage.getItem('genero') || '';
    }    
});

document.querySelector('.logout-button').addEventListener('click', function() {
    localStorage.clear();
});

document.querySelector('.logout-button').addEventListener('click', function(event) {
    event.preventDefault();
    localStorage.clear();
    window.location.href = 'login.html';
    location.reload(true);
});