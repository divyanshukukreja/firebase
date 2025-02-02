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
    apiKey: 'AIzaSyDmch2Co_BbZjV38Xh9RZESfquvVqthEFw',
    appId: '1:608078007507:web:360cb35b280d8f2a385826',
    messagingSenderId: '608078007507',
    projectId: 'fir-86291',
    authDomain: 'fir-86291.firebaseapp.com',
    storageBucket: 'fir-86291.appspot.com',
    measurementId: 'G-QNRFY13VFY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWUBkjxrv0F10w3_vlRy2nCqVz7eg-xWo',
    appId: '1:608078007507:android:88b7945437598670385826',
    messagingSenderId: '608078007507',
    projectId: 'fir-86291',
    storageBucket: 'fir-86291.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHzeqyv5zOwsV8gk78c5Zb-MgWTpc1Eak',
    appId: '1:608078007507:ios:945f9ae3d8eba5fd385826',
    messagingSenderId: '608078007507',
    projectId: 'fir-86291',
    storageBucket: 'fir-86291.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHzeqyv5zOwsV8gk78c5Zb-MgWTpc1Eak',
    appId: '1:608078007507:ios:0d7d1f9af62bee8f385826',
    messagingSenderId: '608078007507',
    projectId: 'fir-86291',
    storageBucket: 'fir-86291.appspot.com',
    iosBundleId: 'com.example.firebase.RunnerTests',
  );
}
