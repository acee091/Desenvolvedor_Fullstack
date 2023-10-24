// 3. Crie uma função chamada "maiorValor" que recebe três parâmetros, "a", "b" e "c". A função deve retornar o maior valor entre os três. 
// Em seguida, chame a função "maiorValor" com valores diferentes e exiba o resultado no console.

function maiorValor(a, b, c){
    if(a > b && a > c){
        return("o maior valor é: " + a)
    }
    else if(b > c && b > a){
        return("o maior valor é: " + b)
    }
    else{
        return("o maior valor é: " + c)
    }
}

const resultado = maiorValor(1, 2, 3);
console.log(resultado);
const resultado1 = maiorValor(7, 2, 1);
console.log(resultado1);
const resultado2 = maiorValor(2, 5, 1);
console.log(resultado2);