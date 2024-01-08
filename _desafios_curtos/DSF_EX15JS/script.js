const panels = document.querySelectorAll('.panel');

// extensão blackbox AI code
// para cada painel, vai ter um evento de click que removerá o 
// panel que estava ativo e colocará o clicado como ativo
panels.forEach(panel =>{
    panel.addEventListener('click', () =>{
        {
            removeActiveClass()
            panel.classList.add('active')
        }
    })
})


function removeActiveClass(){
    panels.forEach(panel => {
        panel.classList.remove('active');
    })
}
