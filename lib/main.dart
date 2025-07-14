//
// Coder                    : Rethabile Eric Siase
// Time taken to complete   : 2 hours
// Number of external help  : 0
// Purpose                  : To demonstrate basic navigation and passing data through screens
//

import 'package:flutter/material.dart';
import 'package:main_test_2025/routes/route_manager.dart';
import 'package:main_test_2025/viewmodels/student_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => StudentViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudentViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Georgia',
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white),
          textTheme: TextTheme(
              bodyMedium:
                  TextStyle(fontSize: 18, color: Colors.deepPurpleAccent)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurpleAccent,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.deepPurple,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
          ),
        ),
        initialRoute: RouteManager.inputScreen,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
