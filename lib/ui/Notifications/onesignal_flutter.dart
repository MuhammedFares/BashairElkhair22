import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../Database/DB.dart';

void InitOneSignal(){

  //Remove this method to stop OneSignal Debugging
  //OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId("15039728-ae81-4b27-bba8-8d8ba8e6a02f");
// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {print("Accepted permission: $accepted");}


  );
}




Future<bool> AddExternalUser(String? ui) async {

  if(ui =="MO file is not exsit ") {
    print("$ui  is mo id - Add External user - failed");
    return false;
  };
  String? a =ui;
  OneSignal.shared.setExternalUserId(a!);

  var deviceState = await OneSignal.shared.getDeviceState();

  await AddPlayerId(a,deviceState?.userId);

  return true;
}


Future<void> SendNotification(String player , String Title , String Content) async {


  var notification = OSCreateNotification(
      playerIds: [player],
      content: Content,
      heading: Title,
      buttons: [
      ]);

   await OneSignal.shared.postNotification(notification);

}


Future<void> SendGlobalNotification ( String Title , String Content) async {
  List<String> players = await AllDevices();
  if(players == null){return;};
    var notification = OSCreateNotification(
        playerIds: players,
        content: Content,
        heading: Title,

        buttons: [
        ]);
    try {
      await OneSignal.shared.postNotification(notification);
      print("notification sent");
    } on Exception  {
      print("notification not sent");

    }
  }
