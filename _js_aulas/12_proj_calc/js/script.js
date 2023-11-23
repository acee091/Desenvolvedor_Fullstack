const multiplicationForm = document.querySelector("#multiplication-form")

const numberInput = document.querySelector("#number")

const multiplicatorInput = document.querySelector("#multiplicator")

const multiplicationTable = document.querySelector("#multiplication-operations")

const multiplicationTitle = document.querySelector("#multiplication-title span")

//Função que cria a tabela
const createTable = (number, multiplicatorNumber) =>
{
    multiplicationTable.innerHTML = "";
    //criar a tabuada
    for(i = 1; i <= multiplicatorNumber; i++){
        const result = number * i;

        const template = `<div class = "row">
        <div class = "operation"> ${number} x ${i} = </div>
        <div class = "result"> ${result} </div>
        </div>`;

        // transformar essa constante em um objeto HTML
        const parser = new DOMParser();
        // pegar a constante do template e transformar em html
        const htmlTemplate = parser.parseFromString(template, "text/html")

        const row = htmlTemplate.querySelector(".row")

        multiplicationTable.appendChild(row)
    }
    multiplicationTitle.innerText = number;
}
// Eventos
multiplicationForm.addEventListener("submit", (e) =>{
    e.preventDefault(); // deixar o PreventDefault vazio para nao enviar para lugar nenhum

    const multiplicationNumber = numberInput.value;
    const multiplicatorNumber = multiplicatorInput.value;
    
    // ! na frente é quando não há valor inserido
    if(!multiplicationNumber  || !multiplicatorNumber) return;

    createTable(multiplicationNumber, multiplicatorNumber)
})