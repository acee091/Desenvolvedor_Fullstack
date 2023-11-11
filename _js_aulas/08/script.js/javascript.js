// const animal = {
//     nome: "Bob",
//     latir: function(){
//         console.log("Au au")
//     }
// };

// console.log(animal);

// animal.latir(); 
// chamar a função(metódo) de dentro do objeto


// const pessoa = {
//     nome: "Rodox",

//     getNome: function(){
//         return this.nome;
//     },
//     // função que retorna o próprio nome

//     setNome: function (novoNome){
//         this.nome = novoNome;
//     }
//     // função que muda o nome
// }

// console.log(pessoa.getNome());
// console.log(pessoa.nome);
// // duas maneiras de retornar a propriedade nome do objeto
// pessoa.setNome("Teacher Rodox");
// // registra o novo nome
// console.log(pessoa.getNome());

// const text = "asd";
// console.log(Object.getPrototypeOf(text));

// const bool = true;
// console.log(Object.getPrototypeOf(bool));

// const arr = [];
// console.log(Object.getPrototypeOf(arr) === Array.prototype);


// // definição do objeto
// const cachorro = {
//     raca: null,
// };

// // criação do objeto
// const pastorAlemao = Object.create(cachorro);
// pastorAlemao.raca = "Pastor Alemão";

// const bulldog = Object.create(cachorro);
// bulldog.raca = "Bulldog";
// console.log(bulldog.raca)


// console.log(cachorro)
// console.log(pastorAlemao)

// // Função construtora
// function criarCachorro(nome, raca){
//     const cachorro = Object.create({});
//     cachorro.raca = raca;
//     cachorro.nome = nome;
//     return cachorro;
// }

// const bob = criarCachorro("Bob", "Vira-lata")
// console.log(bob);

// const jack = criarCachorro("Jack", "Poodle")
// console.log(Object.getPrototypeOf(jack));

// function Cachorro(nome, raca){
//     this.nome = nome;
//     this.raca = raca;
// }
// const husky = new Cachorro("Ozzy", "Husky")
// // acessar algo que não entra dentro dele tem que chamar o que ele herda
// Cachorro.prototype.uiver = function(){
//     console.log("Auuuu");
// }

// console.log(husky);
// husky.uiver(); // chamar uma função

// class CachorroClasse {
//     constructor(nome, raca){
//         this.nome = nome;
//         this.raca = raca;
//     }
// }

// const jeff = new CachorroClasse("Jeff", "Labrador")
// console.log(jeff);
// console.log(Object.getPrototypeOf(jeff));

// class Caminhao{
//     constructor(eixo, cor){
//         this.eixo = eixo;
//         this.cor = cor;
//     }
//     // metodos não precisam da palavra function
//     descreverCaminho(){
//         console.log(
//             `Este caminhão tem ${this.eixo} eixos e é da cor ${this.cor}`
//         )
//     }        
// }

// const scania = new Caminhao(6, "Vermelha");

// scania.descreverCaminho();

// Caminhao.motor = 4.0;
// const c2 = new Caminhao(4,"Preta");
// console.log(c2.motor); // UNDEFINED

// Caminhao.prototype.motor = 4.0;
// const c3 = new Caminhao(6, "Azul");
// console.log(c3);

// class Humano {
//     constructor(nome, idade){
//         this.nome = nome;
//         this.idade = idade;
//     }
// }

// const rodox = new Humano("Rodolfo", 37);
// console.log(rodox);

// // sobrescrever pelo pai, o que esta no filho
// Humano.prototype.idade = "Não definida";

// console.log(rodox.idade);
// console.log(Humano.prototype.idade);

// class Aviao {
//     constructor(marca, turbinas){
//         this.marca = marca;
//         this.turbinas = turbinas;
//     }
// }

// // propriedade unica e imutavel --> Symbol 
// const asas = Symbol();
// Aviao.prototype[asas] = 2;

// const boeing = new Aviao("Boeing", 10);
// console.log(boeing);
// console.log(boeing[asas]);
// console.log(Aviao.prototype[asas]);

// class Post {
//     constructor(titulo, descricao, tags){
//         this.titulo = titulo;
//         this.descricao = descricao;
//         this.tags = tags;
//     }

//     get exibirTitulo(){
//         return `Você está lendo: ${this.titulo}`
//     }

//     set adicionarTags(tags){
//         // split = separar
//         const tagsArray = tags.split(", ");
//         this.tags = tagsArray;
//     }
// }

// const myPost = new Post("Algum post", "É um post sobre programação");
// console.log(myPost.exibirTitulo); 

// myPost.adicionarTags = "programação, javascript, js"
// console.log(myPost);

class Mamifero {
    constructor(patas){
        this.patas = patas;
    }
}

// herdar caracteristicas
// enviar esse valor para a classe mamifero
// Lobo classe filho Mamifero classe pai
class Lobo extends Mamifero {
    constructor (patas, nome){
        // super -> enviar o valor do lobo para o valor do mamifero
        super(patas, patas);
        this.nome = nome;
    }
}

const shark = new Lobo(4, "Shark");
console.log(shark);

console.log(shark instanceof Lobo);
// Lobo não é pai de Mamifero = false
console.log(Lobo instanceof Mamifero);


