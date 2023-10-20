// 2. Escreva um programa em JavaScript que solicite um número ao usuário e verifique se ele é par ou ímpar. Utilize uma estrutura de decisão if para verificar se o número é par ou ímpar, e exiba a mensagem correspondente no console.

let numero = parseInt(prompt("Digite um número"));

if ((numero%2) == 0){
    console.log(numero + " é par!");
}
else{
    console.log(numero + " é ímpar!");
}