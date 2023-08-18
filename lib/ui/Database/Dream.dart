import 'package:bshair_elkher/ui/Tools/time.dart';
import 'package:intl/intl.dart';

class dream{




  String dreamtype,useruid, mo_id, age, sex, job, martial_stat, tareekh_royaa,
   content, response, gen_id, dream_stat, time_post="",approved;


  dream(this.dreamtype,this.useruid,this.mo_id,this.sex,this.age,this.job,this.martial_stat
      ,this.tareekh_royaa,this.content,this.response,this.gen_id,this.dream_stat, this.time_post,this.approved);


 Future<Map<String, dynamic>> toJson()  async {
    return {
      'dreamtype': dreamtype,
      'useruid': useruid,
      'mo_id': mo_id,
      'sex': sex,
      'age': age,
      'job': job,
      'martial_stat': martial_stat,
      'tareekh_royaa': tareekh_royaa,
      'content': content,
      'response': response,
      'gen_id': gen_id,
      'dream_stat': dream_stat,
      'time_post':  await formattedDate(),
      'approved':approved,
    };
  }

Future<String> formattedDate() {
return timeadapter().GlobalFormatedtime();
}



}
dream createdream(record) {
  Map<String, dynamic> attributes = {
    'dreamtype': '',
    'useruid': '',
    'mo_id': '',
    'sex': '',
    'age': '',
    'job': '',
    'martial_stat': '',
    'tareekh_royaa': '',
    'content': '',
    'response': '',
    'gen_id': '',
    'dream_stat': '',
    'time_post': '',
    'approved':'',
  };

  record.forEach((key, value) => {attributes[key] = value});

  dream d = dream
    (attributes['dreamtype'], attributes['useruid'], attributes['mo_id'],attributes['sex']
      , attributes['age'], attributes['job'], attributes['martial_stat'],
      attributes['tareekh_royaa'],attributes['content'], attributes['response'], attributes['gen_id']
      ,attributes['dream_stat'],attributes['time_post'],attributes['approved']);

  return d;
}