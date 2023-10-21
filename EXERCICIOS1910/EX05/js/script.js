// 5. Escreva um programa em JavaScript que solicite um número ao usuário e verifique se ele é positivo, negativo ou igual a zero.
//  Utilize uma estrutura de decisão if, else if e else para verificar o valor do número e exibir a mensagem de alerta correspondente no console.

let numero = parseInt(prompt("Digite um número:"));

if(numero < 0){    
    console.warn("Esté número é negativo!")
}
else if(numero == 0){
    console.warn("Este número é igual a zero!")
}
else {
    console.warn("Esté é um número positivo!")
}