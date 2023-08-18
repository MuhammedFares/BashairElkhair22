//GOOGLE
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:twitter_login/twitter_login.dart';

//Google

final GoogleSignIn googleSignIn = GoogleSignIn();

Future<UserCredential> signInWithGoogle() async {
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
  await googleSignInAccount!.authentication;

  final OAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);
}




//TWITTER

/*Future<UserCredential> signInWithTwitter() async {
  // Create a TwitterLogin instance
  final twitterLogin = TwitterLogin(
      apiKey: "XaIIs1W42R6CUpqrO2yLCPzxo",
      apiSecretKey:"WFlcVbAewTJZIvoZ8t5aO8rIaFmVzdVMslnsxV7YTpG1PnZqSE",
      redirectURI: 'flutter-twitter-login://'
  );


  // Trigger the sign-in flow
  final authResult = await twitterLogin.login();



  // Create a credential from the access token
  final twitterAuthCredential = TwitterAuthProvider.credential(
    accessToken: authResult.authToken!,
    secret: authResult.authTokenSecret!,
  );

  // Once signed in, return the UserCredential

  return await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);
}*/
