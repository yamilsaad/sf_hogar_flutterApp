// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAb1cBqb4gr4d6N0NxvjLs1rHEoeHuQI80',
    appId: '1:697347373011:web:31cd4e1fba42d0c77aa126',
    messagingSenderId: '697347373011',
    projectId: 'san-francisco-hogar',
    authDomain: 'san-francisco-hogar.firebaseapp.com',
    storageBucket: 'san-francisco-hogar.appspot.com',
    measurementId: 'G-8C3SS26RP3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcMPOaE_H05rlVqLFhW86x21avvwwAtIQ',
    appId: '1:697347373011:android:bf4f9c0f8a39dab57aa126',
    messagingSenderId: '697347373011',
    projectId: 'san-francisco-hogar',
    storageBucket: 'san-francisco-hogar.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpUDvnaj2bj6rl7WgYhANz4BzbXDxVNMo',
    appId: '1:697347373011:ios:55953de694060df17aa126',
    messagingSenderId: '697347373011',
    projectId: 'san-francisco-hogar',
    storageBucket: 'san-francisco-hogar.appspot.com',
    iosClientId: '697347373011-q91fduq0hgo5ml34sv14kahv960k69ed.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpUDvnaj2bj6rl7WgYhANz4BzbXDxVNMo',
    appId: '1:697347373011:ios:55953de694060df17aa126',
    messagingSenderId: '697347373011',
    projectId: 'san-francisco-hogar',
    storageBucket: 'san-francisco-hogar.appspot.com',
    iosClientId: '697347373011-q91fduq0hgo5ml34sv14kahv960k69ed.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );
}
