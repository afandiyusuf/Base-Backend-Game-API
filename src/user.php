<?php
class UserClass
{
   protected $container;
   
   // public function __construct(ContainerInterface $container) {
   //     $this->container = $container;
   // }

   public function register($request, $response, $args)
   {
		$username 		= $request->getParam('username');
		$password 		= $request->getParam('password');
		$nama_depan 	= $request->getParam('nama_depan');
		$nama_belakang 	= $request->getParam('nama_belakang');
		$no_hp 			= $request->getParam('no_hp');
		$alamat 		= $request->getParam('alamat');
		$email 			= $request->getParam('email');

		$datas = new JsonData();
		$status_server = 404;
		$database = new DatabaseModel();

		if(!isset($username)||!isset($password)||!isset($nama_depan)||!isset($nama_belakang)||!isset($no_hp)||!isset($alamat)||!isset($email))
		{
			$datas->status_message = "data tidak lengkap";
			$datas->status_code = 402;
			$datas->data = [];
			$status_server = 402;
		}else{
			$access_token = "";
		//check avaibility user_name
			$total_user = $database->db->count('user_data',[
				"OR"=>[
					"user_name" => $username,
					"email" => $email
				]
			]);

			if($total_user > 0)
			{
				$datas->status_message = "username sudah terpakai";
				$datas->status_code = 401;
				$datas->data = [];
				$status_server = 401;

			}else{
				$userData = [
					'user_name'=> $username,
					'password' => $password,
					'nama_depan' => $nama_depan,
					'nama_belakang' => $nama_belakang,
					'no_hp' => $no_hp,
					'alamat' => $alamat,
					'email' => $email
				];

				$user_id = $database->register($userData);

		    //generate access_token
				$access_token = generateRandomString(100);
				$database->set_access_token($user_id,$access_token);
				$datas->status_message = "create user success";
				$datas->status_code = 200;
				$datas->data = [
					"access_token" => $access_token
				];
				$status_server = 200;
			}
		}

		return $response->withJson($datas,$status_server);
	}

	public function login($request, $response, $args)
	{
		return $response;
	}
}

?>