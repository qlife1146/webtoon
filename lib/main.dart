import 'package:flutter/material.dart';
import 'package:webtoon/screens/home_screen.dart';

void main() {
  runApp(const App());
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.immersiveSticky,
  // );
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
