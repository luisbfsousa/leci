const teams_pt = ["FCPorto","Benfica","Sporting","Penafiel"];
const teams_ge = ["Leipzig","Schalke","Nurnberg","Hannover"];
const teams_en = ["Arsenal","WestHam","Brighton","Coventry"];
const teams_es = ["Sevilha","Osasuna","Mallorca","Espanyol"];
const teams_nl = ["Sittard","Utrecht","Waalwijk","Heracles"];
const teams_it = ["ACMilan","Udinese","Sassuolo","Reggiana"];

function generateMatchup(teams, leagueName, elementId) {
    let team1, team2;

    if (localStorage.getItem(`team1_${leagueName}`) && localStorage.getItem(`team2_${leagueName}`)) {
        team1 = localStorage.getItem(`team1_${leagueName}`);
        team2 = localStorage.getItem(`team2_${leagueName}`);
    } else {
        team1 = teams[Math.floor(Math.random() * teams.length)];
        do {
            team2 = teams[Math.floor(Math.random() * teams.length)];
        } while (team2 === team1);

        localStorage.setItem(`team1_${leagueName}`, team1);
        localStorage.setItem(`team2_${leagueName}`, team2);
    }

    document.getElementById(elementId).innerText = `${team1}  \b - \b   ${team2}`;
}

window.onload = function() {
    generateMatchup(teams_pt, 'PT', 'PT');
    generateMatchup(teams_ge, 'GE', 'GE');
    generateMatchup(teams_en, 'EN', 'EN');
    generateMatchup(teams_es, 'ES', 'ES');
    generateMatchup(teams_nl, 'NL', 'NL');
    generateMatchup(teams_it, 'IT', 'IT');
};

/* carrosel   

let carouselItems = Array.from(document.querySelectorAll('.carousel-item'));
let currentIndex = 0;

setInterval(() => {
    carouselItems[currentIndex].classList.remove('active');

    currentIndex = (currentIndex + 1) % carouselItems.length;

    carouselItems[currentIndex].classList.add('active');
}, 2000); */

/* Chat */

document.addEventListener('DOMContentLoaded', function() {
    const input = document.querySelector('.chat-input');
    const container = document.querySelector('.chat-container');
    const typingIndicator = document.querySelector('#typing-indicator');

    input.addEventListener('keydown', function(event) {
        if (event.key === 'Enter' && input.value.trim() !== '') {
            const userMessage = document.createElement('div');
            userMessage.classList.add('chat-message', 'user');
            userMessage.textContent = input.value;
            container.appendChild(userMessage);

            input.value = '';

            typingIndicator.style.display = 'block';

            setTimeout(function() {
                const botMessage = document.createElement('div');
                botMessage.classList.add('chat-message', 'bot');
                botMessage.textContent = generateResponse(userMessage.textContent);
                container.appendChild(botMessage);

                typingIndicator.style.display = 'none';

                container.scrollTop = container.scrollHeight;
            }, 1500); 
        }
    });
});

function generateResponse(input) {
    var response = '';

    var cleanedInput = input.toLowerCase().replace(/[^\w\s?!.,]/gi, '');

    if (cleanedInput.includes('qual o melhor jogo')) {
        response = 'Jogo do FcPorto no estádio do Dragão';
    } else if (cleanedInput.includes('que medidas devo tomar antes do jogo do fcporto')) {
        response = 'O estádio do Dragão tem capacidade de 50mil lugares então deve chegar com tempo para evitar constrangimentos';
    } else if (cleanedInput.includes('obrigado')) {
        response = 'De nada, qualqiuer coisa estou pronto para ajudar';
    } else if (cleanedInput.includes('ola')) {
        response = 'ola, no que posso ajudar?';
    } else if (cleanedInput.includes('estadio') || cleanedInput.includes('sobre o estadio')) {
        response = getStadiumInfo(cleanedInput);
    } else if (cleanedInput.includes('cidade') || cleanedInput.includes('sobre a cidade')) {
        response = getCityInfo(cleanedInput);
    } else if (cleanedInput.includes('cultura')) {
        response = getCultureInfo(cleanedInput);
    } else {
        response = getTeamInfo(cleanedInput);
    }

    return response;
}

