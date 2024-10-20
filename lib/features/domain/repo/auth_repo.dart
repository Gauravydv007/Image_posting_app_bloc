/*
Auth repo = this repo is used to outline the possible operations of app.

*/



import 'package:social_media_app_bloc_001/features/domain/entities/user_data.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailPassword(String email, String password);
  Future<AppUser?> registerWithEmailPassword(String email, String password, String name);
  Future<void> logout();
  Future<AppUser?> getCurrentUser();
}