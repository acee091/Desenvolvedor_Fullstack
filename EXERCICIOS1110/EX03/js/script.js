// 3. Escreva um programa que defina uma variável booleana para representar se um usuário está logado em um aplicativo. Exiba uma mensagem de boas-vindas personalizada no console, dependendo do valor da variável.

//    O programa deve definir uma variável booleana para representar se o usuário está logado ou não. Dependendo do valor da variável, o programa deve exibir uma mensagem de boas-vindas personalizada no console.

let username1 = prompt("Digite seu nome");
 if(username1 == "Ana" ){
         console.log("Seja bem vinda " + username1 + "!");        
 }
 else if(username1 == "Adilson" ){
         console.log("Seja bem vindo " + username1 + "!");        
 }
else if(username1 == "Gabriel" ){
         console.log("Seja bem vindo " + username1 + "!");        
 }
else{
         console.log("Usuário não identificado")
 }