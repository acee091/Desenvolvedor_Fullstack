const label = document.querySelectorAll('.form-control label');

label.forEach(label =>{
    // pegar o elemento html e transformar ele em texto
    label.innerHTML = label.innerText.
    split('') //separa o texto por letras
    // transforma cada letra em span
    .map((letter, idx) => `<span style="transition-delay:${idx * 50}ms"> ${letter}</span>`)
    .join('')
    // une a palavra dnv

})