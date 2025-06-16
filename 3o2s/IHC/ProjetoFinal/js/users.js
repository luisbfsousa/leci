const registeredAccounts = [
    { fullName: "Susana Dias", shortName: "Susana", email: "susanadias@gmail.com", hashtag: "DS@92", birthYear: 1992 },
    { fullName: "Diogo Carvalho", shortName: "Diogo", email: "diogolinux@gmail.com", hashtag: "DC@90", birthYear: 1990 },
    { fullName: "Luis Sousa", shortName: "Luis", email: "luissousa@outlook.com", hashtag: "LS@93", birthYear: 1993 },
    { fullName: "Rui Rosmaninho", shortName: "Rui", email: "ruirosmaninho@hotmail.com", hashtag: "RR@91", birthYear: 1991 },
    { fullName: "Simão Almeida", shortName: "Simão", email: "simaoneto@gmail.com", hashtag: "SA@94", birthYear: 1994 },
    { fullName: "Maria Silva", shortName: "Maria", email: "mariasilva@gmail.com", hashtag: "MS@90", birthYear: 1990 },
    { fullName: "João Pereira", shortName: "João", email: "jpereira@outlook.com", hashtag: "JP@89", birthYear: 1989 },
    { fullName: "Ana Costa", shortName: "Ana", email: "anacosta@gmail.com", hashtag: "AC@93", birthYear: 1993 },
    { fullName: "Pedro Martins", shortName: "Pedro", email: "pmartins@hotmail.com", hashtag: "PM@96", birthYear: 1996 },
    { fullName: "Catarina Oliveira", shortName: "Catarina", email: "coliveira@gmail.com", hashtag: "CO@92", birthYear: 1992 },
    { fullName: "Miguel Santos", shortName: "Miguel", email: "miguelsantos@outlook.com", hashtag: "MS@95", birthYear: 1995 },
    { fullName: "Inês Ferreira", shortName: "Inês", email: "iferreira@gmail.com", hashtag: "IF@97", birthYear: 1997 },
    { fullName: "Inês Ferreirinha", shortName: "Inês", email: "iferreirinha@gmail.com", hashtag: "IF@92", birthYear: 1992 },
    { fullName: "Ivo Delgado", shortName: "Ivo", email: "ivodelgado@gmail.com", hashtag: "ID@93", birthYear: 1993 },
    { fullName: "Ricardo Gomes", shortName: "Ricardo", email: "rgomes@hotmail.com", hashtag: "RG@91", birthYear: 1991 },
    { fullName: "Sofia Rodrigues", shortName: "Sofia", email: "srodrigues@gmail.com", hashtag: "SR@94", birthYear: 1994 },
    { fullName: "Tiago Marques", shortName: "Tiago", email: "tmarques@outlook.com", hashtag: "TM@93", birthYear: 1993 }
];

if (!localStorage.getItem('registeredAccounts')) {
    localStorage.setItem('registeredAccounts', JSON.stringify(registeredAccounts));
}

function generateHashtag(fullName, birthYear) {
    const names = fullName.split(' ');
    const firstName = names[0];
    const lastName = names[names.length - 1];
    const firstLetter = firstName[0].toUpperCase();
    const lastLetter = lastName[0].toUpperCase();
    const yearDigits = birthYear.toString().slice(-2);
    return `${firstLetter}${lastLetter}@${yearDigits}`;
}