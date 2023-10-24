// 9. Crie uma função chamada "concatenaTexto" que recebe dois parâmetros, "texto1" e "texto2". A função deve concatenar os dois textos recebidos e retornar o resultado.
//  Em seguida, chame a função "concatenaTexto" com diferentes valores para "texto1" e "texto2" e exiba o resultado no console.

function concatenaTexto(texto1, texto2){
    res = texto1 + texto2
    return console.log(res);
}

const texto = concatenaTexto("Olá,","pessoal")
const texto1 = concatenaTexto("Olá,","MUNDO")
const texto2 = concatenaTexto("Olá,","SENAC")
