<?php
class UserMiddleware
{
    /**
     * Basic fungsi untuk auth login, login by username dan password
     *
     * @param  \Psr\Http\Message\ServerRequestInterface $request  PSR7 request
     * @param  \Psr\Http\Message\ResponseInterface      $response PSR7 response
     * @param  callable                                 $next     Next middleware
     *
     * @return \Psr\Http\Message\ResponseInterface
     */

    public function __invoke($request, $response, $next)
    {
        $access_token       = $request->getParam('access_token');

        if(!isset($access_token))
        {
            $request = $request->withAttribute('login_status','false');
        }else{
            $database = new DatabaseModel();
        }

        $response = $next($request, $response);
        return $response;
    }

}