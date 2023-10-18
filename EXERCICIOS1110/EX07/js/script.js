
// 7. Escreva um programa que defina uma variável para armazenar o valor de um produto com desconto e exiba o valor original e o valor com desconto no console.

//    O programa deve receber o valor original de um produto e o desconto a ser aplicado sobre ele, calcular o valor com desconto e exibir tanto o valor original quanto o valor com desconto no console.

let valor = parseInt(prompt("Digite o valor do produto"));

let desconto = parseInt(prompt("Digite o valor do desconto:(Em porcentagem)"));

desconto = (desconto / 100);

let valorDesconto = (desconto * valor);

let ValorFinal = (valor - valorDesconto);

alert("O valor original do produto é" + valor + "\nO valor com desconto é:" + ValorFinal);
