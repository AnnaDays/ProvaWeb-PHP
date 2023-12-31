function updateProd() {
    const prodId = document.getElementById("getProdId").value;
    const prodName = document.getElementById("inputNome").value;
    const prodValor = document.getElementById("inputValor").value;
    const prodQtd = document.getElementById("inputQtd").value;
    const produtoAtualizado = {
        nome: prodName,
        preco: prodValor,
        quantidade: prodQtd,
        acao: "Atualizar"
    };

    fetch('/backend/produtos.php?id=' + prodId, { 
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(produtoAtualizado)
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
            alert("Não pode atualizar: ");
        }else{
            alert("Produto atualizado: " + JSON.stringify(data));
        } 
        
    })
    .catch(error => alert('Erro na requisição: ' + error));
}
