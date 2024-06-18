/*
function payWith(method) {
    alert('Proceeding with ' + method);
}
*/

window.onload = function() {
    const ticketType = localStorage.getItem('ticketType');
    const ticketCount = parseInt(localStorage.getItem('ticketCount'));
    const gameType = localStorage.getItem('gameType');
    const team1 = localStorage.getItem(`team1_${gameType}`);
    const team2 = localStorage.getItem(`team2_${gameType}`);
    const ticketPrice = 10; 
    const discountRate = 0.5; 

    if (ticketType && ticketCount && team1 && team2) {
        const originalPrice = ticketCount * ticketPrice;
        const discountedPrice = originalPrice * discountRate;
        const matchInfo = `${team1} vs ${team2}`;
        const ticketInfo = `Pretende comprar ${ticketCount} bilhetes para o seguinte jogo por `;

        document.getElementById('match-info').textContent = matchInfo;

        if (ticketType === 'socio') {
            document.getElementById('ticket-info').innerHTML = `${ticketInfo}${discountedPrice} euros`;
            document.getElementById('discount-info').innerHTML = `
                <div class="discount-message">Como é sócio(a) usufrui de um desconto de 50%</div>
            `;
        } else {
            document.getElementById('ticket-info').innerHTML = `${ticketInfo}${originalPrice} euros`;
        }

        const gameTypeMapping = {
            'PT': { time: '20:00', image: 'assets/images/sponsor_pt.png' },
            'GE': { time: '16:00', image: 'assets/images/sponsor_ge.png' },
            'EN': { time: '14:00', image: 'assets/images/sponsor_en.png' },
            'IT': { time: '17:30', image: 'assets/images/sponsor_it.png' },
            'ES': { time: '19:00', image: 'assets/images/sponsor_es.png' },
            'NL': { time: '18:00', image: 'assets/images/sponsor_nl.png' }
        };

        const gameData = gameTypeMapping[gameType];
        if (gameData) {
            document.getElementById('match-time').textContent = gameData.time;
            document.getElementById('sponsor-image').src = gameData.image;
        }
    } else {
        document.getElementById('ticket-info').textContent = 'Informações sobre os bilhetes não disponíveis.';
    }
};

function showInput(method) {
    var modal = document.getElementById("modal");
    modal.style.display = "block";

    var inputs = document.querySelectorAll('.payment-input');
    inputs.forEach(function(input) {
        input.style.display = 'none';
    });

    var input = document.getElementById(method + '-input');
    if (input) {
        input.style.display = 'block';
    }
}

function submitPayment() {
    var modalBody = document.getElementById("modal-body");
    modalBody.innerHTML = '<p>A processar</p>';

    var dots = '';
    var intervalId = setInterval(function() {
        dots += '.';
        if (dots.length > 4) {
            dots = '';
        }
        modalBody.innerHTML = '<p>A processar' + dots + '</p>';
    }, 400); 

    setTimeout(function() {
        clearInterval(intervalId);
        var purchaseId = Math.floor(Math.random() * 10000);
        modalBody.innerHTML = '<p>Compra #' + purchaseId + ' efetuada com sucesso</p><p>O seu bilhete foi enviado para o email indicado</p>';
        setTimeout(function() {
            window.location.href = 'index.html';
        }, 4000); 
    }, 4000);
}

window.onclick = function(event) {
    var modal = document.getElementById("modal");
    var modalBody = document.getElementById("modal-body");
    if (event.target == modal) {
        clearInterval(intervalId); 
        modal.style.display = "none";
    }
};

document.addEventListener('keydown', function(event) {
    var modal = document.getElementById("modal");
    var modalBody = document.getElementById("modal-body");
    if (event.key === "Escape") {
        clearInterval(intervalId); 
        modal.style.display = "none";
    }
});

window.addEventListener('beforeunload', function(event) {
    var modal = document.getElementById("modal");
    if (window.location.pathname === '/index.html') {
        clearInterval(intervalId); 
        modal.style.display = "none";
        localStorage.removeItem('ticketType');
        localStorage.removeItem('ticketCount');
    }
});
