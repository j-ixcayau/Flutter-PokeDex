import 'dart:developer';

import 'package:domain/entities/user.dart';
import 'package:domain/network/auth/social/social_auth_response.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';

abstract class SocialAuthDataSoure {
  Future<SocialAuthResponse?> googleAuth();
  Future<SocialAuthResponse?> facebookAuth();
  Future<void> logout();
}

class SocialAuthDataSoureImpl extends SocialAuthDataSoure {
  @override
  Future<SocialAuthResponse?> facebookAuth() {
    // TODO: implement facebookAuth
    throw UnimplementedError();
  }

  @override
  Future<SocialAuthResponse?> googleAuth() async {
    try {
      final googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return null;
      }

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final credentials =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (credentials.user != null) {
        final user = User(email: credentials.user?.email ?? '');
        return SocialAuthResponse(user: user);
      }
    } catch (e) {
      log(e.toString());

      rethrow;
    }

    throw Exception();
  }

  @override
  Future<void> logout() async {
    try {
      await GoogleSignIn().signOut();
      await GoogleSignIn().disconnect();
    } catch (e) {
      log(e.toString());
    }
  }
}
