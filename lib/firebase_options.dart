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
    apiKey: 'AIzaSyAjwNsElG0SU9nLO7CbWfn5XeHLUkkp4zw',
    appId: '1:329608157539:web:d409b3ab7001028c4f5b56',
    messagingSenderId: '329608157539',
    projectId: 'delightapp-92074',
    authDomain: 'delightapp-92074.firebaseapp.com',
    storageBucket: 'delightapp-92074.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATHCb_NklcYN1dDcMw3Bbd5xmmdZOYLf4',
    appId: '1:329608157539:android:24e7760540a6ab634f5b56',
    messagingSenderId: '329608157539',
    projectId: 'delightapp-92074',
    storageBucket: 'delightapp-92074.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDL7lt39j4PWIuPJZkydj0Mz3c69Mk7Th0',
    appId: '1:329608157539:ios:c9f15b57d91564604f5b56',
    messagingSenderId: '329608157539',
    projectId: 'delightapp-92074',
    storageBucket: 'delightapp-92074.appspot.com',
    iosClientId: '329608157539-rv4hpfkkb6f1ro101o6fsgjpgsljug88.apps.googleusercontent.com',
    iosBundleId: 'com.example.delightapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDL7lt39j4PWIuPJZkydj0Mz3c69Mk7Th0',
    appId: '1:329608157539:ios:0de9b210bfc1a55d4f5b56',
    messagingSenderId: '329608157539',
    projectId: 'delightapp-92074',
    storageBucket: 'delightapp-92074.appspot.com',
    iosClientId: '329608157539-e4jqd3shavog2ui2an2gqjgumekuugjk.apps.googleusercontent.com',
    iosBundleId: 'com.example.delightapp.RunnerTests',
  );
}
