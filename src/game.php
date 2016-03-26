<?php

$app->post('/game/creatSession', function ($request, $response, $args) use($database) {
	$access_token = $request->getParam('access_token');
	$result = $database->select('access_token',['user_id'],[
		"access_token"=>$access_token
		]
		);

	$jsonData = new jsonData();

	if(count($result) == 0)
	{
		$jsonData->status_code = 406;
		$jsonData->status_message = "access token invalid";
		$jsonData->data = []; 
	}else{
		foreach ($result as $data) {
			$user_id = $data['user_id'];
		}

		$game_token = generateRandomString(100);

		$database->insert('game_token',[
			'user_id'=>$user_id,
			'game_token'=>$game_token,
			'status'=>0
			]
			);

		$jsonData->status_code = 200;
		$jsonData->data = [
		'game_token'=>$game_token
		];
		$jsonData->status_message = "generate game token success";
	}

	return json_encode($jsonData);
});



$app->post('/game/postScorePerLevel', function ($request, $response, $args) use($database) {

	$access_token 	= $request->getParam('access_token');
	$game_token 	= $request->getParam('game_token');
	$score 			= $request->getParam('score');
	$level 			= $request->getParam('level');

	$result = $database->select('access_token',['user_id'],[
		"access_token"=>$access_token
		]
	);

	$jsonData = new jsonData();
	$AllUserData = [];
	$token_id;

	if(count($result) == 0)
	{
		$jsonData->status_code = 406;
		$jsonData->status_message = "access token invalid";
		$jsonData->data = []; 
	}else{

		$gameSessData = $database->select('game_token',["user_id","id"],[
			"AND"=>
			[
			"game_token" => $game_token,
			"status"=> 0
			]
			]);
		
		if(count($gameSessData) == 0)
		{
			$jsonData->status_code = 407;
			$jsonData->status_message = "game session error atau sudah digunakan";
			$jsonData->data = []; 
		}else{

			foreach ($result as $data) {
				$user_id = $data['user_id'];
			}

			foreach ($gameSessData as $data) {
				$token_id = $data['id'];
			}

			$scores = $database->count('game_score',[
				"AND"=>[
					"level"=>$level,
					"game_token_id"=>$token_id
				]
			]);
			if($scores > 0){
				$jsonData->status_code = 409;
				$jsonData->data = [];
				$jsonData->status_message = "level sudah terinput";
			}else{
				$database->insert("game_score",[
					"level"=>$level,
					"score"=>$score,
					"game_token_id"=>$token_id,
					"user_id"=>$user_id
				]);
				$jsonData->status_code = 200;
				$jsonData->data = [];
				$jsonData->status_message = "score berhasil terinput score :".$score." level: ".$level;
			}

			
		}
	}
	return json_encode($jsonData);
});


$app->post('/game/postTotalScore', function ($request, $response, $args) use($database) {

	$access_token 	= $request->getParam('access_token');
	$game_token 	= $request->getParam('game_token');
	$score 			= $request->getParam('score');
	$level 			= "total score";

	$result = $database->select('access_token',['user_id'],[
		"access_token"=>$access_token
		]
	);

	$jsonData = new jsonData();
	$AllUserData = [];
	$token_id;

	if(count($result) == 0)
	{
		$jsonData->status_code = 406;
		$jsonData->status_message = "access token invalid";
		$jsonData->data = []; 
	}else{

		$gameSessData = $database->select('game_token',["user_id","id"],[
			"AND"=>
			[
			"game_token" => $game_token,
			"status"=> 0
			]
			]);
		
		if(count($gameSessData) == 0)
		{
			$jsonData->status_code = 407;
			$jsonData->status_message = "game session error atau sudah digunakan";
			$jsonData->data = []; 
		}else{

			foreach ($result as $data) {
				$user_id = $data['user_id'];
			}

			foreach ($gameSessData as $data) {
				$token_id = $data['id'];
			}

			//check allscore from databse
			$result = $database->select('game_score','*',[
					"game_token_id"=>$token_id
			]);
			$totalScore = 0;
			foreach ($result as $data) {
				$totalScore +=$data["score"];
			}
			if($totalScore != $score){
				$jsonData->status_code = 410;
				$jsonData->data = [];
				$jsonData->status_message = "validasi skor gagal";
			}else{
				$database->insert("game_score",[
					"level"=>$level,
					"score"=>$totalScore,
					"game_token_id"=>$token_id,
					"user_id"=>$user_id
				]);
				$jsonData->status_code = 200;
				$jsonData->data = [];
				$jsonData->status_message = "score total berhasil terinput score :".$totalScore;

			}

			
		}
	}
	return json_encode($jsonData);
});

