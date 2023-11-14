console.log(document.body);
console.log(document.body.childNodes);// olhar os elementos filhos
console.log(document.body.childNodes[1]);// seleciona um elemento filho
//seleciona um elemento filho do primeiro elemento filho do BODY
console.log(document.body.childNodes[1].childNodes[1]);
// textContent seleciona apenas o texto
console.log(document.body.childNodes[1].childNodes[1].textContent);

//TAG
const listItens = document.getElementsByTagName("li");
console.log(listItens);

//CLASSE
const product = document.getElementsByClassName("product");
console.log(product);

//ID
const title = document.getElementById("title");
console.log(title);

//CSS
// selecionar todas as querys que tenham .product, mostra todas as propriedas
const productQuery = document.querySelectorAll(".product")
console.log(productQuery)

const mainContainer = document.querySelector("#main-container");
console.log(mainContainer)

//Mudando a página com o DOM
const p = document.createElement("p")

// olha quem é o elemento pai do TITLE
const header = title.parentElement;

// coloca um p dps da header
header.insertBefore(p, title)