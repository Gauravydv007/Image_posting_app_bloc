import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app_bloc_001/features/domain/entities/user_data.dart';
import 'package:social_media_app_bloc_001/features/domain/repo/auth_repo.dart';

class FirebaseAuthRepo extends AuthRepo {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  /// by this we can perform authentication task
  @override
  Future<AppUser?> loginWithEmailPassword(String email, String password) async {
    try {
      // here we attempt to sign in
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      //create user
      AppUser user =
          AppUser(uid: userCredential.user!.uid, email: email, name: '');

      return user; // by this firebase return us the uid, email, name which we will use in other parts of app
    } catch (e) {
      throw Exception('Login Filed : $e');
    }
  }

  @override
  Future<AppUser?> registerWithEmailPassword(
      String name, String password, String email) async {
    try {
      // attempt to sign up
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      AppUser user =
          AppUser(uid: userCredential.user!.uid, email: email, name: name);
      return user;
    } catch (e) {
      throw Exception('Reister Failed: $e');
    }
  }

  @override
  Future<void> logout() async {
    // TODO: implement logout
    await firebaseAuth.signOut();
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    // get current user from firebase
    final firebaseUser = firebaseAuth.currentUser;

    //no user exist
    if (firebaseUser == null) {
      return null;
    }

    //user exist
    return AppUser(
      uid: firebaseUser.uid,
      email: firebaseUser.email!,
      name: '',
    );
  }
}
