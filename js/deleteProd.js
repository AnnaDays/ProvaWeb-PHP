function deleteProd() {
    const prodId = document.getElementById("getProdId").value;
    fetch('/backend/produtos.php?id=' + prodId, {
        method: 'POST',
        body: JSON.stringify({acao: "Deletar"})
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
        if (!data.status) {
            alert("Não pode Deletar: ");
        } else {
            alert("Produto deletado: " + JSON.stringify(data));
            document.getElementById("inputNome").value = ''; 
            document.getElementById("inputValor").value = '';
            document.getElementById("inputQtd").value = '';
        } 
    })
    .catch(error => alert('Erro na requisição: ' + error));
}
