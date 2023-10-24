// 7. Crie uma função chamada "calculaAreaRetangulo" que recebe dois parâmetros, "base" e "altura". 
// A função deve calcular a área de um retângulo utilizando a fórmula "base x altura" e retornar o resultado. Em seguida, chame a função "calculaAreaRetangulo" 
// com diferentes valores para "base" e "altura" e exiba o resultado no console.

function calculaAreaRetangulo(base, altura){
    let area = base * altura;
    return area;
}

const resultado = calculaAreaRetangulo(5,5);
console.log(resultado);
const resultado1 = calculaAreaRetangulo(7,3);
console.log(resultado1);
const resultado2 = calculaAreaRetangulo(10,4);
console.log(resultado2);