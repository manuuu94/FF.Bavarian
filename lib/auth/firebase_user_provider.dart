import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PrograDispMovilesFirebaseUser {
  PrograDispMovilesFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PrograDispMovilesFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PrograDispMovilesFirebaseUser> prograDispMovilesFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PrograDispMovilesFirebaseUser>(
      (user) {
        currentUser = PrograDispMovilesFirebaseUser(user);
        return currentUser!;
      },
    );
