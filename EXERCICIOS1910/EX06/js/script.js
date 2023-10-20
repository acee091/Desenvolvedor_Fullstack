// 6. Escreva um programa em JavaScript que solicite uma letra ao usuário e verifique se ela é uma vogal ou consoante. Utilize uma estrutura de decisão if para verificar se a letra informada é uma vogal ou consoante, e exiba a mensagem correspondente no console.

let letra = prompt("Digite uma letra do alfabeto");

let letramaior = letra.toUpperCase();

if(letramaior == "A" || letramaior == "E" || letramaior == "I" || letramaior == "O" || letramaior == "U" ){
    console.log("A letra " + letramaior + " é uma vogal!")
}
else{
    console.log("A letra " + letramaior + " é uma consoante!")
}