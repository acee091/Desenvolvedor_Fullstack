
// 4. Escreva um programa que defina uma variável para armazenar a idade de uma pessoa e exiba uma mensagem informando se ela é maior de idade ou não.

//    O programa deve receber a idade de uma pessoa como entrada, armazená-la em uma variável e exibir uma mensagem informando se a pessoa é maior de idade ou não no console.

let idade = prompt("Digite a sua idade:")
const idadeMaior = 18;
 if(idade >= idadeMaior){
         alert("Você já é maior de idade!")
 }
 else{
        let idadeFalta = idadeMaior - idade;
         alert("Você não é maior de idade! \nFaltam " + idadeFalta + " anos para você se tornar maior de idade!")
}