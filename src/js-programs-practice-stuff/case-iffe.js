function setStatusPerOrder(status) {
    var typeStatus;
    (function (typeStatus) {
    typeStatus[(typeStatus[0] = 0)] = "Erro";
    typeStatus[(typeStatus[1] = 1)] = "Pendente";
    typeStatus[(typeStatus[2] = 2)] = "Em Andamento";
    typeStatus[(typeStatus[3] = 3)] = "Sucesso";
    })(typeStatus || (typeStatus = {}));

    return typeStatus[status]
}


function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}


console.time("teste-iffe")

for (let i = 0; i < 50; i++) {
    const randomNum = getRandomInt(0, 4); // Gerando números aleatórios entre 1 e 3
    setStatusPerOrder(randomNum);
}

console.timeEnd("teste-iffe")