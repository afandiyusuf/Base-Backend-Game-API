var baseUrl = "http://localhost/base-api/index.php";
var frisby = require('frisby');

var userRandom = Math.random();
var passRandom = Math.random();
var randomEmail = Math.random();
var access_token;
var game_token;

console.log("INIT");
registerRandomUser();

// $username 		= $request->getParam('username');
// $password 		= $request->getParam('password');
// $nama_depan 	= $request->getParam('nama_depan');
// $nama_belakang 	= $request->getParam('nama_belakang');
// $no_hp 			= $request->getParam('no_hp');
// $alamat 		= $request->getParam('alamat');
// $email 			= $request->getParam('email');

function registerRandomUser(){
	console.log("REGISTER RANDOM USER : ");
	frisby.create('Register random user')
	.post(baseUrl+'/user/register',{
		username:userRandom,
		password:passRandom,
		nama_depan:"frisby",
		nama_belakang:"test",
		no_hp:"123123123123",
		alamat:"alamat",
		email:randomEmail}
	)
	.expectStatus(200)
	.afterJSON(function(json){
	 	access_token = json.data.access_token;
	 	loginUser();
	})
	.toss();
}


function loginUser(){
	console.log("LOGIN USER : ");
	frisby.create('LOGIN SET USER')
	.post(baseUrl+'/user/login',{
			user_name:userRandom,
			password:passRandom
		}
	)
	.expectStatus(200)
	//.inspectBody()
	.inspectJSON()
	.afterJSON(function(json){
	 	
	})
	.toss();
}


