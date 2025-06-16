function showErrorPopup(message) {
    const existingPopup = document.querySelector('.error-popup');
    if (existingPopup) {
        existingPopup.remove();
    }
    
    let popupContainer = document.querySelector('.popup-container');
    if (!popupContainer) {
        popupContainer = document.createElement('div');
        popupContainer.className = 'popup-container';
        document.body.appendChild(popupContainer);
    }
    
    const popup = document.createElement('div');
    popup.className = 'error-popup';
    popup.textContent = message;
    
    popupContainer.appendChild(popup);
    
    setTimeout(() => {
        popup.classList.add('show');
    }, 10);
    
    setTimeout(() => {
        popup.classList.remove('show');
        setTimeout(() => {
            popup.remove();
            if (popupContainer.children.length === 0) {
                popupContainer.remove();
            }
        }, 300);
    }, 3000);
}

document.querySelector('.login-button').addEventListener('click', function(event) {
    event.preventDefault(); 

    var email = document.querySelector('.login-input[type="text"]').value;
    var password = document.querySelector('.login-input[type="password"]').value;

    var predefinedAccounts = [
        { email: 'diogolinux@gmail.com', password: 'birdlover' },
        { email: 'susanadias@gmail.com', password: 'susanadias' } 
    ];
    
    var registeredAccounts = JSON.parse(localStorage.getItem('registeredAccounts')) || [];
    var allAccounts = [...predefinedAccounts, ...registeredAccounts];

    var accountFound = allAccounts.find(function(account) {
        return account.email === email && account.password === password;
    });

    if (accountFound) {
        localStorage.setItem('email', email);
        localStorage.setItem('hasAccount', 'true');
        localStorage.setItem('openSidebarOnDashboard', 'true');
        window.location.href = 'dashboard.html';
    } else {
        showErrorPopup('Membro não encontrado');
    }
});

document.querySelector('.google-button').addEventListener('click', function(event) {
    event.preventDefault();
    showErrorPopup('Erro no login');
});

document.querySelector('.facebook-button').addEventListener('click', function(event) {
    event.preventDefault();
    showErrorPopup('Erro no login');
});

document.querySelector('.guest-button').addEventListener('click', function(event) {
    event.preventDefault(); 

    var guestEmail = document.querySelector('.guest-input[type="text"]').value; 

    if(guestEmail === 'diogolinux@gmail.com' || guestEmail === 'susanadias@gmail.com') {
        alert('Invalido, email já associado a uma conta');
    } else if(guestEmail.includes("@gmail.com")) {
        localStorage.setItem('email', guestEmail);
        localStorage.setItem('hasAccount', 'false');
        localStorage.setItem('isPredefinedAccount', 'false');
        localStorage.setItem('openSidebarOnDashboard', 'true');
        window.location.href = 'dashboard.html';
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
