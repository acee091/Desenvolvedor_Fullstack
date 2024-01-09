const body = document.body;
const slides = document.querySelectorAll('.slide');
const leftBtn = document.getElementById('right');
const rightBtn = document.getElementById('left');

let activeSlide = 0;

rightBtn.addEventListener('click',  () => {
    activeSlide++
    if (activeSlide > slides.length - 1) {
        activeSlide = 0;
    }
    // Chamando as funções para funcionar
    setBgToBody();
    setActiveSlide();
}) 

leftBtn.addEventListener('click', () => {
    activeSlide--
    if (activeSlide < 0){
        activeSlide = slides.length - 1
    }
    // Chamando as funções para funcionar
    setBgToBody();
    setActiveSlide();
})

setBgToBody();
// a imagem de fundo recebe o conteudo do slide que esta em ACTIVE
function setBgToBody(){
body.style.backgroundImage = slides[activeSlide].style.backgroundImage
}

function setActiveSlide(){
    // forEach estrutura de repetição para retirar todos os actives
    slides.forEach((slide) => slide.classList.remove('active'))
    slides[activeSlide].classList.add('active')
}
