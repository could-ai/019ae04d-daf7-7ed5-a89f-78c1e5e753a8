import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/home_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مدرسة زهرة المدائن',
      debugShowCheckedModeBanner: false,
      // Support for Arabic RTL
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // Arabic
      ],
      locale: const Locale('ar', 'AE'),
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        fontFamily: 'Arial', // Using system font that supports Arabic well
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
      },
    );
  }
}
