import 'package:bshair_elkher/ui/Tools/RegMo.dart';
import 'package:firebase_database/firebase_database.dart';
import '../Tools/RegID.dart';
import 'Dream.dart';

final moRef = FirebaseDatabase.instance.ref('mofasseren');
final users = FirebaseDatabase.instance.ref('users');
final devices = FirebaseDatabase.instance.ref('Devices');
final Modevices = FirebaseDatabase.instance.ref('Modevices');

Future<bool> UserRegistered() async{
  var x = await RegID().CstId;
  DataSnapshot id =await users.child(x).get();
  return(id.exists);
}
Future<bool> MofaRegistered() async {
  var x = await RegMo().MOId;
  DataSnapshot id =await moRef.child(x).get();
  return(id.exists);
}


Future<void> AssignFirstLogin() async{

  if(!await UserRegistered()) {
    var x = await RegID().CstId;
    var user = await users.child('/$x');
    await user.child('/dreams').set("");
    print(user.ref);
    print("Assigned ");
  }
}
Future<void> AssignMofasserFirstLogin() async{

  if(!await MofaRegistered()) {
    var x = await RegMo().MOId;
    var mof = await moRef.child('/$x');
    await mof.child('/totalbal').set(0);
    await mof.child('/paidbal').set(0);
    await mof.child('/restbal').set(0);

    await mof.child('/dreams').set("");

    await mof.child('/service/normal').set("true");
    await mof.child('/service/bronze').set("true");
    await mof.child('/service/golden').set("true");
    await mof.child('/service/instant').set("true");

    print("Mofasser Assigned ");
  }
}


Future<List<String>> GetMobalance() async{
  var x = await RegMo().MOId;

  print(x);
  List<String> args =[];
  var total , paid,rest;
  DataSnapshot totalbal =await moRef.child('$x/totalbal').get();
  total = totalbal.value;

  DataSnapshot paidbal =await moRef.child('$x/paidbal').get();
  paid = paidbal.value;

  DataSnapshot restbal =await moRef.child('$x/restbal').get();
  rest = restbal.value;

  args.add(total.toString());args.add(paid.toString());args.add(rest.toString());
  print(args);
  return(args);

}
Future<bool> PayForMofasser(String mo,String b) async{
  var total ,rest;

  try {
    print("Mofasser id is : "+mo);
    DataSnapshot totalbal =await moRef.child('$mo/totalbal').get();
    DataSnapshot restbal =await moRef.child('$mo/restbal').get();

    print("total mofa balance :"+totalbal.value.toString());
    print("restbal mofa balance :"+restbal.value.toString());

    total = int.parse(totalbal.value.toString()) + int.parse(b);
    rest = int.parse(restbal.value.toString()) + int.parse(b);

    await moRef.child('$mo/totalbal').set(total.toString());
    await moRef.child('$mo/restbal').set(rest.toString());
    print("money  added");

    //TODO : CHECK MOFASSER LOGIN , CLEARS THE DREAMS AND BALANCE;
    return true;
  } on Exception catch (e) {
    print(e);
    print("money not added");
    return false;
  }

}

/*Future<bool> PayForMofasser2(String mo,String b) async{
  String CurrentTotal, CurrentRest;
  int NewTotal,NewRest;
  String AmountToBeadded;

  try {
    print("Mofasser id is : "+mo);

    DataSnapshot totalbal =await moRef.child('$mo/totalbal').get();
    DataSnapshot restbal =await moRef.child('$mo/restbal').get();

    print("Current  balance :"+totalbal.value.toString());
    print("Rest  balance :"+restbal.value.toString());

    CurrentTotal = totalbal.value.toString();
    CurrentRest = restbal.value.toString();

    NewTotal = int.parse(totalbal.value.toString()) + int.parse(b);
    NewRest = int.parse(restbal.value.toString()) + int.parse(b);

    print("Money to be added   :"+b.toString());
    print("New Total  :"+NewTotal.toString());
    print("New Rest  :"+NewRest.toString());


   // await moRef.child('$mo/totalbal').set(NewTotal.toString());
   // await moRef.child('$mo/restbal').set(NewRest.toString());

    print("money  added");

    //TODO : CHECK MOFASSER LOGIN , CLEARS THE DREAMS AND BALANCE;
    return true;
  } on Exception catch (e) {
    print(e);
    print("money not added");
    return false;
  }

}*/
Future<bool> adduserDream(dream d) async {
  try {
    var x = await RegID().CstId;
    DataSnapshot id = await users.child('$x/dreams').get();
    var a = d.gen_id ;//here the key to bring the dream more faster
    var ss = await d.toJson();
    id.ref.child("/$a'").set(ss);

    var mo = d.mo_id;
    DataSnapshot id2 = await moRef.child('$mo/dreams/notdone').get();
    var a2 = d.gen_id ;//here the key to bring the dream more faster

    var swsw = await d.toJson();
    id2.ref.child("/$a2'").set(swsw);

    print("**********");
    print(mo);print(mo);print(mo);

    print("dream posted");

    return true;
  } on Exception catch (e) {
    print("dream not posted ${e.toString()}" );
    return false;
  }
}


