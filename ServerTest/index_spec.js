var baseUrl = "http://localhost:90/BaseGameApi/index.php";
var frisby = require('frisby');

var userRandom = Math.random();
var passRandom = Math.random();


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
.toss();

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
.afterJSON(function(json) {
    //TES SAAT USER SUDAH LOGIN
    frisby.create('Cek user data dengan access token yang sudah didapat')
      .get(baseUrl+'/user/getData/' + json.data.access_token)
      .expectStatus(200)
      .expectJSON({
        status_code:200
      })
      .expectJSONTypes({
        data:{
          nama_depan:String,
          nama_belakang:String,
          no_hp:String,
          alamat:String,
          email:String
        },
        status_message:String
      })
      .inspectJSON()
    .toss();

    frisby.create('Cek untuk membuat game session')
    .get(baseUrl+'/user/createGameSession/'+json.data.access_token)
    .expectStatus(200)
    .expectJSON({
      status_code:200
    })
    .expectJSONTypes({
      data:{
        game_token : String
      },
      status_message:String
    })
    .inspectJSON()
    .toss();

})

.toss();

frisby.create('Test login dengan password yang salah')
.get(baseUrl+'/user/login/kjashfkaiquwyqwkjr/asfhwqirhkjasfhkj')
.expectStatus(200)
.expectJSON(
  {
    status_code:404,
  }
)
.expectJSONTypes(
{
  status_message:String
}
)
.inspectJSON()
.toss();


