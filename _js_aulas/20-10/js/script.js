// () -> parametros de uma funcao, vai receber alguma informação
function minhaFuncao(){
    console.log("Testando")
}

minhaFuncao();

const minhaFuncaoEmVariavel = function(){
    console.log("Função em variável")
}

minhaFuncaoEmVariavel();

function funcaoComParametros(txt){
    console.log("Imprimindo: " + txt);
}
// o parametro recebendo a informação
funcaoComParametros("DEVFull - Boa noite");
funcaoComParametros("DEVFull - Boa tarde");
funcaoComParametros("DEVFull - Bom dia");

const a = 10;
const b = 20;
const c = 30;
const d = 40;

function soma(n1, n2){
    return n1 + n2 // escopo local n1 e n2 só existem dentro da função    
}

const resultado = soma(a, b);
console.log(resultado);
const resultado1 = soma(c, b);
console.log(resultado1);
const resultado2 = soma(d, c);
console.log(resultado2);

function subtrai(n1, n2){
    return n1 - n2
}

const resSubtrai = subtrai(a,b);
console.log(resSubtrai);
const resSubtrai1 = subtrai(c,b);
console.log(resSubtrai1);
const resSubtrai2 = subtrai(d,c);
console.log(resSubtrai2);

// => representação da palavra function
const testeArrow = () => {
    console.log("Sou uma função anonima");
    // foi dado um nome para a variavel mas não para a função
}

testeArrow();

const parOuImpar = (n) => {
    if(n%2 == 0){
        console.log("Par")
        return
    }
        console.log("Ímpar")
}

parOuImpar(5)
parOuImpar(4)
parOuImpar(100)

const raizQuadrada = (x) => {
    return x * x
}

console.log(raizQuadrada(4));
console.log(raizQuadrada(13));
console.log(raizQuadrada(3));

const multiplicacao1 = function (n, m){
    if(m == undefined){
        return n * 2
    }
    else{
        return n * m
    }
}

console.log(multiplicacao1(4, 8))
console.log(multiplicacao1(4))