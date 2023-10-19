// nota1 = parseFloat(prompt("Digite a primeira nota"));
// nota2 = parseFloat(prompt("Digite a primeira nota"));
// nota3 = parseFloat(prompt("Digite a primeira nota"));

// let media = (nota1 + nota2+ nota3) / 3;

// if(media < 5){
//     console.log("Aluno(a) reprovado(a) com média " + media)
// }
// else if(media >= 5 && media < 7){
//     console.log("aluno(a) em recuperação com média " + media);
// }
// else{
//     console.log("Aluno(a) aprovado com media " + media)
// }

// let numero = parseInt(prompt("Digite um número de 1 a 10"))

// if(numero == 1){
//     console.log("O mês digitado foi janeiro")
// }
// else if(numero == 2){
//     console.log("O mês digitado foi fevereiro")
// }
// else if(numero == 3){
//     console.log("O mês digitado foi março")
// }
// else if(numero == 4){
//     console.log("O mês digitado foi abril")
// }
// else if(numero == 5){
//     console.log("O mês digitado foi maio")
// }
// else if(numero ==6){
//     console.log("O mês digitado foi junho")
// }
// else if(numero == 7){
//     console.log("O mês digitado foi julho")
// }
// else if(numero == 8){
//     console.log("O mês digitado foi agosto")
// }
// else if(numero == 9){
//     console.log("O mês digitado foi setembro")
// }
// else if(numero == 10){
//     console.log("O mês digitado foi outubro")
// }
// else if(numero == 11){
//     console.log("O mês digitado foi novembro")
// }
// else if(numero == 12){
//     console.log("O mês digitado foi dezembro")
// }

let numero = parseInt(prompt("Digite um número de 1 a 12"))

switch (numero){
    case 1:
        console.log("janeiro")
        break;
    case 2:
        console.log("fevereiro")
        break;
    case 3:
        console.log("março")
        break;
    case 4:
        console.log("abril")
        break;
    case 5:
        console.log("maio")
        break;
    case 6:
        console.log("junho")
        break;
    case 7:
        console.log("julho")
        break;
    case 8:
        console.log("agosto")
        break;
    case 9:
        console.log("setembro")
        break;
    case 10:
        console.log("outubro")
        break;
    case 11:
        console.log("novembro")
        break;
    case 12:
        console.log("dezembro")
        break;
    default:
        console.log("Mês inválido")
}
