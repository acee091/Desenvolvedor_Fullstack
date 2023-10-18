// 8. Escreva um programa que defina uma variável do tipo null para representar um valor ausente em um campo de um formulário e exiba uma mensagem de alerta no console caso o usuário deixe o campo em branco.
function Formulario(){
    let name = document.getElementById("name").value;
    if (name == ""){
        console.log("Nome não inserido!");
        return false;
    }
}