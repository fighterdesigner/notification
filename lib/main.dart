import 'package:flutter/material.dart';
import 'slide_screens.dart';
import 'main_page.dart';
import 'notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MainPage(),
      routes: {
        // Main initial route
        '/': (context) => SlideScreens(),
        // Second route
        '/second': (context) => MainPage(),
      },
      initialRoute: '/',
    );
  }
}
