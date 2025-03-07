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
    input[type="text"] {
        width: 350px;
    }

    img{
        width: 250px;
        right: 300px;
        margin-bottom: 20px;
    }
    h1{
        display: flex;
        
        justify-content: center;
    }
</style>

    <h1>Editar Aluno</h1>

<?php
       
            $id_aluno_alterar = $_GET['id_aluno_alterar'];
 
 
            $dsn = 'mysql:dbname=bd_chamadinha;host=127.0.0.1';
            $user = 'root';
            $password = '';
 
            $banco = new PDO($dsn, $user, $password);

            
 
            $select = "SELECT tb_info_alunos.*, tb_aluno.nome FROM tb_info_alunos INNER JOIN tb_aluno ON tb_aluno.id = tb_info_alunos.id_alunos WHERE tb_info_alunos.id_alunos= " . $id_aluno_alterar;
 
            $dados = $banco->query($select)->fetch();
 
        ?>



<form action="./aluno-editar.php" method="POST">

    <img src="./chamadinha/img/<?= $dados['img'] ?>" alt="">
    
    <input type="hidden" placeholder="id"          name="id"       value="<?= $id_aluno_alterar?>">

    <input type="text"   placeholder="nome:"       name="nome"     value="<?=$dados['nome']?>">
    <input type="number" placeholder="telefone:"   name="telefone" value="<?=$dados['telefone']?>">
    <input type="email"  placeholder="email:"      name="email"    value="<?=$dados['email']?>">
    <input type="date"   placeholder="nascimento:" name="nascimento"     value="<?=$dados['nascimento']?>">

    <div>
        <label>Frequente?</label>
        <input type="checkbox" name="frequente">
    </div>

    <input type="file" accept="image/*" name="img">
    <input type="submit">

</form>