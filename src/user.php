<?php
// Routes

$app->get('/user/register/{username}/{password}', function ($request, $response, $args) use($database) {
	$username = $request->getAttribute('username');
	$password = $request->getAttribute('password');


	
	$datas = new JsonData();
	$access_token = "";
	//check avaibility user_name
	$total_user = $database->count('user_data',["
		user_name" => $username]);
	
	if($total_user > 1)
	{
		$datas->status_message = "username sudah terpakai";
		$datas->status_code = 500;
		$datas->data = [];
		
	}else{
		$user_id = $database->insert('user_data', [
			'user_name' => $username,
			'password' => md5($password)
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


		$datas->status_message = "success";
		$datas->status_code = 500;
		$datas->data = [
			"access_token" => $access_token
		];
	}
	echo json_encode($datas);
});


$app->get('/user/login/{username}/{password}', function ($request, $response, $args) use($database) {
	$username = $request->getAttribute('username');
	$password = $request->getAttribute('password');

	$success = $databse->count("user_data",
		[
			"AND"=>
			[
				"user_name"=>$username,
				"password"=>md5($password)
			]
		]
	);

	if(success==1)
	{
		$database->update("user_data",[
			
		])
	}

});
