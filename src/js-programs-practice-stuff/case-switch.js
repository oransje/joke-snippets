function setStatusPerOrder(status) {
    switch(status) {
        case 0:
            return 'Erro'
        case 1:
            return 'Pendente'
        case 2:
            return 'Em Andamento'
        case 3:
            return 'Suicesso'
        default:
            return '-'
    }
}

function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}


console.time("teste-switch")

for (let i = 0; i < 50; i++) {
    const randomNum = getRandomInt(0, 4); // Gerando números aleatórios entre 1 e 3
    setStatusPerOrder(randomNum);
}

console.timeEnd("teste-switch")