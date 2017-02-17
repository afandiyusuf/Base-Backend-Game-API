<?php

use Medoo\Medoo;

Class DatabaseModel{
	private $user_table = 'user_data';
	private $access_token_table = 'access_token';

	public $db;
	
	function __construct(){
		$this->db = new Medoo([
		    'database_type' => 'mysql',
		    'database_name' => 'game_db',
		    'server' => 'localhost',
		    'username' => 'root',
		    'password' => '',
		    'charset' => 'utf8'
		]);
	}

	public function register($userData)
	{
		$this->db->insert($this->user_table,$userData);
		return $this->db->id();
	}

	public function validate_user_pass($username,$password)
	{
		$id = $this->db->get($this->user_table,'id',[
			"AND"=>[
				"user_name" => $username,
				"password" => $password
			]
		]);

		return $id;
	}

	public function validate_access_token($access_token,$id)
	{
		$total =  $this->db->count($this->access_token_table,[
			"AND"=>[
				"user_id"=>$id,
				"access_token" => $access_token,
				"is_valid" => 1
			]
		]);

		if($total > 0)
		{
			return false;
		}else{
			return true;
		}
	}

	public function set_access_token($user_id, $access_token)
	{
		$total_data = $this->db->count($this->access_token_table,[
				"user_id" => $user_id
		]);

		if($total_data > 0){
			$this->db->update($this->access_token_table,[
				"access_token"=>$access_token
				],[
					"AND"=>
					[
						"user_id"=>$user_id,
						"is_valid"=>1
					]
			]);
		}else{
			$this->db->insert($this->access_token_table,[
				"user_id" => $user_id,
				"is_valid" => 1,
				"access_token" => $access_token
			]);
		}
	}


}




?>