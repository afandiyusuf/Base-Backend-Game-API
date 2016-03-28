<?php
// Routes
//200 success
//401 username sudah terpakai
//402 data tidak lengkap
//403 password atau username salah
//400 system error


$app->post('/user/register', function ($request, $response, $args) use($database, $app) {

	$username 		= $request->getParam('username');
	$password 		= $request->getParam('password');
	$nama_depan 	= $request->getParam('nama_depan');
	$nama_belakang 	= $request->getParam('nama_belakang');
	$no_hp 			= $request->getParam('no_hp');
	$alamat 		= $request->getParam('alamat');
	$email 			= $request->getParam('email');

	$datas = new JsonData();
	$status_server = 404;

	if(!isset($username)||!isset($password)||!isset($nama_depan)||!isset($nama_belakang)||!isset($no_hp)||!isset($alamat)||!isset($email))
	{
		$datas->status_message = "data tidak lengkap";
		$datas->status_code = 402;
		$datas->data = [];
		$status_server = 402;
	}else{

		$access_token = "";
    //check avaibility user_name
		$total_user = $database->count('user_data',["
			user_name" => $username]);

		if($total_user > 0)
		{
			$datas->status_message = "username sudah terpakai";
			$datas->status_code = 401;
			$datas->data = [];
			$status_server = 401;

		}else{
			$user_id = $database->insert('user_data', [
				'user_name' => $username,
				'password' => md5($password),
				'nama_depan'=>$nama_depan,
				'nama_belakang'=>$nama_belakang,
				'no_hp'=>$no_hp,
				'alamat'=>$alamat,
				'email'=>$email
				]
				);

        //generate access_token
			$access_token = generateRandomString(100);

			$database->insert('access_token',
				[
				"user_id"=>$user_id,
				"access_token"=>$access_token,
				"is_valid"=>true
				]);


			$datas->status_message = "create user success";
			$datas->status_code = 200;
			$datas->data = [
			"access_token" => $access_token
			];
			$status_server = 200;
		}
	}
	//$response->headers->set('Content-Type', 'application/json');
    //$app->response->headers->set('Content-Type', 'application/json');
	$response->withJson($datas,$status_server);
	//echo json_encode($datas);
});

$app->post('/user/login', function ($request, $response, $args) use($database) {
	$username = $request->getParam('username');
	$password = $request->getParam('password');
	$user_id;

	$jsonData = new jsonData();

	$datas = $database->select("user_data", [
		"id"
		], [
		"AND" => [
		"user_name" => $username,
		"password" => md5($password)
		]
		]);
    //check matching username + password
	if(count($datas)==0){
        //Username or Password Error
		$jsonData->status_message = "user atau password salah";
		$jsonData->status_code = 404;
		$jsonData->data = [];
	}else{
        //get user id
		foreach ($datas as $data)
		{
			$user_id = $data["id"];
		}
        //generate new access token
		$access_token = generateRandomString(100);
        //update current access token
		$result = $database->update("access_token",[
			"access_token"=>$access_token
			],["AND"=>
			[
			"user_id"=>$user_id,
			"is_valid"=>1
			]
			]);
        //generate result
		if($result)
		{
			$jsonData->status_message = "login success";
			$jsonData->status_code = 200;
			$jsonData->data = [
			"access_token"=>$access_token];
		}else{
        //databse error
			$jsonData->status_message = "database error";
			$jsonData->status_code = 400;
			$jsonData->data = [];
		}
	}
	//$response->headers->set('Content-Type', 'application/json');
	$response->withJson($jsonData);
});

$app->post('/user/getData', function ($request, $response, $args) use($database) {
	$access_token = $request->getParam('access_token');
	$result = $database->select('access_token',['user_id'],[
		"access_token"=>$access_token
		]
		);

	$jsonData = new jsonData();
	$AllUserData = [];


	if(count($result) == 0)
	{
		$jsonData->status_code = 406;
		$jsonData->status_message = "access token invalid";
		$jsonData->data = [];
	}else{
		foreach ($result as $data) {
			$user_id = $data['user_id'];
		}
		$userDatas = $database->select('user_data','*',
			[
			'id'=>$user_id
			]
			);

		foreach ($userDatas as $userData) {
			$AllUserData = [
			"nama_depan"=>$userData["nama_depan"],
			"nama_belakang"=>$userData["nama_belakang"],
			"email"=>$userData["email"],
			"no_hp"=>$userData["no_hp"],
			"alamat"=>$userData["alamat"]
			];
		}
		$jsonData->status_code = 200;
		$jsonData->data = $AllUserData;
		$jsonData->status_message = "get data success";
	}

	$response->withJson($jsonData);
});
