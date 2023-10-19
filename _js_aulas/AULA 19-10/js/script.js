// Advogado Engenheiro Programador Profissão nao encontrada
// let job = prompt("Digite a sua profissão:");

// switch(job){
//     case "Advogado":
//         console.log("Você é um advogado")
//         break;
//     case "Programador":
//         console.log("Você é um programador")
//         break;
//     case "Engenheiro":
//         console.log("Você é um engenheiro")
//         break;
//     default:
//         console.log("Profissão não encontrada")
// }

// let contador = 1;

// while (contador <= 5){
//     console.log(contador)
//     contador++
// }
// solicitar ao usuario, escolher um numero (0-10) apresente a partir do numero o somatorio ate 100

// let numero = parseInt(prompt("Escolha um número de 1 a 10"));

// while(numero){
//     numero += 1;
//     console.log(numero)
//     break;
// }
// let numero = parseInt(prompt("Escolha um número de 1 a 10"));
// while(numero){
//     numero += 5;
//     console.log(numero)
// }

// let numero = parseInt(prompt("Escolha um número:"));
//  while(numero){
//          numero -= 1;
//          console.log(numero)

// }

// let contador = 5;

// do{
//     console.log(contador)
//     contador--
// }
// while(contador > 0)

// for(let i = 0; i <= 5; i++){
//     console.log(i)
// }

// utlizando o laço for escreva os numeros de 20 até 100
// incrementar 5 --> i+=5
// for(i = 20; i <= 100; i++){
//     console.log(i)
// }

// let numero = parseInt(prompt("Digite um número"))
// console.log("Número ímpares entre 1 e" + numero)
// for(let i= 1; i < numero; i++){
//     if((i%2)!= 0){
//         console.log(i)
//     }
// }

let numero = parseInt(prompt("Digite um número"))
console.log("Número pares entre 1 e" + numero)
for(let i= 0; i < numero; i++){
    if((i%2)== 0){
        console.log(i)
    }
}