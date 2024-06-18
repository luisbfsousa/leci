function removeExistingErrorMessages() {
    var errorMessages = document.querySelectorAll('.error-message');
    errorMessages.forEach(function(message) {
        message.textContent = '';
    });
}

function validateSocioTickets() {
    var email = document.querySelector('#socio-ticket-1').value;
    var ticketCount = document.querySelector('#socio-ticket-2').value;
    var message = document.getElementById('socio-error-message');

    var allowedEmails = ['diogolinux@gmail.com', 'susanadias@gmail.com'];

    if (!allowedEmails.includes(email) || ticketCount === '' || ticketCount < 0 || ticketCount > 3) {
        removeExistingErrorMessages();
        if (!allowedEmails.includes(email)) {
            message.textContent = 'Email não associado a conta de sócio';
        } else {
            message.textContent = 'Numero Invalido de Bilhetes';
        }
        document.getElementById('advance-purchase-button').style.display = 'none';
    } else {
        removeExistingErrorMessages(); 
        document.getElementById('socio-tickets-count').textContent = ticketCount.padStart(2, '0');
        document.getElementById('publico-tickets-count').textContent = '00'; 
        document.getElementById('advance-purchase-button').style.display = 'block'; 

        // Save to localStorage
        localStorage.setItem('ticketType', 'socio');
        localStorage.setItem('ticketCount', ticketCount);
    }
}

function validatePublicoTickets() {
    var ticketCount = document.querySelector('#publico-ticket-number').value;
    var message = document.getElementById('publico-error-message');

    if (ticketCount === '' || ticketCount < 1 || ticketCount > 10) {
        removeExistingErrorMessages();
        message.textContent = 'Numero Invalido de Bilhetes.';
        document.getElementById('advance-purchase-button').style.display = 'none'; 
    } else {
        removeExistingErrorMessages(); 
        document.getElementById('publico-tickets-count').textContent = ticketCount.padStart(2, '0');
        document.getElementById('socio-tickets-count').textContent = '00';
        document.getElementById('advance-purchase-button').style.display = 'block'; 

        // Save to localStorage
        localStorage.setItem('ticketType', 'publico');
        localStorage.setItem('ticketCount', ticketCount);
    }
}

document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('socio-tickets-count').textContent = '00';
    document.getElementById('publico-tickets-count').textContent = '00';

    const urlParams = new URLSearchParams(window.location.search);
    const gameType = urlParams.get('gameType');
    const matchInfo = document.querySelector('#match-info');

    localStorage.setItem('gameType', gameType);

    const team1 = localStorage.getItem(`team1_${gameType}`);
    const team2 = localStorage.getItem(`team2_${gameType}`);

    if (team1 && team2) {
        matchInfo.textContent = `${team1} - ${team2}`;
    } else {
        matchInfo.textContent = 'Match-up not available';
    }

    const gameTypeMapping = {
        'PT': { time: '20:00', image: 'assets/images/sponsor_pt.png' },
        'GE': { time: '16:00', image: 'assets/images/sponsor_ge.png' },
        'EN': { time: '14:00', image: 'assets/images/sponsor_en.png' },
        'IT': { time: '17:30', image: 'assets/images/sponsor_it.png' },
        'ES': { time: '19:00', image: 'assets/images/sponsor_es.png' },
        'NL': { time: '18:00', image: 'assets/images/sponsor_nl.png' }
    };

    const time = gameTypeMapping[gameType].time;
    const image = gameTypeMapping[gameType].image;

    const timeElement = document.querySelector('.hours');
    const imageElement = document.querySelector('.ticket img');

    timeElement.textContent = time;
    imageElement.src = image;
});

window.onload = function() {
    document.getElementById('advance-purchase-button').addEventListener('click', function() {
        window.location.href = 'pagamento.html';
    });
};
