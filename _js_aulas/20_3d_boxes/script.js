const boxesContainer= document.getElementById('boxes');
const btn = document.getElementById('btn');

btn.addEventListener('click', () => boxesContainer.classList.toggle('big'))


function createBoxes(){
    // criar linhas e colunas
    for(let i = 0; i < 4; i++){
        for(let j = 0; j < 4; j++){
            // criar um elemento HTML
            const box = document.createElement('div')
            box.classList.add('box')
            // criar altura e largura do elemento
            box.style.backgroundPosition = `${-j * 125}px ${-i * 125}px`
            // cada elemnto gerado será adicionado como filho a variavel BOX
            boxesContainer.appendChild(box);
        }
    }
}

createBoxes()