Future<List<dream>> UserFinishedDreams() async{

  var x = await RegID().CstId;
  List<dream> dreams =[];
  DataSnapshot id =await users.child('$x/dreams').get();
  id.children.forEach((element) {

    Map<Object?, Object?> args = element.value as Map<Object?, Object?>;

    if(args['dream_stat'] == "done"){
    dreams.add(createdream(element.value));
    }
    var s =  dreams.length.toString();
    print("Count Of Dreams is :$s");
  });

  return dreams;
}
Future<List<dream>> UserNotFinished() async{

  var x = await RegID().CstId;
  List<dream> dreams =[];
  DataSnapshot id =await users.child('$x/dreams').get();
  id.children.forEach((element) {

    Map<Object?, Object?> args = element.value as Map<Object?, Object?>;

    if(args['dream_stat'] != "done"){
      dreams.add(createdream(element.value));
    }

  });

  return dreams;
}

Future<List<dream>> MoNotfinished() async {
  var x = await RegMo().MOId;
  List<dream> dreams =[];
  print(x);
  DataSnapshot id =await moRef.child('$x/dreams/notdone').get();
  print(id.ref.ref.path);
  id.children.forEach((element) {

    Map<Object?, Object?> args = element.value as Map<Object?, Object?>;

    if(args['dream_stat'] != "done"){
      dreams.add(createdream(element.value));
    }
    var s =  dreams.length.toString();
    print("Count Of Dreams is :$s");
  });

  return dreams;
}
Future<List<dream>> Mofinisheddreams() async {
  var x = await RegMo().MOId;
  List<dream> dreams =[];
  DataSnapshot id =await moRef.child('$x/dreams/done').get();
  id.children.forEach((element) {

    Map<Object?, Object?> args = element.value as Map<Object?, Object?>;

    if(args['dream_stat'] == "done"){
      dreams.add(createdream(element.value));
    }
  });

  return dreams;
}

Future<List<dream>> SameClientList(String clId) async {
  var x = await RegMo().MOId;
  List<dream> dreams =[];
  DataSnapshot id =await moRef.child('$x/dreams/done').get();
  id.children.forEach((element) {

    Map<Object?, Object?> args = element.value as Map<Object?, Object?>;

    if(args['useruid'] == clId){
      dreams.add(createdream(element.value));
    }
  });

  return dreams;
}

//StoredPublicDreams
//Public Dreams For Each Mofasser
List<String> Codes = ["mo112"
  ,"ya133","os102","om092"
  ,"mf902","ab163","ma164",
  "or062","ig142","ah150","eng150","you323","nour10","yos10","aziz35","ths1","os001","baksh1"];
//TODO : Take a note : you edideted this section.

Future<List<dream>>MoXdreams(String moid) async {
  {

    List<dream> dreams =[];
    DataSnapshot id =await moRef.child('$moid/dreams/done').get();
    id.children.forEach((element) {

      Map<Object?, Object?> args = element.value as Map<Object?, Object?>;

      var x = args['approved'].toString();
      if(x== 'true') {
          dreams.add(createdream(element.value));
      }
    });

    print(moid + "has : "+dreams.length.toString());
    return dreams;
  }
}
Future<List<dream>>StoredPublicDreams() async {
  List<dream> dreams =[];
  Codes.forEach((element) async {
    dreams.addAll(await MoXdreams(element));
  });
  return dreams;
}

Future<bool>addrespnse(dream d,String res ) async {
  try {
    var userid = d.useruid;
    String dreamid = d.gen_id;
    var moid = d.mo_id;


    //remove dream , add it to done.
    DataSnapshot removeFromClient = await users.child('$userid/dreams/$dreamid').get();
    removeFromClient.ref.remove();
    print("1.1- dream removed from not done on client  ");

    String sq=dreamid+"'";
    DataSnapshot snapshot = await moRef.child('$moid/dreams/notdone/$sq').get();
    snapshot.ref.remove();

    print("1.2-dream removed from not done on mofasser  ");


    d.dream_stat = "done";
    d.response = res;
    print("1.3-dream updated ");

    DataSnapshot postdreamToClient = await users.child('$userid/dreams').get();
    var swawawa = await d.toJson();
    postdreamToClient.ref.child("/$dreamid'").set(swawawa);
    print("2 - dream updated on cLIENT with response ");


    DataSnapshot PostDreamToMoDone = await moRef.child('$moid/dreams/done')
        .get();
    var hamo = await d.toJson();
    PostDreamToMoDone.ref.child("/$dreamid'").set(hamo);
    print("3 - dream updated on mO dONE with response ");


    return true;
  } on Exception catch (e) {
    print("dream not posted ${e.toString()}" );

    return false;
  }
}
Future<bool>makesureDeleted(String moid,String genid) async {
  DataSnapshot removeFromMo = await moRef.child('$moid/dreams/notdone/$genid')
      .get();
  removeFromMo.ref.remove();


  print("make sure prombted");
  return true;
}

