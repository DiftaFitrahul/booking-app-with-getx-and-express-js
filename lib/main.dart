import 'package:booking_app/pages/auth/register_page.dart';
import 'package:booking_app/pages/auth/reset_password_page.dart';
import 'package:booking_app/pages/auth/verification_page.dart';
import 'package:booking_app/pages/intro/slider_page.dart';
import 'package:booking_app/pages/try_splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => const MainApp(),
  // ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        //locale: DevicePreview.locale(context),
        //builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: IntroPage());
  }
}



// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => MyHome(),
//         '/half': (context) => MySecondHalfPage()
//       },
//     );
//   }
// }

// class MyHome extends StatelessWidget {
//   const MyHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample App'),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () => Navigator.push(
//               context, MaterialPageRoute(builder: (context) => MyChild())),
//           child: Text('To child page'),
//         ),
//       ),
//     );
//   }
// }

// class MyChild extends StatelessWidget {
//   const MyChild({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Child'),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (BuildContext context) => MySecondChild()),
//           ),
//           child: Text('Push to Second  Child '),
//         ),
//       ),
//     );
//   }
// }

// class MySecondHalfPage extends StatelessWidget {
//   const MySecondHalfPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My half Second Child '),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (BuildContext context) => MyThirdChild()),
//           ),
//           child: Text('My half Second Child and remove until home page'),
//         ),
//       ),
//     );
//   }
// }

// class MySecondChild extends StatelessWidget {
//   const MySecondChild({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Second Child'),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (BuildContext context) => MyThirdChild()),
//           ),
//           child: Text('Push to third page '),
//         ),
//       ),
//     );
//   }
// }

// class MyThirdChild extends StatelessWidget {
//   const MyThirdChild({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My half Second Child '),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () => Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(
//                   builder: (BuildContext context) => MySecondChild()),
//               ModalRoute.withName('/half')),
//           child: Text('My half Second Child and remove until home page'),
//         ),
//       ),
//     );
//   }
// }