$app->post('/game/getScoreBySession', function ($request, $response, $args) use($database) {

	$access_token 	= $request->getParam('access_token');
	$game_token 	= $request->getParam('game_token');
	
	$level 			= "total score";

	$result = $database->select('access_token',['user_id'],[
		"access_token"=>$access_token
		]
	);

	$jsonData = new jsonData();
	$AllUserData = [];
	$token_id;

	if(count($result) == 0)
	{
		$jsonData->status_code = 406;
		$jsonData->status_message = "access token invalid";
		$jsonData->data = []; 
	}else{

		$gameSessData = $database->select('game_token',["user_id","id"],[
			"AND"=>
			[
			"game_token" => $game_token,
			"status"=> 0
			]
			]);
		
		if(count($gameSessData) == 0)
		{
			$jsonData->status_code = 407;
			$jsonData->status_message = "game session error atau sudah digunakan";
			$jsonData->data = []; 
		}else{

			foreach ($result as $data) {
				$user_id = $data['user_id'];
			}

			foreach ($gameSessData as $data) {
				$token_id = $data['id'];
			}

			//check allscore from databse
			$result = $database->select('game_score','*',[
					"game_token_id"=>$token_id
			]);

			//collect score per level
			$totalScore = 0;
			$arrScore = [];
			$i = 0;
			foreach ($result as $data) {
				$i++;
				if($data["level"]!="total score")
				{
					$totalScore +=$data["score"];
					$arrScore["score".$i] = $data["score"];
				}else{
					$arrScore["total_score"]= $data["score"];
				}
			}

			//collect data user
			$result = $database->select('user_data',"*",[
				"id"=>$user_id
			]);
			$arrData = [];
			foreach ($result as $data) {
				$arrData = [
					"user_name"=>$data["user_name"],
					"nama_depan"=>$data["nama_depan"],
					"nama_belakang"=>$data["nama_belakang"],
					"no_hp"=>$data["no_hp"],
					"email"=>$data["email"],
					"alamat"=>$data["alamat"]
				];

			}

			$jsonData->status_code = 200;
			$jsonData->data = [
				"score_data"=>$arrScore,
				"user_data"=>$arrData
			];
			$jsonData->status_message = "get score berhasil".$totalScore;


			
		}
	}
	return json_encode($jsonData);
});


$app->get('/game/getScore/{total}', function ($request, $response, $args) use($database,$user,$password,$server,$db_name) {

	$total 	= $request->getAttribute('total');

	$jsonData = new jsonData();
	
	/*$ArrData = $database->query('SELECT  a.score ,b.id,b.nama_depan,b.nama_belakang,b.email,b.alamat   FROM (SELECT MAX(score) as score , user_id,last_update FROM game_score GROUP BY user_id) a LEFT JOIN user_data b ON a.user_id = b.id ')->fetchAll();
	*/
	/*SPECIAL KASUS*/

	$con= new mysqli($server,$user,$password,$db_name);
	if (mysqli_connect_errno())
  	{
  		echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}
  	$query = "SELECT  a.score ,b.id,b.nama_depan,b.nama_belakang,b.email,b.alamat   FROM (SELECT MAX(score) as score , user_id,last_update FROM game_score GROUP BY user_id) a LEFT JOIN user_data b ON a.user_id = b.id";
	
	$result = $con->query($query);
	$data2 = [];
	while($row = $result->fetch_array(MYSQLI_ASSOC)){
		$data2[] = $row;
	};

	//print_r($result);
	
	/*while ($row = mysql_fetch_array($ArrData)) {
    	  $ArrData2[] = $row;
	}

	$j*/
	$jsonData->status_code = 200;
	$jsonData->status_message = "get 10 score success";
	$jsonData->data = $data2;
	return json_encode($jsonData);
	
});



?>