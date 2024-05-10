function setStatusPerOrder(status) {
    const typeStatus = {
        0: 'Erro',
        1: 'Pendente',
        2: 'Em Andamento',
        3: 'Sucesso'
    }

    return typeStatus[ status] || '-';
}


function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}


console.time("teste-object")

for (let i = 0; i < 50; i++) {
    const randomNum = getRandomInt(0, 4); // Gerando números aleatórios entre 1 e 3
    setStatusPerOrder(randomNum);
}

console.timeEnd("teste-object")