function getTeamInfo(cleanedInput) {
    const teams = {
        "fcporto": "FC Porto é um clube português com sede no Porto.",
        "benfica": "Benfica é um dos clubes mais populares de Portugal, sediado em Lisboa.",
        "sporting": "Sporting Clube de Portugal é um dos maiores clubes de Portugal, com sede em Lisboa.",
        "penafiel": "Penafiel é um clube português com sede na cidade de Penafiel.",
        "leipzig": "RB Leipzig é um clube alemão com sede em Leipzig.",
        "schalke": "Schalke 04 é um clube alemão sediado em Gelsenkirchen.",
        "nurnberg": "1. FC Nürnberg é um clube de futebol alemão de Nuremberga.",
        "hannover": "Hannover 96 é um clube de futebol alemão sediado em Hannover.",
        "arsenal": "Arsenal é um clube de futebol inglês com sede em Londres.",
        "westham": "West Ham United é um clube de futebol inglês sediado em Londres.",
        "brighton": "Brighton & Hove Albion é um clube de futebol inglês sediado em Brighton.",
        "coventry": "Coventry City é um clube de futebol inglês sediado em Coventry.",
        "sevilha": "Sevilha FC é um clube de futebol espanhol sediado em Sevilha.",
        "osasuna": "CA Osasuna é um clube de futebol espanhol sediado em Pamplona.",
        "mallorca": "RCD Mallorca é um clube de futebol espanhol sediado em Palma de Mallorca.",
        "espanyol": "RCD Espanyol é um clube de futebol espanhol sediado em Barcelona.",
        "sittard": "Fortuna Sittard é um clube de futebol neerlandês sediado em Sittard.",
        "utrecht": "FC Utrecht é um clube de futebol neerlandês sediado em Utrecht.",
        "waalwijk": "RKC Waalwijk é um clube de futebol neerlandês sediado em Waalwijk.",
        "heracles": "Heracles Almelo é um clube de futebol neerlandês sediado em Almelo.",
        "acmilan": "AC Milan é um clube de futebol italiano sediado em Milão.",
        "udinese": "Udinese é um clube de futebol italiano sediado em Údine.",
        "sassuolo": "US Sassuolo é um clube de futebol italiano sediado em Sassuolo.",
        "reggiana": "AC Reggiana é um clube de futebol italiano sediado em Reggio Emilia."
    };

    for (var team in teams) {
        if (cleanedInput.includes(team)) {
            return teams[team];
        }
    }

    return 'Nao tenho informações sobre esse time, desculpe.';
}

function getStadiumInfo(cleanedInput) {
    const stadiums = {
        "fcporto": "O estádio do Dragão, casa do FC Porto, tem capacidade para 50 mil espectadores.",
        "benfica": "O Estádio da Luz, casa do Benfica, pode acomodar mais de 64 mil espectadores.",
        "sporting": "O Estádio José Alvalade, casa do Sporting, tem capacidade para 50 mil espectadores.",
        "penafiel": "O Estádio Municipal 25 de Abril, casa do Penafiel, pode acomodar cerca de 5 mil espectadores.",
        "leipzig": "O Red Bull Arena, casa do RB Leipzig, tem capacidade para 42 mil espectadores.",
        "schalke": "A Veltins-Arena, casa do Schalke 04, pode acomodar cerca de 62 mil espectadores.",
        "nurnberg": "O Max-Morlock-Stadion, casa do 1. FC Nürnberg, tem capacidade para 50 mil espectadores.",
        "hannover": "A HDI-Arena, casa do Hannover 96, pode acomodar cerca de 49 mil espectadores.",
        "arsenal": "O Emirates Stadium, casa do Arsenal, tem capacidade para 60 mil espectadores.",
        "westham": "O London Stadium, casa do West Ham United, pode acomodar cerca de 60 mil espectadores.",
        "brighton": "O Falmer Stadium, casa do Brighton & Hove Albion, tem capacidade para 30 mil espectadores.",
        "coventry": "O Coventry Building Society Arena, casa do Coventry City, pode acomodar cerca de 32 mil espectadores.",
        "sevilha": "O Estádio Ramón Sánchez Pizjuán, casa do Sevilha FC, tem capacidade para 43 mil espectadores.",
        "osasuna": "O Estádio El Sadar, casa do CA Osasuna, pode acomodar cerca de 23 mil espectadores.",
        "mallorca": "O Iberostar Estadi, casa do RCD Mallorca, tem capacidade para 23 mil espectadores.",
        "espanyol": "O RCDE Stadium, casa do RCD Espanyol, pode acomodar cerca de 40 mil espectadores.",
        "sittard": "O Fortuna Sittard Stadion, casa do Fortuna Sittard, tem capacidade para 12 mil espectadores.",
        "utrecht": "O Stadion Galgenwaard, casa do FC Utrecht, pode acomodar cerca de 24 mil espectadores.",
        "waalwijk": "O Mandemakers Stadion, casa do RKC Waalwijk, tem capacidade para 7.5 mil espectadores.",
        "heracles": "O Erve Asito, casa do Heracles Almelo, pode acomodar cerca de 12 mil espectadores.",
        "acmilan": "O San Siro, casa do AC Milan, tem capacidade para 80 mil espectadores.",
        "udinese": "O Stadio Friuli, casa do Udinese, pode acomodar cerca de 25 mil espectadores.",
        "sassuolo": "O Mapei Stadium, casa do US Sassuolo, tem capacidade para 21 mil espectadores.",
        "reggiana": "O Mapei Stadium, casa do AC Reggiana, tem capacidade para 21 mil espectadores."
    };

    for (var team in stadiums) {
        if (cleanedInput.includes(team)) {
            return stadiums[team];
        }
    }

    return 'Nao tenho informações sobre esse estádio, desculpe.';
}

