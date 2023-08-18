class chatmessage {

  String body;
  String sender;
  String date;

  chatmessage(this.body,this.sender,this.date);


  Map<String,dynamic> toJson() {
    return {
      'body': body,
      'sender': sender,
      'date': date,
    };
  }


}
chatmessage createMessage(record) {
  Map<String, dynamic> attributes = {
    'body': '',
    'sender': '',
    'date': '',
  };

  record.forEach((key, value) => {attributes[key] = value});

  chatmessage d = chatmessage
    (attributes['body'], attributes['sender'],attributes['date']);
  return d;
}