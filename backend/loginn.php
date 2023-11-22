<?php

namespace App\usuarios;
require "../vendor/autoload.php";

use App\Controller\UserController;
use Firebase\JWT\JWT;

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
        $resultado = $users->login($body['senha'], $body['email']);
        echo json_encode($resultado);
    break;
    case "GET":
        $headers = getallheaders();
        $token = $headers['Authorization'] ?? null;
        $usuariosController = new UserController();
        $validationResponse = $usuariosController->validarToken($token);
        if ($token === null || !$validationResponse['status']) {
            echo json_encode($validationResponse);
            exit;
        }
        echo json_encode($validationResponse);
        exit;
       
    break; 
}