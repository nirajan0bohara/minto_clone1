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
    apiKey: 'AIzaSyBF36VWO_JBBAyV_kNUgkQac0UhBY5rM-s',
    appId: '1:999862927223:web:96f00df3d9358aef5e6b72',
    messagingSenderId: '999862927223',
    projectId: 'minto-clone-db541',
    authDomain: 'minto-clone-db541.firebaseapp.com',
    storageBucket: 'minto-clone-db541.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2dAmGBWRHOca0iOEWCDx2dnkOXcNcNgk',
    appId: '1:999862927223:android:2fcab16eaed59cf75e6b72',
    messagingSenderId: '999862927223',
    projectId: 'minto-clone-db541',
    storageBucket: 'minto-clone-db541.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbIj-MX3AIryRhW64E49vH_P9YaXDUsXM',
    appId: '1:999862927223:ios:6aff87fc69e1be0e5e6b72',
    messagingSenderId: '999862927223',
    projectId: 'minto-clone-db541',
    storageBucket: 'minto-clone-db541.appspot.com',
    iosBundleId: 'com.example.mintoClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbIj-MX3AIryRhW64E49vH_P9YaXDUsXM',
    appId: '1:999862927223:ios:6aff87fc69e1be0e5e6b72',
    messagingSenderId: '999862927223',
    projectId: 'minto-clone-db541',
    storageBucket: 'minto-clone-db541.appspot.com',
    iosBundleId: 'com.example.mintoClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBF36VWO_JBBAyV_kNUgkQac0UhBY5rM-s',
    appId: '1:999862927223:web:68b1eff3922e81965e6b72',
    messagingSenderId: '999862927223',
    projectId: 'minto-clone-db541',
    authDomain: 'minto-clone-db541.firebaseapp.com',
    storageBucket: 'minto-clone-db541.appspot.com',
  );
}
