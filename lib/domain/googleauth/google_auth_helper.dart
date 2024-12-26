import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthHelper {
  /// Handle Google Signin to authenticate user
  Future<GoogleSignInAccount?> googleSignInProcess() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      return googleUser;
    }

    return null;
  }

  /// To check if the user is already signed in through Google
  Future<bool> alreadySignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    bool alreadySignedIn = await googleSignIn.isSignedIn();
    return alreadySignedIn;
  }

  /// To sign out from the application if the user is signed in through Google
  Future<GoogleSignInAccount?> googleSignOutProcess() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signOut();
    return googleUser;
  }
}
