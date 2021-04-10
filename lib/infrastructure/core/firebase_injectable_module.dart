import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
// ignore: public_member_api_docs
abstract class FirebaseInjectableModule {
  @lazySingleton
  // ignore: public_member_api_docs
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
