import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: const AuthScreen(),
      // 
      // 
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Hello'),
      //     centerTitle: true,
      //   ),
      //   body: Column(
      //     children: [
      //       const Center(
      //         child: Text("Flutter Demo Home Page"),
      //       ),
      //       Builder(
      //         builder: (context) {
      //           return ElevatedButton(
      //             onPressed: () {
      //               Navigator.pushNamed(context, AuthScreen.routeName);
      //             },
      //             child: const Text("click"),
      //           );
      //         }
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
