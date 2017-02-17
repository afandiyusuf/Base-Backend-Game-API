<?php


require 'vendor/autoload.php';

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;


use Medoo\Medoo;


require 'src/database.php';
require 'src/function.php';
require 'src/user.php';
require 'src/middleware/user_middleware.php';

$app = new \Slim\App();

# Setting group make api callable at uri /user/
$app->group('/user',function() {
	$this->post('/register', \UserClass::class . ':register');
})->add(
	new UserMiddleware()
);

$app->run();


?>