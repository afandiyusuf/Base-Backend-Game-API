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
        $username           = $request->getParam("user_name");
        $password           = $request->getParam("password");


        //if client send 2 of this variable, that mean client is request login method
        if(isset($username) && isset($password))
        {
            $database = new DatabaseModel();
            $validated = $database->validate_user_pass($username,$password);
            if(!$validated)
            {
                $request = $request->withAttribute('is_login',false);
            }else{
                $request = $request->withAttribute('is_login',true);
                $request = $request->withAttribute('user_id',$validated);
            }

        }

        $response = $next($request, $response);

        return $response;
    }

}