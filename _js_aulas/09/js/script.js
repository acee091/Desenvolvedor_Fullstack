// console.log("Ainda não executou")

// setTimeout(function(){
//     console.log("requisição assíncrona")
//     // espera 2s para dar a resposta
// }, 2000);

// console.log("Ainda não executou 2")

// console.log("Ainda não")

// setInterval(function(){
//     console.log("requisição assíncrona")
//     // loop --> de 3 em 3s ele da a resposta
// }, 3000);

// console.log("Ainda não 2")

// const promessa = Promise.resolve(5 + 10);

// console.log("Código ...")

// // pega o valor da CONST promessa e mostra na tela
// promessa
//     .then((value)=> {
//         console.log(`A soma é ${value}`);
//         return value;
//     })
//     .then((value) => value + 3)
//     .then((value) => console.log(`Agora é: ${value}`));

// Promise.resolve(4 * "adg")
//     .then((n) => {
//         if(Number.isNan(n)){
//             // vai exibir um novo erro
//             throw new Error("Valores inválidos")
//         } 
// })
// // catch mostra o erro que occoreu
//     .catch((erro) => console.log(`Um erro ocorreu: ${erro}`));

function checkNumber(n){
    return new Promise((resolve, reject) => {
        if(n > 10){
            resolve(`O número ${n} é maior que 10`)
        }
        else{
            reject(new Error("Número abaixo do esperado"))
        }
    });
}

const a = checkNumber(20);
const b = checkNumber(5);


a.then((v) => console.log(`O resultado é: ${v}`)).catch((err) =>
    console.log(`Um erro ocorreu: ${err}`));
/* v+ variavel auxiliar|*/

b.then((v) => console.log(`O resultado é: ${v}`)).catch((err) => 
console.log(`Um erro ocorreu: ${err}`));