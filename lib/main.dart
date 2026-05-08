import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoppers/screens/checkout.dart';
import 'package:shoppers/screens/home.dart';
import 'package:shoppers/screens/profile.dart';
import 'package:shoppers/utils/custom_theme.dart';

import 'firebase_options.dart';

void main() async {
  // Firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.getTheme(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("SHOPPERS"),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)),
              boxShadow: CustomTheme.cardShadow
            ),
            child: const TabBar(
              padding: EdgeInsets.symmetric(vertical: 10),
                indicatorColor: Colors.transparent,
                tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.person),),
              Tab(icon: Icon(Icons.shopping_cart),),
            ]),

          ),
          body: TabBarView(children: [
            const HomeScreen(),
            const ProfileScreen(),
            const CheckoutScreen(),
          ]),
        ),
      )
      );
  }
}

// continue from 21:00

// Use this inside your Stripe setup logic
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// String stripeKey = dotenv.env['STRIPE_PUBLISHABLE_KEY'] ?? 'fallback_key_here';
