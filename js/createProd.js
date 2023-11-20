document.getElementById('submitBotao').addEventListener('click', createProd);
function createProd() {
    const nomeProduto = document.getElementById('nomeprod').value;
    const precoProduto = document.getElementById('precoprod').value;
    const quantidadeProduto = document.getElementById('quantidadeprod').value;

    if (!nomeProduto) {
        alert("Por favor, insira o nome do Produto!");
        return;
    }

    const produto = {
        nome: nomeProduto, 
        preco: precoProduto,
        quantidade: quantidadeProduto
    };

    fetch('/backend/produtos.php', { 
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(produto)
    })
    .then(response => {
        if (!response.ok) {
            if (response.status === 401) {
                throw new Error('Não autorizado');
            } else {
                throw new Error('Sem rede ou não conseguiu localizar o recurso');
            }
        }
        return response.json();
    })
    .then(data => {
        if(!data.status){
            alert('Produto já existe')
        }else{
            alert("Produto criado: " + JSON.stringify(data));
        } 
       
    })
    .catch(error => alert('Erro na requisição: ' + error));
}
