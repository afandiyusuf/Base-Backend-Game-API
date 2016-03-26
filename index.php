<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require 'vendor/autoload.php';
require 'src/config.php';
require 'src/function.php';


$app = new \Slim\App;

require 'src/user.php';
require 'src/game.php';

$app->run();


?>