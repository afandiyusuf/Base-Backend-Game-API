var baseUrl = "http://localhost:90/BaseGameApi/index.php";
var frisby = require('frisby');

var userRandom = Math.random();
var passRandom = Math.random();
var access_token;
var game_token;

frisby.create('Test dengan user dan password random')
.get(baseUrl+'/user/register/'+userRandom+'/'+passRandom+'/yusuf/afandi/afandi.yusuf.04@gmail.com/08563604240/bandung')
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
	.get(baseUrl+'/user/login/'+userRandom+'/'+passRandom)
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
			frisby.create('Test login dengan user random yang telah dibuat')
			.get(baseUrl+'/user/getData/'+access_token)
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
			.get(baseUrl+'/game/creatSession/'+access_token)
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
					frisby.create('Test untuk cek validasi game token')
					.get(baseUrl+'/game/postScorePerLevel/'+access_token+'/'+game_token+'/'+score+'/level'+(i+1))
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
				
				
				frisby.create('Test untuk cek validasi game token')
				.get(baseUrl+'/game/postScorePerLevel/'+access_token+'/'+game_token+'/'+Math.round(Math.random()*500)+'/level1')
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
				frisby.create('Test untuk cek validasi game token')
				.get(baseUrl+'/game/postTotalScore/'+access_token+'/'+game_token+'/'+totalScore)
				.expectStatus(200)
				.expectJSON({
					status_code:200
				})
				.expectJSONTypes({
					status_message:String
				})
				.inspectJSON()
				.toss();

				frisby.create('Test untuk cek validasi game token')
				.get(baseUrl+'/game/postScorePerLevel/'+access_token+'/'+game_token+'/'+Math.round(Math.random()*500)+'/level1')
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
				frisby.create('Test untuk cek validasi game token')
				.get(baseUrl+'/game/getALlScore/'+access_token+'/'+game_token)
				.expectStatus(200)
				.inspectJSON()
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