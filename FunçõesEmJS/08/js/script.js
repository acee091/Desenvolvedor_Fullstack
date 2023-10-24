// 8. Crie uma função chamada "verificaPrimo" que recebe um parâmetro "num". A função deve verificar se o número recebido é primo e exibir uma mensagem no console
//  informando se é ou não primo. Em seguida, chame a função "verificaPrimo" com diferentes valores para "num" e exiba o resultado no console.


// NUMERO PRIMO
// dividi-lo sucessivamente por números primos como: 2, 3, 5. . . e verificar se a divisão é exata (em que o resto é zero) ou não exata (onde o resto é diferente de zero). 
// Se o resto da divisão for zero o número não é primo. Se nenhum resto for zero, o número é primo.

function verificaPrimo(num){    
    divisores = 0;
    for(i = 0; i <= num; i++)
    if(num%i == 0){
       divisores++;
    }

    if(divisores == 2){
        return(num + " é um número primo")
    }
    else{
        return(num + " não é um número primo");
    }
}

const resultado = verificaPrimo(3);
console.log(resultado)
const resultado3 = verificaPrimo(5);
console.log(resultado3)
const resultado4 = verificaPrimo(7);
console.log(resultado4)
const resultado1 = verificaPrimo(15);
console.log(resultado1)
const resultado2 = verificaPrimo(91);
console.log(resultado2)