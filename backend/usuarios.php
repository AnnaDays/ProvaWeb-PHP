<?php

namespace App\usuarios;
require "../vendor/autoload.php";

use App\Controller\UserController;

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: * ' );
header('Access-Control-Allow-Methods: OPTIONS, GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: Content-Type');
header('Cache-Control: no-cache, no-store, must-revalidate');

$users = new UserController();

$body = json_decode(file_get_contents('php://input'), true);
$id=isset($_GET['id'])?$_GET['id']:'';
switch($_SERVER["REQUEST_METHOD"]){
    case "POST";
    if(isset($body['acao'])){
        switch($body['acao']){
          case "Atualizar";
          array_pop($body);
          $resultado = $users->update($body,intval($_GET['id']));
          echo json_encode(['status'=>$resultado]);
          break;
          case "Deletar";
          array_pop($body);
          $resultado = $users->delete(intval($_GET['id']));
          echo json_encode(['status'=>$resultado]);
          break;
          }
      }else{
        $resultado = $users->insert($body);
        echo json_encode(['status'=>$resultado]);
      }
    break;
    case "GET";
        if(!isset($_GET['id'])){
            $resultado = $users->select();
            echo json_encode(["usuarios"=>$resultado]);
        }else{
            $resultado = $users->selectId($id);
            $enderecos =  $users->selectEnderecoId($id);
            echo json_encode(["status"=>true,"usuario"=>$resultado[0], "enderecos"=>$enderecos]);
        }
       
    break;
}