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
    apiKey: 'AIzaSyA_NtNqO2KHPm7E404-oHbi8EU7utqLrqU',
    appId: '1:763293573874:web:ac62d763ab8349d125666b',
    messagingSenderId: '763293573874',
    projectId: 'phantomchat-b57f0',
    authDomain: 'phantomchat-b57f0.firebaseapp.com',
    storageBucket: 'phantomchat-b57f0.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDArGve3n_rXoMdzT-lJP3TgEmQUPEQGLI',
    appId: '1:763293573874:android:6ba7b54804ba632725666b',
    messagingSenderId: '763293573874',
    projectId: 'phantomchat-b57f0',
    storageBucket: 'phantomchat-b57f0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCM0tb3biXYtCgFOBU4vNJlfT2bOc8kSXg',
    appId: '1:763293573874:ios:7d5c09368029926a25666b',
    messagingSenderId: '763293573874',
    projectId: 'phantomchat-b57f0',
    storageBucket: 'phantomchat-b57f0.firebasestorage.app',
    androidClientId: '763293573874-p1upe7m16cubcqrtfo3oitnj55alrrgt.apps.googleusercontent.com',
    iosClientId: '763293573874-2702geqdelnipnju6ic8l48v2argv58i.apps.googleusercontent.com',
    iosBundleId: 'com.example.phantomChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCM0tb3biXYtCgFOBU4vNJlfT2bOc8kSXg',
    appId: '1:763293573874:ios:7d5c09368029926a25666b',
    messagingSenderId: '763293573874',
    projectId: 'phantomchat-b57f0',
    storageBucket: 'phantomchat-b57f0.firebasestorage.app',
    androidClientId: '763293573874-p1upe7m16cubcqrtfo3oitnj55alrrgt.apps.googleusercontent.com',
    iosClientId: '763293573874-2702geqdelnipnju6ic8l48v2argv58i.apps.googleusercontent.com',
    iosBundleId: 'com.example.phantomChat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA_NtNqO2KHPm7E404-oHbi8EU7utqLrqU',
    appId: '1:763293573874:web:03106d95c21d6f2325666b',
    messagingSenderId: '763293573874',
    projectId: 'phantomchat-b57f0',
    authDomain: 'phantomchat-b57f0.firebaseapp.com',
    storageBucket: 'phantomchat-b57f0.firebasestorage.app',
  );

}