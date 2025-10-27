import 'package:easy_count/splashScreen.dart';
import 'package:easy_count/stats_screens/bowler_stats.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart'; // ✅ add hive
import 'package:supabase_flutter/supabase_flutter.dart';
import 'demo.dart';
import 'drawerScreens/aboutUsScreen.dart';
import 'package:easy_count/drawerScreens/ContactUsScreen.dart';
import 'package:easy_count/drawerScreens/terms_and_conditons_Screen.dart';
import 'package:easy_count/home_screens/history.dart';
import 'package:easy_count/home_screens/new_match.dart';
import 'package:easy_count/home_screens/stats.dart';
import 'package:easy_count/home_screens/home_screen.dart';
import 'package:easy_count/new_match_screens/scorecard.dart';
import 'package:easy_count/new_match_screens/firstInnings.dart';
import 'new_match_screens/secondInnings.dart';
import 'new_match_screens/summaryScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Initialize Hive
  await Hive.initFlutter();

  // ✅ Open a default box (you can name it anything)
  await Hive.openBox('settings');

  runApp(const EasyCount());
}

class EasyCount extends StatelessWidget {
  const EasyCount({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to remove debug banner(icon)
      title: 'EasyCount',

      theme: ThemeData(
          primaryColor: Colors
              .blueGrey, // don't know reason of using this line but appbar and major elements
          brightness:
              Brightness.light, //two options either dark or light(white)
          scaffoldBackgroundColor: Colors.blueGrey[50], //scaffold color
          fontFamily: 'Roboto', //default font family

          //App Bar structure
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white, //for icons and text
            elevation: 0, //no idea of using this line
            centerTitle: true,
          ),

          // Elevated Buttons
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle()),
          ),

          //for textField
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(
                  color: Colors.blueGrey,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blueGrey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.blueGrey,
                    width: 2.0,
                  )),
              labelStyle: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          //text themes
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.blueGrey),
            headlineMedium: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey),
            headlineSmall: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey),
          ),

          //for icons
          iconTheme: const IconThemeData(
            color: Colors.blueGrey,
            size: 24,
          )),

      routes: {
        '/home': (context) => const HomeScreen(),
        '/newMatch': (context) => const NewMatch(),
        '/history': (context) => const History(),
        '/scorecard': (context) => ScoreboardScreen(),
        '/stats': (context) => const StatsScreen(),
        '/summaryScreen': (context) => const Summaryscreen(),
        '/contactus': (context) => const ContactUsScreen(),
        '/aboutus': (context) => const AboutUsScreen(),
        '/terms': (context) => const TermsAndConditionsScreen(),
      },

      home: SplashScreen(),
    );
  }
}
