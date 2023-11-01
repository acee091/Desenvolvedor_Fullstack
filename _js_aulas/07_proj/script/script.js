// let header = document.querySelector("header");
// // querySelector --> selecionar uma tag especifica do HTML

// let menu = document.querySelector("#menu-icon");

// let navbar = document.querySelector(".navbar");

// window.addEventListener("scroll",
// () => {
//     header.classList.toggle("shadow", window.scrollY > 0);
//     //
// });
// // adicionar um evento, quando scrollar a pagina vai disparar a função

// menu.onclick = () => {
//     navbar.classList.toggle("active");
//     // ao clicar na navbar o menu aparece
// };

// window.onscroll = () => {
//     navbar.classList.remove("active");
//     // ao scrollar a pagina o navbar fica escondido
// }

let header = document.querySelector("header");

let menu = document.querySelector("#menu-icon");

let navbar = document.querySelector(".navbar");


window.addEventListener("scroll", () => {
    header.classList.toggle("shadow", window.scrollY > 0);
});

menu.onclick = () => {
    navbar.classList.toggle("active");
};

window.onscroll = () => {
    navbar.classList.remove("active");
};

let darkmode = document.querySelector("#darkmode");

darkmode.onclick = () => {
    if(darkmode.classList.contains("bx-moon")){
        darkmode.classList.replace("bx-moon", "bx-sun")
        //ao clicar na lua, ela vai ser substituida por um sol
        document.body.classList.add("active");
    }
    else{
        darkmode.classList.replace("bx-sun", "bx-moon")
        document.body.classList.remove("active");
    }
}