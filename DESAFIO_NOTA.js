const chalk = require("chalk");
const readline = require("readline")//.Interface({
//     input: process.stdin,
//     output: process.stdout,
// })
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
})
rl.question("Digite seu nome: ", (aluno) =>{
rl.question('Digite a primeira nota: ', (nota1) =>{
    rl.question('Digite a segunda nota: ', (nota2) =>{
        const media = (parseFloat(nota1) + parseFloat(nota2)) / 2;
        // tofixed arredondar dois numeros dps da virgula
        console.log(chalk.bold(`O aluno ${aluno} tem a média ${media.toFixed(2)}`))
        if(media > 7){
            console.log(chalk.green.bold(`Aluno(a) ${aluno} foi Aprovado(a)!❤`))
        } 
        else if(media < 5){
            console.log(chalk.red.bold(`Aluno(a) ${aluno} foi 😢 Reprovado(a)!`))
        }
        else if(media < 5 || media < 7){
            console.log(chalk.blue.bold(`Aluno(a) ${aluno} está de 👀 Recuperação`))
        }
        
        rl.close();
        })
    })  
})





