document.getElementById('login').addEventListener('click', loginRota);
function loginRota() {
    const emailUsuario = document.getElementById('email').value;
    const senhaUsuario = document.getElementById('senha').value;

    const usuario = {
        email: emailUsuario,
        senha: senhaUsuario
    };

    fetch('/backend/loginn.php', { 
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(usuario)
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
        if(data.status){
            console.log(data);
            sessionStorage.setItem('token', data.token);
            window.location.href = "menu.html";
            alert('Login Bem-Sucedido!');
        }else{
            alert("Senha Incorreta!");
        } 
       
    })
    .catch(error => alert('Erro na requisição: ' + error));
}
