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

	public function register($userData){
		$this->db->insert($this->user_table,$userData);
		echo $this->db->id();
		return $this->db->id();
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