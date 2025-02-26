<html lang="pt-br">

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: "inter", sans-serif;
        list-style: none;
    }

    form {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
    }

    form input {
        font-size: 20px;
        margin-bottom: 20px;
    }

    input[type="submit"] {
        width: 250px;
        color: white;
        background-color: green;
    }

    input[type="date"] {
        width: 250px;
    }

    input[type="file"] {
        width: 250px;
    }
</style>

<!--

METODO DE ENVIO ->
    GET ->  manda informações atraves da URL
    POST -> manda informações atraves do corpo do arquivo...

    action -> fala para onde deve enviar os dados

-->

<body>

    <form action="./aluno-cadastrar.php" method="POST">

        <h2>Formulario top</h2>

        <input type="text" placeholder="Nome:" name="tel">
        <input type="number" placeholder="Telefone:" name="nome">
        <input type="email" placeholder="Email:" name="email">
        <input type="date" placeholder="Nascimento:" name="nasc">

        <div>
            <label>Frequente?</label>
            <input type="checkbox" name="frequente">
        </div>

        <input type="file" accept="image/*" name="img">
        <input type="submit">

    </form>
</body>