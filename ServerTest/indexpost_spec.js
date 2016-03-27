var baseUrl = "http://localhost:90/Base-Backend-Game-API/index.php";
var frisby = require('frisby');

var userRandom = Math.random();
var passRandom = Math.random();
var access_token;
var game_token;

frisby.create('Test dengan user dan password random')
.post(baseUrl+'/user/register',{
	username:userRandom,
	password:passRandom,
	nama_depan:'yusuf',
	nama_belakang:'afandi',
	email:'afandi.yusuf.04@gmail.com',
	alamat:'bandung',
	no_hp:'01929823012380123'
})
.expectStatus(200)
.expectJSON({
	status_code:200
}).expectJSONTypes({
	data:{
		access_token:String
	},
	status_message:String
})
.inspectJSON()
.afterJSON(function(json){
	//----------------------- LOGIN SETELAH REGISTER ---------------------//
	frisby.create('Test login dengan user random yang telah dibuat')
	.post(baseUrl+'/user/login',{
		username:userRandom,
		password:passRandom
	})
	.expectStatus(200)
	.expectJSON({
		status_code:200
	})
	.expectJSONTypes({
		data:{
			access_token:String
		},
		status_message:String
	})
	.inspectJSON()
	.afterJSON(function(json2){
		//----------------------------------- TEST WITH ACCESS TOKEN --------------------//
			access_token = json2.data.access_token;
			frisby.create('get data dengan user random yang telah dibuat')
			.post(baseUrl+'/user/getData',
			{
				access_token:access_token
			})
			.expectStatus(200)
			.expectJSON({
				status_code:200
			})
			.expectJSONTypes({
				status_message:String
			})
			.inspectJSON()
			.toss();

			frisby.create(' Test untuk membuat game session')
			.post(baseUrl+'/game/creatSession',{
				access_token:access_token
			})
			.expectStatus(200)
			.expectJSON({
				status_code:200
			})
			.expectJSONTypes({
				status_message:String,
				data:{
					game_token:String
				}
			})
			.inspectJSON()
			.afterJSON(function(json){
				//-------------------------------- TEST GAME TOKEN ------------------------------//
				var totalScore = 0;
				game_token = json.data.game_token;

				for(var i=0;i<5;i++)
				{
					game_token = json.data.game_token;
					var score = Math.round(Math.random()*500);
					frisby.create('Test untuk post score per level')
					.post(baseUrl+'/game/postScorePerLevel',{
						access_token:access_token,
						game_token:game_token,
						score:score,
						level:'level'+(i+1)
					})
					.expectStatus(200)
					.expectJSON({
						status_code:200
					})
					.expectJSONTypes({
						status_message:String
					})
					.inspectJSON()
					.toss();

					totalScore+= score;
				}


				frisby.create('Test untuk post score per level dengan score random')
				.post(baseUrl+'/game/postScorePerLevel',{
						access_token:access_token,
						game_token:game_token,
						score:Math.round(Math.random()*500),
						level:'level1'
					})
				.expectStatus(200)
				.expectJSON({
					status_code:409
				})
				.expectJSONTypes({
					status_message:String
				})
				.inspectJSON()
				.toss();

				game_token = json.data.game_token;
				frisby.create('Test posting total score')
				.post(baseUrl+'/game/postTotalScore',{
					access_token:access_token,
					game_token:game_token,
					score:totalScore
				})
				.expectStatus(200)
				.expectJSON({
					status_code:200
				})
				.expectJSONTypes({
					status_message:String
				})
				.inspectJSON()
				.toss();

				game_token = json.data.game_token;
				frisby.create('Test untuk cek validasi game token')
				.post(baseUrl+'/game/getScoreBySession',
				{
					access_token:access_token,
					game_token:game_token
				})
				.expectStatus(200)
				.expectJSON({
					status_code:200
				})
				.expectJSONTypes({
					status_message:String
				})
				.toss();

				//--------------------------------- END TEST GAME TOKEN -----------------------//
			})
			.toss();
		//----------------------------------- END TEST ACCESS TOKEN ---------------------//
	})
	.toss();

	//------------------------ LOGIN SETELAH REGISTER END --------------------//
})
.toss();

//-----------------------------TEST PUBLIC DATA -------------------//
frisby.create('Test untuk mengambil top 10')
.get(baseUrl+'/game/getScore/10')
.inspectJSON()
.expectStatus(200)
.expectJSON({
	status_code:200
})
.toss();
