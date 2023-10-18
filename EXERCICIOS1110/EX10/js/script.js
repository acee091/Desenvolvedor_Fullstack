// 10. Escreva um programa que defina uma variável para armazenar a temperatura em graus Celsius e converta-a para Fahrenheit. Exiba a temperatura em ambas as escalas no console.
//    O programa deve receber a temperatura em graus Celsius como entrada, convertê-la para Fahrenheit utilizando a fórmula adequada e exibir a temperatura em ambas as escalas no console.

let celsius = parseInt(prompt("Digite o graus em CELSIUS"));

let fahr = parseInt((celsius * 1.8) + 32);

console.log("A temperatura em celsius: " + celsius + ",\nEquivale a: " + fahr + " Fahrenheit")