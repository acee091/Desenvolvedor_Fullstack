
// 1. Escreva um programa em JavaScript que solicite dois números ao usuário e exiba o maior número no console. Utilize uma estrutura de decisão if para comparar os números e exibir o maior número no console.

let num1 = parseInt(prompt("Digite o primeiro número"));
let num2 = parseInt(prompt("Digite o segundo número"));

if (num1 > num2){
    console.log(num1 + " é maior que " + num2)
}
else{
    console.log(num2 + " é maior que " + num1)
}