
// 9. Escreva um programa em JavaScript que solicite uma operação matemática ao usuário (+, -, *, /) e dois números, e exiba o resultado da operação no console.
// Utilize uma estrutura de decisão switch para verificar qual operação matemática foi informada pelo usuário e realizar a operação correspondente. O resultado da operação deve ser exibido no console.

let operacao = prompt("Digite a operação que deseja realizar (+, -, /, *)")
let num1 = parseInt(prompt("Digite o primeiro número"))
let num2 = parseInt(prompt("Digite o segundo número"));

switch(operacao){
    case "+":
        var res = (num1 + num2);
        console.log(num1 + " + " + num2 + " = " + res);
        break;

    case "-":
        var res = (num1 - num2);
        console.log(num1 + " - " + num2 + " = " + res);
        break;
    
    case "/":
        var res = (num1 / num2);
        console.log(num1 + " / " + num2 + " = " + res);
        break;
    
    case "*":
        var res = (num1 * num2);
        console.log(num1 + " * " + num2 + " = " + res)
        break;

    default:
        console.log("Operação inválida!")
}