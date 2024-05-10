function setStatusPerOrder(status) {
    if (status === 0) {
        return 'Erro';
    } else if (status === 1) {
        return 'Pendente';
    } else if (status === 2) {
        return 'Em Andamento' ;
    } else if (status === 3) {
        return 'Sucesso';
    }
    else {
        return '-';
    }
}

function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}


console.time("teste-if")

for (let i = 0; i < 50; i++) {
    const randomNum = getRandomInt(0, 4); // Gerando números aleatórios entre 1 e 3
    setStatusPerOrder(randomNum);
}

console.timeEnd("teste-if")