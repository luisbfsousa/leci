document.querySelector('.login-button').addEventListener('click', function(event) {
    event.preventDefault(); 

    var email = document.querySelector('.login-input[type="text"]').value;
    var password = document.querySelector('.login-input[type="password"]').value;

    var predefinedAccounts = [
        { email: 'diogolinux@gmail.com', password: 'birdlover' },
        { email: 'susanadias@gmail.com', password: 'susanadias' } 
    ];

    var accountFound = predefinedAccounts.find(function(account) {
        return account.email === email && account.password === password;
    });

    if (accountFound) {
        localStorage.setItem('email', email);
        localStorage.setItem('hasAccount', 'true');
        window.location.href = 'index.html';
    } else {
        showAlert('Membro não encontrado');
    }
});

document.querySelector('.guest-button').addEventListener('click', function(event) {
    event.preventDefault(); 

    var guestEmail = document.querySelector('.guest-input[type="text"]').value; 

    if(guestEmail === 'diogolinux@gmail.com' || guestEmail === 'susanadias@gmail.com') {
        alert('Invalido, email já associado a uma conta');
    } else if(guestEmail.includes("@gmail.com")) {
        localStorage.setItem('email', guestEmail);
        localStorage.setItem('hasAccount', 'false');
        window.location.href = 'index.html';
    } else {
        alert('Email inválido');
    }
});

function showAlert(message) {
    if (message !== undefined) {
        alert(message);
    }
}

document.addEventListener('DOMContentLoaded', function() {
    localStorage.removeItem('nomeCompleto');
    localStorage.removeItem('nomeAbreviado');
    localStorage.removeItem('dataNascimento');
    localStorage.removeItem('NumeroCC');
    localStorage.removeItem('email');
    localStorage.removeItem('nTelefone');
    localStorage.removeItem('morada');
    localStorage.removeItem('cidade');
    localStorage.removeItem('codigoPostal');
    localStorage.removeItem('pais');
    localStorage.removeItem('genero');
});

// TODO adicionar uma variavel True ou False para verificar se o utilizador tem conta ou nao