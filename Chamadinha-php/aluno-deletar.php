<?php

echo '<h1> deletar Aluno</h1>';

$dsn = 'mysql:dbname=bd_chamadinha;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$idFormulario = $_GET['id'];

//apagando a tabela tb_alunos
$delete = 'DELETE FROM tb_alunos WHERE id = :id';
$box = $banco->prepare($delete);
$box->execute([
    ':id' => $idFormulario
]);

//apagando a tabela tb_info_alunos
$delete = 'DELETE FROM tb_info_alunos WHERE id_alunos = :id_alunos';
$box = $banco->prepare($delete);
$box->execute([
    ':id_alunos' => $idFormulario
]);

// twig
echo '<script> 
alert("Usuario apagado com Sucesso!") 
window.location.replace("index.php")
</script>';
//header('location:index.php');