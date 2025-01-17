// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBhQpMDBrx9qw6_q4deZBRLZAhQ6rrl0IQ',
    appId: '1:543994850528:web:8ba0d8cc94b405c225b485',
    messagingSenderId: '543994850528',
    projectId: 'fluttergetx1',
    authDomain: 'fluttergetx1.firebaseapp.com',
    storageBucket: 'fluttergetx1.appspot.com',
    measurementId: 'G-35MNQ5T3DC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAioHYQiA0nhlPOQO2JO_K41n_CsTti510',
    appId: '1:543994850528:android:08da6e4554ae6a5125b485',
    messagingSenderId: '543994850528',
    projectId: 'fluttergetx1',
    storageBucket: 'fluttergetx1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYPZjppB2LVrw2p_Sboo6ob0881_TZeU8',
    appId: '1:543994850528:ios:3bb8ffe9f1beaab425b485',
    messagingSenderId: '543994850528',
    projectId: 'fluttergetx1',
    storageBucket: 'fluttergetx1.appspot.com',
    iosBundleId: 'com.example.flutterGetx11',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYPZjppB2LVrw2p_Sboo6ob0881_TZeU8',
    appId: '1:543994850528:ios:3bb8ffe9f1beaab425b485',
    messagingSenderId: '543994850528',
    projectId: 'fluttergetx1',
    storageBucket: 'fluttergetx1.appspot.com',
    iosBundleId: 'com.example.flutterGetx11',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBhQpMDBrx9qw6_q4deZBRLZAhQ6rrl0IQ',
    appId: '1:543994850528:web:df3655632e3c9aad25b485',
    messagingSenderId: '543994850528',
    projectId: 'fluttergetx1',
    authDomain: 'fluttergetx1.firebaseapp.com',
    storageBucket: 'fluttergetx1.appspot.com',
    measurementId: 'G-5TJJJ0JN34',
  );
}
