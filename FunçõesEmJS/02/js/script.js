// 2. Crie uma função chamada "media" que recebe três parâmetros, "a", "b" e "c". A função deve calcular a média dos três valores e retornar o resultado.
//  Em seguida, chame a função "media" com valores diferentes e exiba o resultado no console.

function media(a, b, c){
    let media = (a + b + c) / 3;
    return media;
}

const resultado = media(10, 10, 10);
console.log(resultado);

const resultado1 = media(5, 7, 10);
console.log(resultado1);

const resultado2 = media(3, 5, 6);
console.log(resultado2);