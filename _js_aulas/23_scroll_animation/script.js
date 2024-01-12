const boxes = document.querySelectorAll('.box');

window.addEventListener('scroll', checkBoxes) //função
    checkBoxes()

    function checkBoxes(){
        // verifica o tamanho da tela
        const triggerBottom = window.innerHeight / 5 * 4
        boxes.forEach(box => {
            // getBoundingClientRect -> retorna o tamanho do elemento             
            // relacionado ao viewPort
            const boxTop = box.getBoundingClientRect().top
            if(boxTop < triggerBottom){
                box.classList.add('show')
            }
            else{
                box.classList.remove('show')
            }
        })
    };

