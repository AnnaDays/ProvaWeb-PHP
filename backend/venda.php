<?php
namespace App\venda;

require "../vendor/autoload.php";

use App\Controller\VendaController;

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: * ' );
header('Access-Control-Allow-Methods: OPTIONS, GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: Content-Type');
header('Cache-Control: no-cache, no-store, must-revalidate');

$vendaController = new VendaController();

$body = json_decode(file_get_contents('php://input'), true);

$id = isset($_GET['id']) ? $_GET['id'] : '';

switch ($_SERVER["REQUEST_METHOD"]) {
    case "POST":
        $resultado = $vendaController->insert($body);
        echo json_encode(['status' => $resultado]);
        break;
    case "GET":
        $resultado = $vendaController->selectprodId();
        echo json_encode(['status' => $resultado]);
        break;
    default:
        header("HTTP/1.0 405 Method Not Allowed");
        echo json_encode(['status' => false, 'message' => 'Método não permitido']);
        break;
}
?>