//Notifications
Future<bool> AddPlayerId(String person,String? playerid ) async {

  if(playerid ==null){return false;}
  try {
    if (Codes.contains(person)) {

      DataSnapshot id = await moRef.child('$person/player').get();
      id.ref.set(playerid);

      DataSnapshot d = await Modevices.get();
      d.ref.child(playerid).set(person);


      return true;
    }
    else {
      //add for user

      DataSnapshot id = await users.child('$person/player').get();
      id.ref.set(playerid);

      DataSnapshot d = await devices.get();
      d.ref.child(playerid).set("0");
      return true;
    }
  } on Exception catch (e) {
    print("dream not posted ${e.toString()}" );

    return false;
  }

}
Future<bool> AddMofasserPlayer(String person,String? playerid ) async {

  if(playerid ==null){return false;}
  try {
    if (Codes.contains(person)) {

      DataSnapshot id = await moRef.child('$person/player').get();
      id.ref.set(playerid);

      DataSnapshot d = await devices.get();
      d.ref.child(playerid).set("0");


      return true;
    }
    else {
      //add for user

      DataSnapshot id = await users.child('$person/player').get();
      id.ref.set(playerid);

      DataSnapshot d = await devices.get();
      d.ref.child(playerid).set("0");
      return true;
    }
  } on Exception catch (e) {
    print("dream not posted ${e.toString()}" );

    return false;
  }

}

Future<String> GetMoPlayer(String Moid) async{

  DataSnapshot id =await moRef.child('$Moid/player').get();
  var x = id.value.toString();
  print("Get mo id $x");
  return id.value.toString();
}
Future<String> GetCstPlayer(String uid) async{

  DataSnapshot id =await users.child('$uid/player').get();
  var x = id.value.toString();
  print("Get Cst id $x");
  return id.value.toString();

}

//Rec Requests Toggels.
Future<bool> servicestate(String Moid,String Srvc)  async {
  DataSnapshot id =await moRef.child('$Moid/service/$Srvc').get();
  if(id.value.toString() == true.toString()) { return true;}
  else{return false;}
}



void SubmitServiceStatus(String mo,String Srvc,String stat) async {
  if(!Codes.contains(mo)){
     await RegMo().Logout();
  }
  else{await moRef.child('$mo/service/$Srvc').set("$stat");}
}

Future<List<String>> AllDevices() async {

  List<String>players = [];

  DataSnapshot d = await devices.get();
  if(d.value == null) {return players;}
  Map<Object?, Object?> args = d.value as Map<Object?, Object?>;

  args.forEach((key, value) {
    if(key.toString() !="null"){
    players.add(key.toString());}
  });

  return  players;
}


Future<List<String>> GetGoldenRecivers() async {
  List<String> Names = Codes;
  List<String> result = [];
  for (var v = 0; v<Names.length; v++) {
    var val = Names[v];
    DataSnapshot id =await moRef.child('$val/service/golden').get();
    var x = id.value.toString();

    if(x== 'true') {
      result.add(val);
    }
  }
  result.shuffle();
  return result;
}
Future<List<String>> GetNormalRecivers() async {
  List<String> Names = Codes;
  List<String> result = [];
  for (var v = 0; v<Names.length; v++) {
    var val = Names[v];
    DataSnapshot id =await moRef.child('$val/service/normal').get();
      var x = id.value.toString();
      if(x== 'true') {
        result.add(val);
        print(val);
      }
  }
  result.shuffle();
  return result;
}
Future<List<String>> GetbronzeRecivers() async {
  List<String> Names = Codes;
  List<String> result = [];
  for (var v = 0; v<Names.length; v++) {
    var val = Names[v];
    DataSnapshot id =await moRef.child('$val/service/bronze').get();
    var x = id.value.toString();
    if(x== 'true') {
      result.add(val);
      print(val);
    }
  }
  result.shuffle();
  return result;
}
Future<List<String>> GetInstantRecivers() async {
  List<String> Names = Codes;
  List<String> result = [];
  for (var v = 0; v<Names.length; v++) {
    var val = Names[v];
    DataSnapshot id =await moRef.child('$val/service/instant').get();
    var x = id.value.toString();
    if(x== 'true') {
      result.add(val);
      print(val);
    }
  }
  result.shuffle();
  return result;
}

Future<bool>sus(String mo) async {
DataSnapshot id =await moRef.child('$mo/Active/').get();
var x = id.value.toString();

if(x=="0"){return true;}
else {
  return false;
}
}

