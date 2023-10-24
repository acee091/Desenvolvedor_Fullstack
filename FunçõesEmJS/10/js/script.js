// 10. Crie uma função chamada "imprimeTabuada" que recebe um parâmetro "num". A função deve imprimir no console a tabuada do número recebido, de 1 até 10. 
// Em seguida, chame a função "imprimeTabuada" com diferentes valores para "num" e exiba o resultado no console.

function imprimeTabuada(numero){
        for(i = 1; i  <= 10; i++){
            let tabuada = numero * i
             console.log(numero + " x " + i + " = " + tabuada)
        }
}

const resultado = imprimeTabuada(10);
console.log(resultado);

const resultado1 = imprimeTabuada(6);
console.log(resultado1);

const resultado2 = imprimeTabuada(3);
console.log(resultado2);