function getCityInfo(cleanedInput) {
    const cities = {
        "fcporto": "Porto é uma cidade no noroeste de Portugal conhecida pelo seu vinho do Porto e pela sua arquitetura histórica.",
        "benfica": "Lisboa, onde o Benfica está sediado, é a capital de Portugal e conhecida pelo seu clima ameno, comida deliciosa e rica história.",
        "sporting": "Lisboa, onde o Sporting está sediado, é a capital de Portugal e conhecida pelo seu clima ameno, comida deliciosa e rica história.",
        "penafiel": "Penafiel é uma cidade no norte de Portugal conhecida pelo seu charme tranquilo e história antiga.",
        "leipzig": "Leipzig é uma cidade na Alemanha conhecida pela sua rica herança cultural e musical.",
        "schalke": "Gelsenkirchen, onde o Schalke 04 está sediado, é uma cidade industrial na Alemanha.",
        "nurnberg": "Nuremberga é uma cidade na Alemanha conhecida pela sua história medieval e mercado de Natal.",
        "hannover": "Hannover é uma cidade na Alemanha conhecida pelas suas feiras e exposições comerciais internacionais.",
        "arsenal": "Londres, onde o Arsenal está sediado, é a capital da Inglaterra e uma cidade global conhecida pela sua cultura, história e atrações turísticas.",
        "westham": "Londres, onde o West Ham United está sediado, é a capital da Inglaterra e uma cidade global conhecida pela sua cultura, história e atrações turísticas.",
        "brighton": "Brighton é uma cidade costeira no sul da Inglaterra conhecida pela sua vibrante cena cultural e pier famoso.",
        "coventry": "Coventry é uma cidade na Inglaterra conhecida pela sua catedral moderna e história industrial.",
        "sevilha": "Sevilha é uma cidade no sul da Espanha conhecida pela sua rica herança mourisca, flamenco e festas animadas.",
        "osasuna": "Pamplona, onde o Osasuna está sediado, é uma cidade no norte da Espanha famosa pela sua corrida de touros durante o Festival de São Firmino.",
        "mallorca": "Palma de Mallorca é a capital das Ilhas Baleares, conhecida pelas suas praias deslumbrantes e catedral gótica.",
        "espanyol": "Barcelona, onde o Espanyol está sediado, é uma cidade na Espanha conhecida pela sua arte e arquitetura modernista, especialmente as obras de Gaudí.",
        "sittard": "Sittard é uma cidade nos Países Baixos conhecida pelo seu charme histórico e eventos culturais.",
        "utrecht": "Utrecht é uma cidade nos Países Baixos conhecida pelo seu centro medieval e canais pitorescos.",
        "waalwijk": "Waalwijk é uma cidade nos Países Baixos conhecida pela sua indústria de calçados e atmosfera acolhedora.",
        "heracles": "Almelo, onde o Heracles Almelo está sediado, é uma cidade nos Países Baixos conhecida pela sua história industrial e belas paisagens.",
        "acmilan": "Milão é uma cidade na Itália conhecida como a capital mundial da moda e do design.",
        "udinese": "Údine é uma cidade na Itália conhecida pela sua história, cultura e cozinha deliciosa.",
        "sassuolo": "Sassuolo é uma cidade na Itália conhecida pela sua produção de cerâmica e atmosfera tranquila.",
        "reggiana": "Reggio Emilia é uma cidade na Itália conhecida pela sua educação inovadora e culinária regional."
    };

    for (var team in cities) {
        if (cleanedInput.includes(team)) {
            return cities[team];
        }
    }

    return 'Nao tenho informações sobre essa cidade, desculpe.';
}

