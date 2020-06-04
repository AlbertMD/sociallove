function contador() {
    fetch(URL_PATH + "/contador") //de aqui se va al index - controlador - orm  - vuelve aqui

        .then((res) => res.json())
        .then((res) => {
            $("#contador").html(res + " <span id='contadorMensaje' style='color:white; font-style: italic; font-family: 'Prata', serif;'>mensajes intercambiados...</span>");
        })
}