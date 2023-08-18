import 'dart:async';

import 'package:intl/intl.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class timeadapter

{


  Future<String> GetrestOfTime(String posttime,String dtype , String response)
   async {
    if(response !="noresponse"){return "الرؤية مفسّرة بالفعل";}
    if(!posttime.startsWith("2")){return "العميل لم يحدث التطبيق";}

    DateTime post = DateTime.parse(posttime);
    int d = 0;

    print(posttime +"  "+ dtype);

    if(dtype == "dreamtype.normal") {d=24;}
    else if(dtype == "dreamtype.bronze") {d=12;}
    else if(dtype== "dreamtype.golden"){d=6;}
    else if(dtype== "dreamtype.instant"){d=3;}
    print(d);
    DateTime DeadLine = post.add(Duration(hours: d));

    print(DateFormat('yyyy-MM-dd HH:mm:ss').format(post));
    print(DateFormat('yyyy-MM-dd HH:mm:ss').format(DeadLine));

    String m = await GlobalFormatedtime();
    DateTime now = DateTime.parse(m);
    Duration Difference = DeadLine.difference(now);


    return getDuration(Difference.inSeconds);

  }
  String getDuration(int totalSeconds) {
    String seconds = (totalSeconds % 60).toInt().toString().padLeft(2, '0');
    String minutes =
    ((totalSeconds / 60) % 60).toInt().toString().padLeft(2, '0');
    String hours = (totalSeconds ~/ 3600).toString().padLeft(2, '0');


    hours = hours.replaceFirst(RegExp(r'0'), '');
    minutes = minutes.replaceFirst(RegExp(r'0'), '');
    String finaltime = "$hours ساعات و ";
    String fintalt= "$minutes دقيقة ";

    if(int.parse(hours) > 10){
      finaltime = finaltime.replaceAll("ساعات", "ساعة");
    }
    if(int.parse(minutes) < 10 && int.parse(minutes) > 2){
      fintalt = fintalt.replaceAll("دقيقة", "دقائق");
    }
    else if(int.parse(minutes) == 2 )
       { fintalt = fintalt.replaceAll("دقيقة", "ودقيقتين");}

    return finaltime + fintalt;


  }

  Future<String> GlobalFormatedtime()   async {

    var url =
    Uri.https('worldtimeapi.org', 'api/timezone/Africa/Cairo');
    var response =  await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      String tt = jsonResponse['datetime'];
      var formatedTime = tt.replaceFirst("T", " ").substring(0, tt.indexOf('.')).replaceFirst(".", "");
      print('Time: $formatedTime');
      return formatedTime; } else {   DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    return formattedDate;
    }
  }


}