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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDLA0A_Kuy1YpG9n7JNI2vLG8lYtnz7G58',
    appId: '1:386474482350:web:3759b16730863a82c72b3f',
    messagingSenderId: '386474482350',
    projectId: 'moblieappchomyeon',
    authDomain: 'moblieappchomyeon.firebaseapp.com',
    storageBucket: 'moblieappchomyeon.firebasestorage.app',
    measurementId: 'G-NT2BKRC0RQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByDGb7pJWgNr_utwmAbbT4hjkkWgwjuxQ',
    appId: '1:386474482350:android:232a18480d4c3255c72b3f',
    messagingSenderId: '386474482350',
    projectId: 'moblieappchomyeon',
    storageBucket: 'moblieappchomyeon.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmqDOYZOILmuNQKWGrfIb_zQjWwETLeis',
    appId: '1:386474482350:ios:376c647ec996d5b7c72b3f',
    messagingSenderId: '386474482350',
    projectId: 'moblieappchomyeon',
    storageBucket: 'moblieappchomyeon.firebasestorage.app',
    iosClientId: '386474482350-hgc45gbhtdlbfssmfoommspel8cesgjb.apps.googleusercontent.com',
    iosBundleId: 'com.example.chomyeon',
  );
}
