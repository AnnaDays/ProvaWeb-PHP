<?php

namespace App\produtos;
require "../vendor/autoload.php";

use App\Controller\ProdutoController;

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: * ' );
header('Access-Control-Allow-Methods: OPTIONS, GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: Content-Type');
header('Cache-Control: no-cache, no-store, must-revalidate');

$produtos = new ProdutoController();

$body = json_decode(file_get_contents('php://input'), true);
$id=isset($_GET['id'])?$_GET['id']:'';
switch($_SERVER["REQUEST_METHOD"]){
    case "POST";
    if(isset($body['acao'])){
        switch($body['acao']){
          case "Atualizar";
          array_pop($body);
          $resultado = $produtos->update($body,intval($_GET['id']));
          echo json_encode(['status'=>$resultado]);
          break;

          case "Deletar";
          array_pop($body);
          $resultado = $produtos->delete(intval($_GET['id']));
          echo json_encode(['status'=>$resultado]);
          break;
          }
      }else{
        $resultado = $produtos->insert($body);
        echo json_encode(['status'=>$resultado]);
      }

    break;
    case "GET";
        if(!isset($_GET['id'])){
            $resultado = $produtos->select();
            echo json_encode(["produto"=>$resultado]);
        }else{
            $resultado = $produtos->selectId($id);
            echo json_encode(["status"=>true,"produto"=>$resultado[0]]);
        }
       
    break; 
}