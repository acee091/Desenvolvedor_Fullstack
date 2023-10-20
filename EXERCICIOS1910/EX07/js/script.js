
// 7. Escreva um programa em JavaScript que solicite uma nota ao usuário e verifique se ela é válida. Utilize uma estrutura de decisão if para verificar se a nota informada está dentro do intervalo de 0 a 10, e exiba a mensagem correspondente no console.

let nota = parseInt(prompt("Digite a nota:"));

if (nota < 0 || nota > 10){
    console.log(nota + " não é uma nota válida!")
}
else {
    console.log(nota + " é uma nota válida!")
}