function getCultureInfo(cleanedInput) {
    const cultures = {
        "fcporto": "Porto é famosa pelo seu vinho, comida deliciosa, arquitetura histórica e vibrante vida noturna.",
        "benfica": "Lisboa é conhecida pela sua música Fado, bairros pitorescos, como Alfama e Belém, e culinária deliciosa.",
        "sporting": "Lisboa é conhecida pela sua música Fado, bairros pitorescos, como Alfama e Belém, e culinária deliciosa.",
        "penafiel": "Penafiel é uma cidade tradicional com festas locais, pratos típicos e um rico património cultural.",
        "leipzig": "Leipzig é conhecida pela sua herança musical, especialmente as associações com Bach, e seus vibrantes eventos culturais.",
        "schalke": "Gelsenkirchen tem uma forte tradição industrial e é famosa pela paixão dos seus fãs de futebol.",
        "nurnberg": "Nuremberga é conhecida pelos seus mercados de Natal, castelo medieval e rica história.",
        "hannover": "Hannover é uma cidade cultural com muitos museus, teatros e eventos internacionais.",
        "arsenal": "Londres é um caldeirão de culturas com uma cena artística vibrante, culinária diversificada e história rica.",
        "westham": "Londres é um caldeirão de culturas com uma cena artística vibrante, culinária diversificada e história rica.",
        "brighton": "Brighton é conhecida pela sua atmosfera boêmia, festivais de música, arte e cultura alternativa.",
        "coventry": "Coventry é uma cidade com uma rica história industrial e um centro cultural em crescimento.",
        "sevilha": "Sevilha é o coração do flamenco, famosa pelas suas festas, tapas e rica herança mourisca.",
        "osasuna": "Pamplona é famosa pela sua corrida de touros, mas também tem uma rica história e tradições culturais.",
        "mallorca": "Palma de Mallorca é conhecida pelas suas praias, festivais e arquitetura histórica.",
        "espanyol": "Barcelona é um centro cultural com arte, arquitetura e uma vibrante cena de comida e música.",
        "sittard": "Sittard tem uma rica tradição cultural com eventos anuais, música e uma comunidade acolhedora.",
        "utrecht": "Utrecht é conhecida pelos seus festivais de música, cena artística e rica história cultural.",
        "waalwijk": "Waalwijk é uma cidade com tradições culturais e eventos locais, conhecida pela sua hospitalidade.",
        "heracles": "Almelo tem uma forte tradição cultural com eventos comunitários e uma história industrial rica.",
        "acmilan": "Milão é a capital da moda e do design, com uma cena cultural vibrante e uma história rica.",
        "udinese": "Údine é conhecida pela sua herança cultural, festivais e uma deliciosa culinária local.",
        "sassuolo": "Sassuolo é famosa pela sua produção de cerâmica e cultura local, com festivais e tradições.",
        "reggiana": "Reggio Emilia é conhecida pelo seu sistema educacional inovador, culinária regional e eventos culturais."
    };

    for (var team in cultures) {
        if (cleanedInput.includes(team)) {
            return cultures[team];
        }
    }

    return 'Nao tenho informações sobre essa cultura, desculpe.';
}

document.querySelectorAll('.checkout-button').forEach(function(button) {
    button.addEventListener('click', function() {
        window.location.href = 'checkout.html'; 
    });
});

const gameTypeMapping = {
    'bundesliga': 'GE',
    'premierleague': 'EN',
    'ligabetclic': 'PT',
    'laliga': 'ES',
    'seriea': 'IT',
    'eredivisie': 'NL'
};

const checkoutButtons = document.querySelectorAll('.checkout-button');

checkoutButtons.forEach((button) => {
    button.addEventListener('click', function() {
        const id = button.parentElement.previousElementSibling.id;

        const gameType = gameTypeMapping[id];

        window.location.href = `checkout.html?gameType=${gameType}`;
    });
});